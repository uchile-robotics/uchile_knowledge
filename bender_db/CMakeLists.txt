cmake_minimum_required(VERSION 2.8.3)
project(bender_db)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  roslib
  rospy
  std_msgs
  std_srvs
  bender_msgs
  bender_srvs
  bender_utils
  geometry_msgs
  sensor_msgs
)


###################################
## catkin specific configuration ##
###################################

catkin_package(
  CATKIN_DEPENDS roscpp roslib rospy std_msgs std_srvs bender_msgs bender_srvs bender_utils geometry_msgs sensor_msgs
)

###########
## Build ##
###########

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${bender_utils_INCLUDE_DIRS}
)
