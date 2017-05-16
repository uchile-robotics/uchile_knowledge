cmake_minimum_required(VERSION 2.8.3)
project(uchile_db)

find_package(catkin REQUIRED COMPONENTS
  uchile_msgs
  uchile_srvs
  uchile_util
  geometry_msgs
  roscpp
  roslib
  rospy
  sensor_msgs
  std_msgs
  std_srvs
)


###################################
## catkin specific configuration ##
###################################

catkin_package(
  CATKIN_DEPENDS
    uchile_msgs
    uchile_srvs
    uchile_util
    geometry_msgs
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    std_srvs
)

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)
