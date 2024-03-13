ws00/src/teleop_tools:
		git clone -b foxy-devel git@github.com:ros-teleop/teleop_tools.git $@
		touch $@/COLCON_IGNORE

ws00/src/slam_toolbox:
		git clone -b humble git@github.com:SteveMacenski/slam_toolbox.git $@
		touch $@/COLCON_IGNORE

ws00/src/navigation2:
		git clone -b humble git@github.com:ros-planning/navigation2.git $@
		touch $@/COLCON_IGNORE

ws01/src/tuw_msgs:
		git clone -b ros2 git@github.com:tuw-robotics/tuw_msgs.git $@

ws01/src/tuw_debug:
		git clone git@github.com:tuw-robotics/tuw_debug.git $@

ws01/src/tuw_geometry:
		git clone -b ros2 git@github.com:tuw-robotics/tuw_geometry.git $@

ws01/src/car_com:
		git clone git@github.com:mx-car/car_com.git $@

ws01/src/mx_joystick:
		git clone git@github.com:mx-robotics/mx_joystick.git $@

ws01/src/mx_objects:
		git clone git@github.com:mx-robotics/mx_objects.git $@

ws02/src/mxr:
		git clone git@github.com:mx-car/mxr-ros2.git ws02/src/mxr

clone-ws00: \
	ws00/src/teleop_tools \
	ws00/src/slam_toolbox \
	ws00/src/navigation2

clone-ws01: \
	ws01/src/tuw_geometry \
	ws01/src/tuw_msgs \
	ws01/src/car_com \
	ws01/src/mx_joystick \
	ws01/src/mx_objects \
	ws01/src/tuw_debug

clone-ws02: \
	ws02/src/mxr  

clone: clone-ws00 clone-ws01 clone-ws02
