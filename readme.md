# requirements
```
sudo apt install -y ros-noetic-gazebo-ros-control ros-noetic-gazebo-dev ros-noetic-gazebo-ros ros-noetic-controller-interface  ros-noetic-controller-manager-msgs ros-noetic-control-msgs ros-noetic-control-toolbox ros-noetic-forward-command-controller ros-noetic-urdf  ros-noetic-controller-manager ros-noetic-diagnostic-updater ros-noetic-roslint ros-noetic-joint-state-publisher ros-noetic-robot-state-publisher  ros-noetic-rviz ros-noetic-xacro ros-noetic-robot-localization ros-noetic-twist-mux ros-noetic-joint-state-controller ros-noetic-diff-drive-controller  ros-noetic-teleop-twist-keyboard ros-noetic-gazebo-plugins ros-noetic-gazebo-ros-pkgs
```
warto tez pamietac o sklonowaniu wszystkich submodulow poleceniem
```
git submodule update --init
```
# how to launch
in same terminal keyboard steer should start
```
source /home/"$USER"/catkin_ws/devel/setup.bash && /
roslaunch husky_gazebo my_world.launch
```

# build container
```
sudo docker build -t ros .
```
# before run container
```
xhost +
#run container with command:
sudo nvidia-docker run -v /tmp/.X11-unix:/tmp/.X11-unix:rw  -v /home/m:/records -e DISPLAY=$DISPLAY -e NVIDIA_VISIBLE_DEVICES=all -e NVIDIA_DRIVER_CAPABILITIES=all -it ros 
```
# in every other container exec
source ros_entrypoint.sh

# edit robot model
robot model is defined in file husky_description/urdf/husky.urdf.xacro
