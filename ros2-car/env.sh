# skript to source a ros2 project
export ROS_DISTRO=humble
export ROS_DOMAIN_ID=1
export PROJECT_DIR=${ROS2_CAR_DIR}
#export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
#export FASTRTPS_DEFBAULT_PROFILES_FILE=$(pwd)/fastrtps.xml 
#export RMW_FASTRTPS_USE_QOS_FROM_XML=0
#export RMW_IMPLEMENTATION=rmw_gurumdds_cpp
#export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
source /opt/ros/$ROS_DISTRO/setup.bash

source_ws () {
    if [ -f "$1" ]; then
        source $1
        echo "sourced $1"
    else 
        echo "$1 does not exist."
    fi
}
source source.sh
