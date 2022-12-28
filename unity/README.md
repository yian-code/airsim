# AirSim & Unity 环境搭建

[官方文档：AirSim on Unity](https://microsoft.github.io/AirSim/Unity/)

### 软件版本

- AirSim 1.8.1
- Unity 2019.3.12
- Visual Studio 2019, 需要安装 `Desktop Development with C++` 和 `Windows 10 SDK 10.0.18362`
- Python 版本：Python 3.7

### 编译 AirSim

- 打开 `x64 Native Tools Command Prompt for VS 2019`， 进入 `git clone https://github.com/Microsoft/AirSim.git` 下载的 `AirSim` 文件夹

- 运行 build.cmd

> **[!TIP] **
> 这里如果有报错请更换 Visual Studio 2022 ，需要安装 Desktop Development with C++ 和 Windows 10 SDK 10.0.19041 ，使用 `Developer Command Prompt for VS 2022` 进行 build

- 打开 AirSim\Unity ，运行 build.cmd

### 测试 demo

- 打开 `AirSim\Unity\UnityDemo`运行工程
- 安装 msgpack-rpc-python 和 airsim 两个库，安装指令为：

```sh
pip install msgpack-rpc-python
pip install airsim
```

- 打开 `AirSim\PythonClient\multirotor` 路径，运行 `hello_drone.py` 文件，进行相应操作即可控制无人机

操作：

1. 相机视角控制按键：数字键 0 1 2 3
2. 数据记录按键：游戏视图右下角的红色按钮，所记录的数据可以在计算机的 `Documents\AirSim\(Date of recording)` 找到
3. Fn + F10 打开天气控制开关

### bug 记录

之前参考过这个[Windows10 安装并使用 Unity3D 项目 AirSim 教程](https://blog.csdn.net/yldmkx/article/details/108694287?)

错误 MSB8020 无法找到 v143 的生成工具(平台工具集 =“v143”)。若要使用 v143 生成工具进行生成，请安装 v143 生成工具，使用过方法 [无法找到 v143 的生成工具](https://blog.csdn.net/love906897406/article/details/124504065)解决了

### 使用 vs2022 编译运行报错问题

目前为了使用 AirSim & UE4 ，本人使用的 vs 2022 编译的 AirSim ，但是执行 `hello_drone.py`错误：

```
PS F:\AirSim\PythonClient\multirotor> python .\hello_drone.py
Traceback (most recent call last):
  File ".\hello_drone.py", line 13, in <module>
    state = client.getMultirotorState()
NameError: name 'client' is not defined
```

由于之前使用 vs2019 的工程有存档，现在暂时使用原先的存档进行学习开发
