#build container
sudo docker build -t ros .

#before run container

xhost +
#run container with command:
sudo nvidia-docker run -v /tmp/.X11-unix:/tmp/.X11-unix:rw  -v /:/records -e DISPLAY=$DISPLAY -e NVIDIA_VISIBLE_DEVICES=all -e NVIDIA_DRIVER_CAPABILITIES=all --net=host  -it --privileged ros 

#in every other container exec:
source ros_entrypoint.sh

