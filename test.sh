#!/bin/bash

# 第一个终端标签
gnome-terminal --tab --title="Tab1" -e "bash -c 'cd /home/ubuntu/3software/water_fluid_linux_shipping_3/LinuxNoEditor; bash Blocks.sh; exec bash'"

gnome-terminal --tab --title="Tab2" -e "bash -c 'cd /home/fxj/1code/easyTrack; source ./devel/setup.bash; roslaunch perception sensor.launch; exec bash'"
# 等待3秒后打开第二个标签
# sleep 5
# gnome-terminal --tab --title="Tab2" -e "bash -c 'cd /home/fxj/1code/easyTrack; source ./devel/setup.bash; roslaunch se3controller se3controller.launch; exec bash'"

# 再等待1秒后打开第三个标签
sleep 2
gnome-terminal --tab --title="Tab3" -e "bash -c 'cd /home/ubuntu/1code/easyTrack; source ./devel/setup.bash; roslaunch predictor pp.launch; exec bash'"