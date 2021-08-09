#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from burka_pkg.msg import FormationMatrix
from burka_pkg.srv import ChangeFormation, ChangeFormationResponse
import numpy as np
from nav_msgs.msg import Odometry
from scipy.spatial.distance import cdist
from scipy.optimize import linear_sum_assignment

def get_center_of_arr(arr):
    sum_vec = sum(arr)
    center_pos = sum_vec/len(arr)
    return center_pos

def move_formation_to_center(arr):
    center_pos = get_center_of_arr(arr)
    new_arr = [i - center_pos for i in arr]
    return new_arr

class DroneListener:
    id = -1
    def __init__(self, id, instance):
        self.id = id
        self.instance = instance
    def callback_func(self, data):
        self.instance.positions[self.id-1] = np.array([data.pose.pose.position.x, data.pose.pose.position.y, data.pose.pose.position.z], np.float64)
        pass

class FormationPublisher:
    def __init__(self):
        self.formation_array = [[[0, 0, 0], [2, 2, 2], [4, 4, 4], [6, 2, 2], [8, 0, 0]],

                    [[4.755282581475767, 1.5450849718747373, 0],
                    [2.9389262614623664, -4.045084971874736, 0],
                    [-2.938926261462365, -4.045084971874738, 0],
                    [-4.755282581475768, 1.5450849718747361, 0],
                    [-1.2246467991473533e-15, 5.0, 0]],

                    [[2.9389262614623664/2, -4.045084971874736/2, 0],
                    [-2.938926261462365/2, -4.045084971874738/2, 0],
                    [-4.755282581475768/2, 1.5450849718747361/2, 0],
                    [-1.2246467991473533e-15/2, 5.0/2, 0],
                    [4.755282581475767/2, 1.5450849718747373/2, 0]],

                    [[5, 0, 0],
                    [5, 2, 0],
                    [5, 4, 0],
                    [10, -5, 0],
                    [10, 5, 0]],

                    [[0, 0, 0],
                    [0, 6, 0],
                    [6, 6, 0],
                    [6, 0, 0],
                    [3, 3, 3]],
                    
                    [[0, 0, 0],
                    [0, 3, 0],
                    [3, 3, 0],
                    [3, 0, 0],
                    [1.5, 1.5, 2]],

                    [[0, 0, 0],
                    [0, 4, 0],
                    [4, 4, 0],
                    [4, 0, 0],
                    [2, 6, 0]],
                    ]
        self.formation_array = np.array(self.formation_array) # make numpy array
        self.drone_count = len(self.formation_array[0])
        self.formation_count = len(self.formation_array)
        self.current_formation_index = 0
        self.positions = np.zeros(shape=(self.drone_count, 3), dtype=np.float64)
        self.velocities = np.zeros(shape=(self.drone_count, 3), dtype=np.float64)
        self.drone_handlers = []

        # Translate formation so that the center of swarm is the origin
        for i in range(self.formation_count):
            self.formation_array[i] = move_formation_to_center(self.formation_array[i])
    
        rospy.init_node('formation_publisher', anonymous=True)
        self.publisher = rospy.Publisher('formation', FormationMatrix, queue_size=10)
        self.service = rospy.Service('change_formation', ChangeFormation, self.change_formation)
        
        # Create new listeners for each drone
        for i in range(self.drone_count):
            new_listener = DroneListener(i+1, self)
            self.drone_handlers.append(new_listener)
            rospy.Subscriber('/firefly{}/odometry_sensor1/odometry'.format(new_listener.id), Odometry, new_listener.callback_func)
        
        self.rate = rospy.Rate(10) # 10hz

        self.run()

    def change_formation(self, req):
        self.current_formation_index = int(req.id)
        
        swarm_center = get_center_of_arr(self.positions)
        desired_positions = self.formation_array[self.current_formation_index] + swarm_center

        cost_matrix = cdist(self.positions, desired_positions, 'euclidean')
        row_ind, col_ind = linear_sum_assignment(cost_matrix)

        new_formation = np.zeros(shape=(len(row_ind), 3), dtype=np.float64)
        for i in range(len(row_ind)):
            new_formation[row_ind[i]] = self.formation_array[self.current_formation_index][col_ind[i]]

        self.formation_array[self.current_formation_index] = new_formation
        return ChangeFormationResponse(1)

    def get_formation_matrix(self):
        arr = self.formation_array[self.current_formation_index]
        count = len(arr)

        mat = np.zeros(shape=(count, count, 3)) # 3 for x, y, z
        for i in range(count):
            for j in range(count):
                mat[j][i] = arr[i] - arr[j]
        return mat 

    def run(self):
        while not rospy.is_shutdown():
            mat = self.get_formation_matrix()

            aa = FormationMatrix()
            aa.data = mat.flatten()
            self.publisher.publish(aa)
            self.rate.sleep()

if __name__ == '__main__':
    try:
        FormationPublisher()
    except rospy.ROSInterruptException:
        pass
