# Install ROS2-CAR

## ROS2
### Install ROS humble:
Follow the installation instructions [here](https://docs.ros.org/en/humble/Installation.html). You should install the package `ros-humble-desktop` with its dependencies. Don't forget to `source /opt/ros/humble/setup.bash` to your `.bashrc` in addition will use an *env.sh* file in our project to source your specific ROS project.

### Additional packages:
The minimal packages needed to run the environment are listed in the following installation command. Just run:
``` bash
 # For Stage
sudo apt install libjpeg8-dev libpng-dev libglu1-mesa-dev libltdl-dev libfltk1.1-dev 

 #  Command line tools
sudo apt-get install gdb git tmux vim python3-pip

 #  GUI tools
sudo apt-get install geany meld 

 #  ROS packages
export ROS_DISTRO=humble
sudo apt install ros-$ROS_DISTRO-teleop-tools \
  ros-$ROS_DISTRO-teleop-twist-joy \
  ros-$ROS_DISTRO-laser-filters \
  ros-$ROS_DISTRO-tf2-tools \
  ros-$ROS_DISTRO-tf-transformations \
  ros-$ROS_DISTRO-navigation2 \
  ros-$ROS_DISTRO-slam-toolbox \
  ros-$ROS_DISTRO-teleop-tools

 #  ROS tools
sudo apt install ros-$ROS_DISTRO-rviz2 \
 ros-$ROS_DISTRO-rviz-common \
 ros-$ROS_DISTRO-rqt \
 ros-$ROS_DISTRO-rqt-common-plugins \
 ros-$ROS_DISTRO-rqt-tf-tree \
 python3-rosdep

# Build Tools
sudo apt install python3-colcon-common-extensions
```


## IDE:
You can use vim, nano what ever you like, but we like you to be able to debug with a graphical IDE.
We suggest VSCode and our MR project holds already a VSCode configuration to start with.

### VSCode
``` bash
# Install VSCode
sudo apt-get update
sudo apt-get install -y  wget apt-transport-https software-properties-common
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt-get install -y code

# Install VSCode Extensions
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cmake-tools
code --install-extension ms-python.python
code --install-extension ms-vscode.makefile-tools
```

## Test

### Testing the environment:
Now you should be able to start the robot simulation and to control the robot.

#### 1. Start the simulation:
``` bash
source $ROS2_CAR_DIR/env.sh
ros2 launch stage_ros2 stage.launch.py
```
#### 2. Drive the robot:
``` bash
source $ROS2_CAR_DIR/env.sh
ros2 run teleop_twist_keyboard teleop_twist_keyboard
```