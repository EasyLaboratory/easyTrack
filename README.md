# easyTrack

Welcome to the `easyTrack` repository! This project uses Git submodules to manage dependencies. This guide will help you clone the repository, work with submodules, and update or submit changes.

For the Chinese version, please visit [中文版本](README_zh.md).

## Cloning the Repository

To clone the `easyTrack` repository, use the following command:

```sh
git clone --recurse-submodules https://github.com/EasyLaboratory/easyTrack.git
```
or
```sh
git clone https://github.com/EasyLaboratory/easyTrack.git
cd easyTrack
git submodule init
git submodule update
```
To update the submodules to the latest commit referenced by the main repository, run:

```sh
git submodule update --remote --merge
```
This fetches the latest changes from the submodule repositories and merges them with your local copy.
Install ros dependency:
、、、sh
sudo apt update
sudo apt install ros-noetic-mavros-msgs
sudo apt install ros-noetic-tf2-sensor-msgs
、、、

## Test Controller
```sh
cd easyTrack
catkin_make
echo "source $(pwd)/devel/setup.bash" >> ~/.bashrc  ## install your ws into bashrc
##launch your game firstly
roslaunch se3controller se3controller.launch
roslaunch se3controller flying_example.launch
```
![2024-08-01 10-37-40 的屏幕截图](https://github.com/user-attachments/assets/25501f8c-ecf3-4bd3-9f52-944537dcb7a3)


## Yolo detection

Install virtual environment
```sh
pip install virtualenv
cd src/perception
virtualenv yolo_venv
source yolo_venv/bin/activate
pip install -r requirements.txt
```
Start the Yolo detection by

```sh
##launch your game firstly
roslaunch perception perception.launch
```
Ref to the [EasyGL README](https://github.com/EasyLaboratory/perception/tree/main/scripts/easyGL#readme) for 3D position retrieval from a depth camera.


