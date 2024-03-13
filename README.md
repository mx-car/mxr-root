# mxr-root
mxr project root 
## Subprojects
### firmware
contains the project root for the teensy. In order to install the firmware project step into the project and use the myrepo configuration to clone all repositories neede.

### ros2-car
contains the ros2 workspaces

### uml

### docker

### motor_shield
contains the hardware layout

## install
### .bashrc
Prepare your .bashrc so that your work space get sourced if you open a terminal in work space with an env.sh file. All other ROS project sourcing commands in your .bashrc should be removed!
```
export ROS_DISTRO=humble
export MXR_ROOT_DIR=/opt/mxr
export ROS2_CAR_DIR=${MXR_ROOT_DIR}/ros2-car
source /opt/ros/${ROS_DISTRO}/setup.bash
if [ -f "env.sh" ]; then source env.sh; fi
```
Having the project located in __/opt__ makes it easyer to port to other users or into the docker enviroment

### PROJECTS_DIR
Source your .bashrc and create the PROJECTS_DIR, set the file permissions and clone this repo.
```
source ~/.bashrc
echo $MXR_ROOT_DIR           # check if the variable is correct
echo $ROS2_CAR_DIR           # check if the variable is correct
sudo mkdir -p $MXR_ROOT_DIR  # create folder
sudo chown -R $USER:$USER $MXR_ROOT_DIR
cd /opt
git clone git@github.com:mx-car/mxr-root.git $MXR_ROOT_DIR
cd $MXR_ROOT_DIR
make clone
```
### ROS
Follow the instruction in [install ros2-car](ros2-car/install.md)
