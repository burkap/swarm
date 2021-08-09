# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mav_planning_msgs: 9 messages, 2 services")

set(MSG_I_FLAGS "-Imav_planning_msgs:/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Imav_msgs:/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mav_planning_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg" "mav_planning_msgs/PolynomialSegment4D:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg" ""
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg" "mav_planning_msgs/Polygon2D:mav_planning_msgs/Point2D"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv" "mav_planning_msgs/Point2D:std_msgs/Header:mav_planning_msgs/PolygonWithHoles:mav_planning_msgs/Polygon2D:mav_planning_msgs/PolygonWithHolesStamped"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg" "mav_planning_msgs/PolynomialSegment:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg" "mav_planning_msgs/Point2D:mav_planning_msgs/PolygonWithHoles:mav_planning_msgs/Polygon2D:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv" "trajectory_msgs/MultiDOFJointTrajectoryPoint:mav_planning_msgs/PolynomialTrajectory4D:geometry_msgs/Transform:mav_planning_msgs/PolynomialSegment4D:trajectory_msgs/MultiDOFJointTrajectory:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:mav_planning_msgs/PolynomialSegment:mav_planning_msgs/PolynomialTrajectory:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg" "sensor_msgs/PointField:sensor_msgs/PointCloud2:geometry_msgs/TransformStamped:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg" NAME_WE)
add_custom_target(_mav_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_planning_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg" "mav_planning_msgs/Point2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)

### Generating Services
_generate_srv_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)
_generate_srv_cpp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
)

### Generating Module File
_generate_module_cpp(mav_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mav_planning_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mav_planning_msgs_generate_messages mav_planning_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_cpp _mav_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_planning_msgs_gencpp)
add_dependencies(mav_planning_msgs_gencpp mav_planning_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_planning_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)

### Generating Services
_generate_srv_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)
_generate_srv_eus(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
)

### Generating Module File
_generate_module_eus(mav_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mav_planning_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mav_planning_msgs_generate_messages mav_planning_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_eus _mav_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_planning_msgs_geneus)
add_dependencies(mav_planning_msgs_geneus mav_planning_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_planning_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)

### Generating Services
_generate_srv_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)
_generate_srv_lisp(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
)

### Generating Module File
_generate_module_lisp(mav_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mav_planning_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mav_planning_msgs_generate_messages mav_planning_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_lisp _mav_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_planning_msgs_genlisp)
add_dependencies(mav_planning_msgs_genlisp mav_planning_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_planning_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)

### Generating Services
_generate_srv_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)
_generate_srv_nodejs(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
)

### Generating Module File
_generate_module_nodejs(mav_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mav_planning_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mav_planning_msgs_generate_messages mav_planning_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_nodejs _mav_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_planning_msgs_gennodejs)
add_dependencies(mav_planning_msgs_gennodejs mav_planning_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_planning_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_msg_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)

### Generating Services
_generate_srv_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv"
  "${MSG_I_FLAGS}"
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)
_generate_srv_py(mav_planning_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg;/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
)

### Generating Module File
_generate_module_py(mav_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mav_planning_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mav_planning_msgs_generate_messages mav_planning_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialSegment4D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHoles.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PolygonService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolynomialTrajectory.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PolygonWithHolesStamped.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/PointCloudWithPose.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_planning_msgs/msg/Polygon2D.msg" NAME_WE)
add_dependencies(mav_planning_msgs_generate_messages_py _mav_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_planning_msgs_genpy)
add_dependencies(mav_planning_msgs_genpy mav_planning_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_planning_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_planning_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mav_planning_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mav_planning_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mav_planning_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET mav_msgs_generate_messages_cpp)
  add_dependencies(mav_planning_msgs_generate_messages_cpp mav_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(mav_planning_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_planning_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mav_planning_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mav_planning_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mav_planning_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET mav_msgs_generate_messages_eus)
  add_dependencies(mav_planning_msgs_generate_messages_eus mav_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(mav_planning_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_planning_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mav_planning_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mav_planning_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mav_planning_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET mav_msgs_generate_messages_lisp)
  add_dependencies(mav_planning_msgs_generate_messages_lisp mav_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(mav_planning_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_planning_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mav_planning_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mav_planning_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mav_planning_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET mav_msgs_generate_messages_nodejs)
  add_dependencies(mav_planning_msgs_generate_messages_nodejs mav_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(mav_planning_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_planning_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mav_planning_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mav_planning_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mav_planning_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET mav_msgs_generate_messages_py)
  add_dependencies(mav_planning_msgs_generate_messages_py mav_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(mav_planning_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
