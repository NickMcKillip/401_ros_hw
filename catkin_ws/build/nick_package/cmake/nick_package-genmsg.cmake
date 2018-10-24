# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nick_package: 1 messages, 0 services")

set(MSG_I_FLAGS "-Inick_package:/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nick_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg" NAME_WE)
add_custom_target(_nick_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nick_package" "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(nick_package
  "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nick_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(nick_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nick_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nick_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nick_package_generate_messages nick_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg" NAME_WE)
add_dependencies(nick_package_generate_messages_cpp _nick_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nick_package_gencpp)
add_dependencies(nick_package_gencpp nick_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nick_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(nick_package
  "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nick_package
)

### Generating Services

### Generating Module File
_generate_module_eus(nick_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nick_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(nick_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(nick_package_generate_messages nick_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg" NAME_WE)
add_dependencies(nick_package_generate_messages_eus _nick_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nick_package_geneus)
add_dependencies(nick_package_geneus nick_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nick_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(nick_package
  "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nick_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(nick_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nick_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nick_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nick_package_generate_messages nick_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg" NAME_WE)
add_dependencies(nick_package_generate_messages_lisp _nick_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nick_package_genlisp)
add_dependencies(nick_package_genlisp nick_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nick_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(nick_package
  "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nick_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(nick_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nick_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(nick_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(nick_package_generate_messages nick_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg" NAME_WE)
add_dependencies(nick_package_generate_messages_nodejs _nick_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nick_package_gennodejs)
add_dependencies(nick_package_gennodejs nick_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nick_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(nick_package
  "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nick_package
)

### Generating Services

### Generating Module File
_generate_module_py(nick_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nick_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nick_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nick_package_generate_messages nick_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/engr401/SUBMISSIONS/Nick_McKillip/catkin_ws/src/nick_package/msg/nick_msg.msg" NAME_WE)
add_dependencies(nick_package_generate_messages_py _nick_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nick_package_genpy)
add_dependencies(nick_package_genpy nick_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nick_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nick_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nick_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nick_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nick_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/nick_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(nick_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nick_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nick_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nick_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nick_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/nick_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(nick_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nick_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nick_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nick_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nick_package_generate_messages_py std_msgs_generate_messages_py)
endif()
