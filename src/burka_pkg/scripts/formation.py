#!/usr/bin/env python

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
#
arguments = ["id", "initial_x", "initial_y"]
#
def publish_waypoint(publisher, x, y, z, yaw): # MultiDOFJointTrajectory from position and yaw 
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

class DroneListener:
    id = -1
    def __init__(self, id, instance):
        self.id = id
        self.instance = instance
    def callback_func(self, data):
        self.instance.positions[self.id-1] = np.array([data.pose.pose.position.x, data.pose.pose.position.y, data.pose.pose.position.z], np.float64)
        self.instance.velocities[self.id-1] = np.array([data.twist.twist.linear.x, data.twist.twist.linear.y, data.twist.twist.linear.z], np.float64)
        pass

class Formation:
    def __init__(self, id, x, y):
        self.id = id
        self.last_x = x
        self.last_y = y

        self.latest_formation = FormationMatrix()
        self.formation_matrix = []
        self.drone_listeners = []
        self.current_drone_count = 0
        self.desired_drone_count = 0
        self.positions = []
        self.velocities = []
        self.summed_mat = []

        # parameters
        self.kp = 0.15
        self.kd = 0.03
        self.ka = 8
        self.kb = 1.3
        self.ks = 2

        rospy.init_node('formation', anonymous=True)

        print("Listener {} started at {}, {}.".format(self.id, self.last_x, self.last_y))
        self.publisher = rospy.Publisher('/firefly{}/command/trajectory'.format(self.id), MultiDOFJointTrajectory, queue_size = 10)

        rospy.sleep(3)

        print("Listener {} waiting for formations".format(self.id))
        rospy.Subscriber('/burka_test/formation', FormationMatrix, self.formation_callback)
        
        rospy.spin()

    def formation_callback(self, data):
        self.latest_formation = data
        self.formation_matrix = util.arr_to_matrix(self.latest_formation.data)
        self.desired_drone_count = len(self.formation_matrix[0])
        while self.current_drone_count < self.desired_drone_count: # add new drone listeners until desired drone count is reached
            new_listener = DroneListener(self.current_drone_count+1, self)
            self.drone_listeners.append(new_listener)
            rospy.Subscriber('/firefly{}/odometry_sensor1/odometry'.format(new_listener.id), Odometry, new_listener.callback_func)
            self.positions.append(np.array([0, 0, 0], np.float64))
            self.velocities.append(np.array([0, 0, 0], np.float64))
            self.current_drone_count += 1
        
        u = np.array([0, 0, 0], np.float64) # vec to reach the goal
        r = np.array([0, 0, 0], np.float64) # repel
        for i in range(self.current_drone_count):
            u += self.kp*(self.positions[i] - self.positions[self.id-1] - self.formation_matrix[self.id-1][i])
            # u += self.kd*(self.velocities[i] - self.velocities[this_id-1])
            mag = util.magnitude(self.positions[self.id-1] - self.positions[i])
            if mag < self.ks and self.id != i:
                r += (self.positions[self.id-1] - self.positions[i])*(math.exp(-self.kb*mag)-math.exp(-self.kb*self.ks))
        r *= self.ka
        new_pos = self.positions[self.id-1] + u # + r
        if self.positions[self.id-1][2] < 4.5:
            publish_waypoint(self.publisher, self.last_x, self.last_y, 5, 0)
        else:
            publish_waypoint(self.publisher, new_pos[0], new_pos[1], new_pos[2], 0)
            self.last_x = new_pos[0]
            self.last_y = new_pos[1]
        pass

if __name__ == '__main__':
    myargv = rospy.myargv(argv=sys.argv)
    if len(myargv) < len(arguments)+1:
        print("usage: formation.py " + " ".join(arguments))
    else:
        Formation(int(myargv[1]), int(myargv[2]), int(myargv[3]))

        