#build container
sudo docker build -t ros .

#before run container

xhost + && sudo nvidia-docker run -v /tmp/.X11-unix:/tmp/.X11-unix:rw -e DISPLAY=$DISPLAY -e NVIDIA_VISIBLE_DEVICES=all -e NVIDIA_DRIVER_CAPABILITIES=all --net=host  -it --privileged ros 

#in container exec:
source ros_entrypoint.sh
rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=/joy_teleop/cmd_vel

