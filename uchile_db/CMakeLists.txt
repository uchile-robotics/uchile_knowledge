cmake_minimum_required(VERSION 2.8.3)
project(uchile_db)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  roslib
  rospy
  sensor_msgs
  std_msgs
  std_srvs
  uchile_msgs
  uchile_srvs
  uchile_util
)


###################################
## catkin specific configuration ##
###################################

catkin_package(
  CATKIN_DEPENDS
    geometry_msgs
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    uchile_msgs
    uchile_srvs
    uchile_util
)

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)
