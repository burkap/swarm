
import rospy
import sys
from nav_msgs.msg import Path

arguments = ["id"]

def callback(data):

    pass

def run():
    rospy.init_node('rviz_publisher', anonymous=True)

    rospy.Subscriber('/firefly{}/odometry_sensor1/odometry'.format(new_handler.id), Pose, callback)

    rospy.spin()

if __name__ == '__main__':
    myargv = rospy.myargv(argv=sys.argv)
    if len(myargv) < len(arguments)+1:
        print("usage: rviz_publisher.py " + " ".join(arguments))
    else:
        run(myargv[1], myargv[2], myargv[3])

        