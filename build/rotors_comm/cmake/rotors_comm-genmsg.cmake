# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rotors_comm: 1 messages, 2 services")

set(MSG_I_FLAGS "-Irotors_comm:/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rotors_comm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv" NAME_WE)
add_custom_target(_rotors_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rotors_comm" "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv" "octomap_msgs/Octomap:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg" NAME_WE)
add_custom_target(_rotors_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rotors_comm" "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv" NAME_WE)
add_custom_target(_rotors_comm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rotors_comm" "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rotors_comm
)

### Generating Services
_generate_srv_cpp(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/octomap_msgs/cmake/../msg/Octomap.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rotors_comm
)
_generate_srv_cpp(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rotors_comm
)

### Generating Module File
_generate_module_cpp(rotors_comm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rotors_comm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rotors_comm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rotors_comm_generate_messages rotors_comm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_cpp _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg" NAME_WE)
add_dependencies(rotors_comm_generate_messages_cpp _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_cpp _rotors_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rotors_comm_gencpp)
add_dependencies(rotors_comm_gencpp rotors_comm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rotors_comm_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rotors_comm
)

### Generating Services
_generate_srv_eus(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/octomap_msgs/cmake/../msg/Octomap.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rotors_comm
)
_generate_srv_eus(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rotors_comm
)

### Generating Module File
_generate_module_eus(rotors_comm
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rotors_comm
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rotors_comm_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rotors_comm_generate_messages rotors_comm_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_eus _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg" NAME_WE)
add_dependencies(rotors_comm_generate_messages_eus _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_eus _rotors_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rotors_comm_geneus)
add_dependencies(rotors_comm_geneus rotors_comm_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rotors_comm_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rotors_comm
)

### Generating Services
_generate_srv_lisp(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/octomap_msgs/cmake/../msg/Octomap.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rotors_comm
)
_generate_srv_lisp(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rotors_comm
)

### Generating Module File
_generate_module_lisp(rotors_comm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rotors_comm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rotors_comm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rotors_comm_generate_messages rotors_comm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_lisp _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg" NAME_WE)
add_dependencies(rotors_comm_generate_messages_lisp _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_lisp _rotors_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rotors_comm_genlisp)
add_dependencies(rotors_comm_genlisp rotors_comm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rotors_comm_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rotors_comm
)

### Generating Services
_generate_srv_nodejs(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/octomap_msgs/cmake/../msg/Octomap.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rotors_comm
)
_generate_srv_nodejs(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rotors_comm
)

### Generating Module File
_generate_module_nodejs(rotors_comm
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rotors_comm
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rotors_comm_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rotors_comm_generate_messages rotors_comm_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_nodejs _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg" NAME_WE)
add_dependencies(rotors_comm_generate_messages_nodejs _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_nodejs _rotors_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rotors_comm_gennodejs)
add_dependencies(rotors_comm_gennodejs rotors_comm_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rotors_comm_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rotors_comm
)

### Generating Services
_generate_srv_py(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/octomap_msgs/cmake/../msg/Octomap.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rotors_comm
)
_generate_srv_py(rotors_comm
  "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rotors_comm
)

### Generating Module File
_generate_module_py(rotors_comm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rotors_comm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rotors_comm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rotors_comm_generate_messages rotors_comm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/Octomap.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_py _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/msg/WindSpeed.msg" NAME_WE)
add_dependencies(rotors_comm_generate_messages_py _rotors_comm_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/burka/catkin_ws/src/CrazyS/rotors_comm/srv/RecordRosbag.srv" NAME_WE)
add_dependencies(rotors_comm_generate_messages_py _rotors_comm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rotors_comm_genpy)
add_dependencies(rotors_comm_genpy rotors_comm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rotors_comm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rotors_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rotors_comm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rotors_comm_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET octomap_msgs_generate_messages_cpp)
  add_dependencies(rotors_comm_generate_messages_cpp octomap_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rotors_comm_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rotors_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rotors_comm
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rotors_comm_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET octomap_msgs_generate_messages_eus)
  add_dependencies(rotors_comm_generate_messages_eus octomap_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rotors_comm_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rotors_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rotors_comm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rotors_comm_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET octomap_msgs_generate_messages_lisp)
  add_dependencies(rotors_comm_generate_messages_lisp octomap_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rotors_comm_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rotors_comm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rotors_comm
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rotors_comm_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET octomap_msgs_generate_messages_nodejs)
  add_dependencies(rotors_comm_generate_messages_nodejs octomap_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rotors_comm_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rotors_comm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rotors_comm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rotors_comm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rotors_comm_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET octomap_msgs_generate_messages_py)
  add_dependencies(rotors_comm_generate_messages_py octomap_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rotors_comm_generate_messages_py std_msgs_generate_messages_py)
endif()
