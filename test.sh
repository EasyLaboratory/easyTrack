#!/bin/bash

# 第一个终端标签
# gnome-terminal --tab --title="Tab1" -e "bash -c 'cd /home/ubuntu/3software/water_fluid_linux_shipping_3/LinuxNoEditor; bash Blocks.sh; exec bash'"

# gnome-terminal --tab --title="Tab2" -e "bash -c 'cd /home/fxj/1code/easyTrack; source ./devel/setup.bash; roslaunch perception sensor.launch; exec bash'"

# 打开第二个标签
# sleep 5
gnome-terminal --tab --title="Tab2" -e "bash -c 'cd /home/ubuntu/1code/easyTrack; source ./devel/setup.bash; roslaunch se3controller se3controller.launch; exec bash'"

# 打开第三个标签
sleep 4
gnome-terminal --tab --title="Tab3" -e "bash -c 'cd /home/ubuntu/1code/easyTrack; source ./devel/setup.bash; roslaunch planner plan_ros.launch; exec bash'"

# 打开第四个标签
sleep 2
gnome-terminal --tab --title="Tab4" -e "bash -c 'cd /home/ubuntu/1code/easyTrack; source ./devel/setup.bash; roslaunch predictor predict_ros.launch; exec bash'"
