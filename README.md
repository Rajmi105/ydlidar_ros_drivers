# ydlidar_ros_drivers
A script that does everything instead of you to install the things for ydlidar mapping
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Before you install the mapping softwares you have to install Ubuntu 20.04 on your RaspberryPi
Ubuntu Install:
 - Download the RaspberryPi Imager (or install with your package manager on linux): https://www.raspberrypi.com/software/
  ![raspbiimager](https://github.com/Rajmi105/ros-rplidar-mapping/assets/44523110/e7bb988b-1e84-4f92-a15d-7e594a7cce0e)
 - Select your RaspberryPi Device with the 'Choose Device' button
 - Click on 'Choose OS' -> Scroll down to 'Other general-purpose OS' -> Select Ubuntu -> Scroll down and select Ubuntu Server 20.04.5 LTS (64 or 32 bit depending on your RaspberryPi)
 - Select your SD card with the 'Choose Storage' button and write the image
 - After the writing is done, put the SD card into your RaspberryPi
 - After you boot into the system (username: ubuntu, password: ubuntu) you will need to change the password
 - After the password is changed type in: ```sudo apt install ubuntu-desktop```
 - After the installation is done just reboot the device ```sudo shutdown -r now```
## After installing linux
 - Clone this repo ```git clone https://github.com/Rajmi105/ydlidar_ros_drivers.git```
 - Copy the installer script to your home folder ```cp ~/ydlidar_ros_drivers/ydlidarinstaller.sh ~/```
 - Run it ```bash ydlidarinstaller.sh```
 - This will install everything you will need and also it will start the mapping program
## If you want to start the mapping after rebooting your Raspberry Pi
 - To start the mappin again type ```roslaunch ydlidar_ros_driver lidar_view.launch```
