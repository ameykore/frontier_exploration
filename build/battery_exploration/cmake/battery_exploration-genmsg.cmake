# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "battery_exploration: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ibattery_exploration:/frontier_expo/frontier_exploration/src/battery_exploration/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(battery_exploration_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg" NAME_WE)
add_custom_target(_battery_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "battery_exploration" "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg" ""
)

get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg" NAME_WE)
add_custom_target(_battery_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "battery_exploration" "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_exploration
)
_generate_msg_cpp(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_exploration
)

### Generating Services

### Generating Module File
_generate_module_cpp(battery_exploration
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_exploration
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(battery_exploration_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(battery_exploration_generate_messages battery_exploration_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_cpp _battery_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_cpp _battery_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_exploration_gencpp)
add_dependencies(battery_exploration_gencpp battery_exploration_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_exploration_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_exploration
)
_generate_msg_eus(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_exploration
)

### Generating Services

### Generating Module File
_generate_module_eus(battery_exploration
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_exploration
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(battery_exploration_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(battery_exploration_generate_messages battery_exploration_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_eus _battery_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_eus _battery_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_exploration_geneus)
add_dependencies(battery_exploration_geneus battery_exploration_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_exploration_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_exploration
)
_generate_msg_lisp(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_exploration
)

### Generating Services

### Generating Module File
_generate_module_lisp(battery_exploration
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_exploration
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(battery_exploration_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(battery_exploration_generate_messages battery_exploration_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_lisp _battery_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_lisp _battery_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_exploration_genlisp)
add_dependencies(battery_exploration_genlisp battery_exploration_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_exploration_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_exploration
)
_generate_msg_nodejs(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_exploration
)

### Generating Services

### Generating Module File
_generate_module_nodejs(battery_exploration
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_exploration
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(battery_exploration_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(battery_exploration_generate_messages battery_exploration_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_nodejs _battery_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_nodejs _battery_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_exploration_gennodejs)
add_dependencies(battery_exploration_gennodejs battery_exploration_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_exploration_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_exploration
)
_generate_msg_py(battery_exploration
  "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_exploration
)

### Generating Services

### Generating Module File
_generate_module_py(battery_exploration
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_exploration
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(battery_exploration_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(battery_exploration_generate_messages battery_exploration_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/battery_station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_py _battery_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/frontier_expo/frontier_exploration/src/battery_exploration/msg/station.msg" NAME_WE)
add_dependencies(battery_exploration_generate_messages_py _battery_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(battery_exploration_genpy)
add_dependencies(battery_exploration_genpy battery_exploration_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS battery_exploration_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/battery_exploration
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(battery_exploration_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/battery_exploration
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(battery_exploration_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/battery_exploration
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(battery_exploration_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/battery_exploration
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(battery_exploration_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_exploration)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_exploration\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/battery_exploration
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(battery_exploration_generate_messages_py std_msgs_generate_messages_py)
endif()
