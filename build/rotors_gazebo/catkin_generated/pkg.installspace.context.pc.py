# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "geometry_msgs;mav_msgs;nav_msgs;roscpp;sensor_msgs;gazebo_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lspline_trajectory_generator".split(';') if "-lspline_trajectory_generator" != "" else []
PROJECT_NAME = "rotors_gazebo"
PROJECT_SPACE_DIR = "/home/burka/catkin_ws/install"
PROJECT_VERSION = "6.0.9"
