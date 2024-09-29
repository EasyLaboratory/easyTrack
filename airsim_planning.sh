#!/bin/bash

# 在同一个终端中打开三个标签页，并分别执行指令

# 打开第一个标签页并执行第一个指令
gnome-terminal --tab --title="RVIZ" -- bash -c "source devel/setup.bash; roslaunch mapping rviz_sim.launch; exec bash"

# 等待3秒
sleep 3

# 打开第三个标签页并执行第二个指令
gnome-terminal --tab --title="SIMULATION_AIRSIM" -- bash -c "source devel/setup.bash; roslaunch planning simulation_airsim.launch > >(tee ~/simulation_airsim.log) 2> >(tee -a ~/simulation_airsim.log >&2); exec bash"
