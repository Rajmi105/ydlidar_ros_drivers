#! /bin/bash

clear
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source /opt/ros/noetic/setup.bash
echo "Installing for YDLidar X4 Pro"
git clone https://github.com/YDLIDAR/YDLidar-SDK.git
mkdir YDLidar-SDK/build
cd YDLidar-SDK/build
cmake ..
make
sudo make install
cd
mkdir -p ydlidar_ws/src/ydlidar_ros_driver
cd ydlidar_ws/src/ydlidar_ros_driver
git clone https://github.com/YDLIDAR/ydlidar_ros_driver.git
cd ~/ydlidar_ws
catkin_make
source devel/setup.bash
echo "source ~/ydlidar_ws/devel/setup.bash" >> ~/.bashrc
chmod 777 src/ydlidar_ros_driver/startup/*
sudo sh src/ydlidar_ros_driver/startup/initenv.sh
cd ~/ydlidar_ws/src/ydlidar_ros_driver/launch
sed -i 's3<launch file="$(find ydlidar_ros_driver)/launch/lidar.launch" />3<launch file="$(find ydlidar_ros_driver)/launch/X4.launch"3g' lidar_view.launch
roslaunch ydlidar_ros_driver lidar_view.launch
