# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mav_msgs: 10 messages, 0 services")

set(MSG_I_FLAGS "-Imav_msgs:/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mav_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mav_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_gencpp)
add_dependencies(mav_msgs_gencpp mav_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)
_generate_msg_eus(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mav_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_eus _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_geneus)
add_dependencies(mav_msgs_geneus mav_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mav_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_genlisp)
add_dependencies(mav_msgs_genlisp mav_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)
_generate_msg_nodejs(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mav_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_nodejs _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_gennodejs)
add_dependencies(mav_msgs_gennodejs mav_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mav_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/AttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/DroneState.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/TorqueThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Actuators.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/FilteredSensorData.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/RollPitchYawrateThrustCrazyflie.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/mav_comm/mav_msgs/msg/GpsWaypoint.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_genpy)
add_dependencies(mav_msgs_genpy mav_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mav_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mav_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mav_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mav_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mav_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mav_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mav_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mav_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mav_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mav_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
