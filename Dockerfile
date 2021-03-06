FROM ros:noetic-perception
RUN mkdir -p /home/catkin_ws/
RUN apt update && apt install -y gazebo11 git
RUN git clone https://github.com/michalmiotk/gazebo /home/catkin_ws/src
RUN git clone https://github.com/tu-darmstadt-ros-pkg/hector_gazebo /home/catkin_ws/src/hector_gazebo
RUN rm -r /home/catkin_ws/src/hector_gazebo/hector_gazebo_thermal_camera
RUN git clone https://github.com/clearpathrobotics/lms1xx /home/catkin_ws/src/LMS1xx
RUN git clone https://github.com/ros-visualization/interactive_marker_twist_server /home/catkin_ws/src/interactive_marker_twist_server
RUN apt install -y ros-noetic-gazebo-ros-control
RUN apt install -y ros-noetic-gazebo-dev ros-noetic-gazebo-ros ros-noetic-controller-interface ros-noetic-controller-manager-msgs ros-noetic-control-msgs ros-noetic-control-toolbox ros-noetic-forward-command-controller ros-noetic-urdf ros-noetic-controller-manager ros-noetic-diagnostic-updater ros-noetic-roslint ros-noetic-joint-state-publisher ros-noetic-robot-state-publisher ros-noetic-rviz ros-noetic-xacro ros-noetic-robot-localization ros-noetic-twist-mux
RUN apt install -y ros-noetic-joint-state-controller
RUN apt install -y ros-noetic-diff-drive-controller
RUN apt install -y ros-noetic-teleop-twist-keyboard
RUN apt install -y nano
RUN ./ros_entrypoint.sh
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_make -C /home/catkin_ws'
ENTRYPOINT /bin/bash -c '. /opt/ros/noetic/setup.bash; source /home/catkin_ws/devel/setup.bash; roslaunch husky_gazebo my_world.launch'
