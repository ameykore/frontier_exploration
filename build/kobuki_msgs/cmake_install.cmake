# Install script for directory: /frontier_expo/frontier_exploration/src/kobuki_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/frontier_expo/frontier_exploration/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/frontier_expo/frontier_exploration/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/frontier_expo/frontier_exploration/install" TYPE PROGRAM FILES "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/frontier_expo/frontier_exploration/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/frontier_expo/frontier_exploration/install" TYPE PROGRAM FILES "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/frontier_expo/frontier_exploration/install/setup.bash;/frontier_expo/frontier_exploration/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/frontier_expo/frontier_exploration/install" TYPE FILE FILES
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/setup.bash"
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/frontier_expo/frontier_exploration/install/setup.sh;/frontier_expo/frontier_exploration/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/frontier_expo/frontier_exploration/install" TYPE FILE FILES
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/setup.sh"
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/frontier_expo/frontier_exploration/install/setup.zsh;/frontier_expo/frontier_exploration/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/frontier_expo/frontier_exploration/install" TYPE FILE FILES
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/setup.zsh"
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/frontier_expo/frontier_exploration/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/frontier_expo/frontier_exploration/install" TYPE FILE FILES "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/msg" TYPE FILE FILES
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/BumperEvent.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/CliffEvent.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/DigitalOutput.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/ExternalPower.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/Led.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/PowerSystemEvent.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/SensorState.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/VersionInfo.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/ControllerInfo.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/ButtonEvent.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/DigitalInputEvent.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/DockInfraRed.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/KeyboardInput.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/MotorPower.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/RobotStateEvent.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/Sound.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/ScanAngle.msg"
    "/frontier_expo/frontier_exploration/src/kobuki_msgs/msg/WheelDropEvent.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/action" TYPE FILE FILES "/frontier_expo/frontier_exploration/src/kobuki_msgs/action/AutoDocking.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/msg" TYPE FILE FILES
    "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg"
    "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
    "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
    "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
    "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg"
    "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg"
    "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/include/kobuki_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/roseus/ros/kobuki_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/common-lisp/ros/kobuki_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/share/gennodejs/ros/kobuki_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/lib/python3/dist-packages/kobuki_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/frontier_expo/frontier_exploration/devel/.private/kobuki_msgs/lib/python3/dist-packages/kobuki_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgsConfig.cmake"
    "/frontier_expo/frontier_exploration/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs" TYPE FILE FILES "/frontier_expo/frontier_exploration/src/kobuki_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/frontier_expo/frontier_exploration/build/kobuki_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/frontier_expo/frontier_exploration/build/kobuki_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
