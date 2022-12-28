# AirSim & Unreal 仿真平台环境搭建

2022-11-25 晚

- 参考教程：[airsim 详细教程(1)：win10 配置 airsim 仿真环境](https://zhuanlan.zhihu.com/p/267321662)

2022-11-26 晚

> **[!WARNING] ** > [Upgrading to Unreal Engine 4.27](https://microsoft.github.io/AirSim/unreal_upgrade/)
> 这是官网的使用 Unreal Engine 4.27 的环境配置教程，如果你使用的是 4.27 版本或者从 4.25 版本升级到此就需要看这个了

软件版本：

- AirSim 版本：v1.8.1
- 虚幻引擎版本：4.27
- Visual Studio 版本：Visual Studio Community 2022
- Python 版本：Python 3.7

1. 使用 `Developer Command Prompt for VS 2022` 进入 AirSim 文件夹运行 build.cmd 进行编译

2. Block 环境测试：使用 `Developer Command Prompt for VS 2022` 进入 `Airsim\Unreal\Environments\Blocks` 运行指令 `update_from_git.bat`, 生成 `Blocks.sln` 工程文件，双击打开此工程文件，会自动运行 Visual Studio 2022

3. 将 `Block工程` 设置为启动项目，编译设置为 `DebugGame_Editor` 和 `Win64` 然后 调试 -> 开始调试 就会打开 Unreal Engine

4. 点击运行，按数字键 0 即可打开相机画面

> **[!TIP] **
> Shift + F1 ：显示出鼠标指针
