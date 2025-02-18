#!/bin/bash

# 执行Block.sh脚本
gnome-terminal -- bash -c "cd /home/fxj/5app/water_fluid_linux_shipping/LinuxNoEditor; bash Blocks.sh; exec bash"

# 等待3秒
sleep 3

# 切换到easyTrack目录并运行roslaunch
gnome-terminal -- bash -c "cd /home/fxj/1code/easyTrack; source ./devel/setup.bash; roslaunch se3controller se3controller.launch; exec bash"
sleep 2

# 再次切换到easyTrack目录并运行roslaunch
gnome-terminal -- bash -c "source ~/.bashrc; cd /home/fxj/1code/easyTrack; source ./devel/setup.bash; roslaunch se3controller flying_example.launch; exec bash"
