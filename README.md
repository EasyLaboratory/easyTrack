# easyTrack

Welcome to the `easyTrack` repository! This project uses Git submodules to manage dependencies. This guide will help you clone the repository, work with submodules, and update or submit changes.

## Table of Contents

- [Cloning the Repository](#cloning-the-repository)
- [Initializing and Updating Submodules](#initializing-and-updating-submodules)
- [Making Changes and Committing](#making-changes-and-committing)
- [Pushing Changes to Submodules](#pushing-changes-to-submodules)

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

## Test Controller


```sh
cd easyTrack
catkin_make
source your ws/devel/setup.bash 
roslaunch airsim_ros_pkgs airsim_node.launch 
roslaunch se3controller test_controller.launch
roslaunch se3controller flying_example.launch 
```



