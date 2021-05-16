# requirements
```
sudo apt install -y ros-noetic-gazebo-ros-control
sudo apt install -y ros-noetic-gazebo-dev ros-noetic-gazebo-ros ros-noetic-controller-interface ros-noetic-controller-manager-msgs ros-noetic-control-msgs ros-noetic-control-toolbox ros-noetic-forward-command-controller ros-noetic-urdf ros-noetic-controller-manager ros-noetic-diagnostic-updater ros-noetic-roslint ros-noetic-joint-state-publisher ros-noetic-robot-state-publisher ros-noetic-rviz ros-noetic-xacro ros-noetic-robot-localization ros-noetic-twist-mux
sudo apt install -y ros-noetic-joint-state-controller
sudo apt install -y ros-noetic-diff-drive-controller
sudo apt install -y ros-noetic-teleop-twist-keyboard
sudo apt install -y ros-noetic-gazebo-plugins
sudo apt install -y ros-noetic-gazebo-ros-pkgs
```
# how to launch
in same terminal keyboard steer should start
```
roslaunch husky_gazebo my_world.launch
```

#build container
```
sudo docker build -t ros .
```
#before run container
```
xhost +
#run container with command:
sudo nvidia-docker run -v /tmp/.X11-unix:/tmp/.X11-unix:rw  -v /home/m:/records -e DISPLAY=$DISPLAY -e NVIDIA_VISIBLE_DEVICES=all -e NVIDIA_DRIVER_CAPABILITIES=all -it ros 

#in every other container exec:
source ros_entrypoint.sh

