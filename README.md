# mxr-root
mxr project root folder
```
# sed -i 's/git@github.com:/https:\/\/github.com\//g' mrconfig
mr -c mrconfig update
```
## firmware
contains the project root for the teensy. In order to install the firmware project step into the project and use the myrepo configuration to clone all repositories neede.
```
cd firmware
mr -c mrconfig update
```


## ros2
contains the ros2 workspaces

## uml

## docker

## motor_shield
contains the hardware layout
```
git clone git@github.com:mx-car/layout_motor_shield.git
```
