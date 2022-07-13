# lib-xg-timer

#### 介绍

使用autolisp实现的简单计时器。

#### 软件架构

使用纯autolisp 实现，不含 visual lisp 代码。理论上讲，支持在下列cad系统中使用：
- AutoCAD 2000~2022
- AutoCAD mac版
- BricsCAD
- 国产的中望、浩辰
- 其他支持autolisp API的cad系统

#### 安装教程

无需安装，下载即可用。
1.  可在prj文件中直接引用lsp文件
2.  或者，在prv文件中引用发行版fas或lsp文件

#### 使用说明

通过以下3个函数（接口）实现计时器的启动和计时功能：

1. `xg/timer-start`函数，返回当前时间值的实数值。
2. `xg/timer2`函数，返回从 上一时间值 至 当前时间值 的时长实数值，以秒计。
2. `xg/timer`函数，返回从 上一时间值 至 当前时间值 的时长**字符串**，以秒计。

#### 注意事项

1. 使用visual lisp ide，编译prj或者prv时，prj或prv的包含文件列表*不允许同名文件*，
即使同名文件处于不同目录也是不允许的。因此，如需修改文件名，**请注意文件名冲突问题**。
2. auto/visual lisp对于函数名称的冲突，其解决机制是*后定义的覆盖先定义的*。
因此，如需修改函数名，**请注意函数名冲突问题**。

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request