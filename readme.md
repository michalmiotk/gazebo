#build container
sudo docker build -t ros .

#before run container

xhost +
sudo docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --net=host  -it ros 

#in container:
catkin_make -C /home/catkin_ws
source home/catkin_ws/devel/setup.bash
roslaunch husky_gazebo husky_miotk_world.launch
