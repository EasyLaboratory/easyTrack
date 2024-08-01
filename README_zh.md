# easyTrack (中文)
欢迎使用 `easyTrack` 仓库！本项目使用 Git 子模块来管理依赖项。本指南将帮助您克隆仓库、使用子模块以及更新或提交更改。

## 克隆仓库

要克隆 `easyTrack` 仓库，请使用以下命令：

```sh
git clone --recurse-submodules https://github.com/EasyLaboratory/easyTrack.git
```
或者
```sh
git clone https://github.com/EasyLaboratory/easyTrack.git
cd easyTrack
git submodule init
git submodule update
```

要更新子模块到主仓库引用的最新提交，请运行：

```sh
git submodule update --remote --merge
```

这将从子模块仓库中获取最新的更改，并将其与本地副本合并。

## 测试控制器

```sh
cd easyTrack
catkin_make
echo "source $(pwd)/devel/setup.bash" >> ~/.bashrc
roslaunch airsim_ros_pkgs airsim_node.launch 
roslaunch se3controller se3controller.launch
roslaunch se3controller flying_example.launch 
```
由于se3controller接收的是enu坐标系下的odom作为飞机当前姿态和速度，所有的计算都是参考enu坐标系，所以在通过mavros/PositionTarget.msg给控制点的时候，请一定注意要考虑将参考系转移到enu坐标系下。

![2024-08-01 10-37-40 的屏幕截图](https://github.com/user-attachments/assets/25501f8c-ecf3-4bd3-9f52-944537dcb7a3)

## 其他信息

有关 `easyGL` 脚本的更多信息，请查看 [EasyGL README](https://github.com/EasyLaboratory/perception/tree/main/scripts/easyGL#readme)。

---

[English Version](README.md)
```

