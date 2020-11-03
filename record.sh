#!/bin/bash
source ros_entrypoint.sh
rosbag record -o /records/ /navsat/fix /tf /vlp_1/velodyne_points /vlp_2/velodyne_points /imu/data /clock
