#!/usr/bin/env python2

import rospy
from geometry_msgs.msg import Pose
from nav_msgs.msg import Odometry
from std_msgs.msg import Header
from std_msgs.msg import String
from std_msgs.msg import Float64MultiArray
from burka_pkg.msg import FormationMatrix
from trajectory_msgs.msg import MultiDOFJointTrajectory, MultiDOFJointTrajectoryPoint
from geometry_msgs.msg import Twist 
from geometry_msgs.msg import Transform, Quaternion
import tf
import util
import numpy as np
import sys
import math
from geometry_msgs.msg import Point
from visualization_msgs.msg import MarkerArray,Marker
#
arguments = ["id", "initial_x", "initial_y"]
#
def publish_waypoint(publisher, x, y, z, yaw):
    quaternion = tf.transformations.quaternion_from_euler(0, 0, math.radians(yaw))

    traj = MultiDOFJointTrajectory()
    header = Header()
    header.stamp = rospy.Time()
    header.frame_id = 'frame'
    traj.joint_names.append('base_link')
    traj.header=header

    transforms =Transform(translation=Point(x, y, z), rotation=Quaternion(quaternion[0],quaternion[1],quaternion[2],quaternion[3]))

    velocities =Twist()
    accelerations=Twist()
    point = MultiDOFJointTrajectoryPoint([transforms],[velocities],[accelerations],rospy.Time(2))

    traj.points.append(point)

    publisher.publish(traj)

this_id = -1
latest_formation = FormationMatrix()
formation_matrix = []
dronePosHandlers = []
current_drone_count = 0
new_drone_count = 0
drone_positions = []
drone_velocities = []
summed_mat = []
kp = 0.15
kd = 0.03
ka = 8
kb = 1.3
ks = 2.5
x = 0
y = 0
publisher = 0

class DronePosHandler:
    id = -1
    def __init__(self, id):
        self.id = id
    def callback_func(self, data):
        drone_positions[self.id-1] = np.array([data.pose.pose.position.x, data.pose.pose.position.y, data.pose.pose.position.z], np.float64)
        drone_velocities[self.id-1] = np.array([data.twist.twist.linear.x, data.twist.twist.linear.y, data.twist.twist.linear.z], np.float64)
        pass
    
def form_callback(data):
    global latest_formation, formation_matrix, dronePosHandlers, current_drone_count, new_drone_count, drone_positions, summed_mat, publisher
    latest_formation = data
    formation_matrix = util.arr_to_matrix(latest_formation.data)
    summed_mat = sum(formation_matrix)
    new_drone_count = len(formation_matrix[0])
    while current_drone_count < new_drone_count:
        new_handler = DronePosHandler(current_drone_count+1)
        dronePosHandlers.append(new_handler)
        rospy.Subscriber('/firefly{}/odometry_sensor1/odometry'.format(new_handler.id), Odometry, new_handler.callback_func)
        drone_positions.append(np.array([0, 0, 0], np.float64))
        drone_velocities.append(np.array([0, 0, 0], np.float64))
        current_drone_count += 1
    
    u = np.array([0, 0, 0], np.float64)
    r = np.array([0, 0, 0], np.float64)
    for i in range(current_drone_count):
        u += kp*(drone_positions[i] - drone_positions[this_id-1] - np.array([formation_matrix[this_id-1][i][0], formation_matrix[this_id-1][i][1], 0], np.float64))
        u += kd*(drone_velocities[i] - drone_velocities[this_id-1])
        mag = util.magnitude(drone_positions[this_id-1] - drone_positions[i])
        # print("mag:", mag, "id:", this_id)
        if mag < ks and this_id != i:
            r += (drone_positions[this_id-1] - drone_positions[i])*(math.exp(-kb*mag)-math.exp(-kb*ks))
    r *= ka
    # print(this_id, "repel: X: {:.4f} Y: {:.4f} Z: {:.4f}".format(r[0], r[1], r[2]))
    newx = drone_positions[this_id-1][0]+u[0]+r[0]
    newy = drone_positions[this_id-1][1]+u[1]+r[1]
    if drone_positions[this_id-1][2] < 4.5:
        publish_waypoint(publisher, x, y, 5, 0)
    else:
        publish_waypoint(publisher, newx, newy, 5, 0)
    pass

def listener(id, init_x, init_y):
    global this_id, publisher, x, y, rviz_publisher, rviz_publisher2, rviz_publisher3
    print("xyz")
    rospy.sleep(2)
    this_id = int(id)
    x = int(init_x)
    y = int(init_y)
    print(x, y)
    print("Listener {} started at {}, {}.".format(this_id, x, y))
    publisher = rospy.Publisher('/firefly{}/command/trajectory'.format(this_id), MultiDOFJointTrajectory, queue_size = 10)
    rospy.init_node('formation', anonymous=True)

    rospy.sleep(3)

    print("Listener {} formation starting".format(this_id))
    rospy.Subscriber('/burka_test/formation', FormationMatrix, form_callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    myargv = rospy.myargv(argv=sys.argv)
    if len(myargv) < len(arguments)+1:
        print("usage: formation.py " + " ".join(arguments))
    else:
        listener(myargv[1], myargv[2], myargv[3])

        