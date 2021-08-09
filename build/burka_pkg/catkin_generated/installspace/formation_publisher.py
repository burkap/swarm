#!/usr/bin/env python2

import rospy
from std_msgs.msg import String
from burka_pkg.msg import FormationMatrix
from burka_pkg.srv import ChangeFormation, ChangeFormationResponse
import numpy as np
from nav_msgs.msg import Odometry
from scipy.spatial.distance import cdist
from scipy.optimize import linear_sum_assignment

drone_pos_handlers = []
drone_positions = []
formation_array = [[[0, 0], [6, 2], [2, 2], [4, 4], [8, 0]],
                    [[4.755282581475767, 1.5450849718747373],
                    [2.9389262614623664, -4.045084971874736],
                    [-2.938926261462365, -4.045084971874738],
                    [-4.755282581475768, 1.5450849718747361],
                    [-1.2246467991473533e-15, 5.0]],

                    [[2.9389262614623664/2, -4.045084971874736/2],
                    [-2.938926261462365/2, -4.045084971874738/2],
                    [-4.755282581475768/2, 1.5450849718747361/2],
                    [-1.2246467991473533e-15/2, 5.0/2],
                    [4.755282581475767/2, 1.5450849718747373/2]],

                    [[5,0],
                    [5,2],
                    [5,4],
                    [10,-5],
                    [10,5]],

                    [[5,0],
                    [5,2],
                    [5,4],
                    [10,-5],
                    [10,10]],

                    [[0,0],
                    [0,4],
                    [4,4],
                    [4,0],
                    [2,6]],
                    ]

for i in range(len(formation_array)):
    formation_array[i] = [np.array([j[0], j[1]], np.float64) for j in formation_array[i]]

def get_center_of_arr(arr):
    sum_vec = sum(arr)
    avg_vec = sum_vec/len(arr)
    return avg_vec

def move_formation_to_center(arr):
    avg_vec = get_center_of_arr(arr)
    new_arr = [i - avg_vec for i in arr]
    return new_arr

drone_count = len(formation_array[0])
current_formation = 0
for i in range(drone_count):
    drone_positions.append(np.array([0, 0, 0], np.float64))

for i in range(len(formation_array)):
    formation_array[i] = move_formation_to_center(formation_array[i])

class DronePosHandler:
    id = -1
    def __init__(self, id):
        self.id = id
    def callback_func(self, data):
        drone_positions[self.id-1] = np.array([data.pose.pose.position.x, data.pose.pose.position.y, data.pose.pose.position.z], np.float64)
        pass


def change_formation(req):
    global current_formation
    print("Request {}".format(req.id))
    current_formation = int(req.id)
    
    swarm_center = get_center_of_arr(drone_positions)

    drone_pos2d = [i[:-1] for i in drone_positions]
    print("Dronepos:", drone_pos2d)
    print("Swarm center:", swarm_center)
    print("formation array:", formation_array[current_formation])
    desired_positions = [i+np.array([swarm_center[0], swarm_center[1]]) for i in formation_array[current_formation]]
    print("desired:", desired_positions)
    cost_matrix = cdist(drone_pos2d, desired_positions, 'euclidean')
    row_ind, col_ind = linear_sum_assignment(cost_matrix)
    print("cost:", cost_matrix)
    print("BEFORE:", formation_array[current_formation])
    new_formation = np.zeros(shape=(len(row_ind), 2), dtype=np.float64)
    for i in range(len(row_ind)):
        new_formation[row_ind[i]] = formation_array[current_formation][col_ind[i]]

    print("AFTER:", new_formation)
    print(row_ind, col_ind)
    formation_array[current_formation] = new_formation

    return ChangeFormationResponse(1)

def formation_matrix_from_positions(arr):
    count = len(arr)

    mat = np.zeros(shape=(count, count, 2))
    for i in range(count):
        for j in range(count):
            mat[j][i] = [arr[i][0] - arr[j][0], arr[i][1] - arr[j][1]]
    return mat 

def talker():
    global drone_pos_handlers
    pub = rospy.Publisher('formation', FormationMatrix, queue_size=10)
    rospy.init_node('formation_publisher', anonymous=True)
    ser = rospy.Service('change_formation', ChangeFormation, change_formation)
    for i in range(drone_count):
        new_handler = DronePosHandler(i+1)
        drone_pos_handlers.append(new_handler)
        rospy.Subscriber('/firefly{}/odometry_sensor1/odometry'.format(new_handler.id), Odometry, new_handler.callback_func)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        # mat = formation_matrix_from_positions([[5, 5], [10, 5], [7.5, 5+4.33012701892]])
        # mat = formation_matrix_from_positions([[4.755282581475767, 1.5450849718747373],
        #                                         [2.9389262614623664, -4.045084971874736],
        #                                         [-2.938926261462365, -4.045084971874738],
        #                                         [-4.755282581475768, 1.5450849718747361],
        #                                         [-1.2246467991473533e-15, 5.0]])
        mat = formation_matrix_from_positions(formation_array[current_formation])


        aa = FormationMatrix()
        aa.data = mat.flatten()
        pub.publish(aa)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
