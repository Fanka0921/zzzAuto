# 绝区零零号业绩刷取脚本

## 简介

- 针对零号空洞 **旧都列车·前线** 关卡设计
- 基于 [**AutoHotKey v2**](https://www.autohotkey.com) 实现的 **零号业绩** 和 **零号空洞银行存款** 快速刷取
    > 实测约3\~4分钟一把，20业绩+存款到手，3\~4小时就能刷满一周零号业绩上限
- 简单轻量易用，对 **分辨率、帧率、HDR、游戏内字体粗细等** 基本无要求

## 使用前提

**以下四个要求缺一不可！**

- 1. **全屏** 运行游戏
- 2. 默认战斗角色 **至少3位**
- 3. **以管理员身份运行** 脚本
- 4. 已激活作战攻略的 **开局炸弹补给**

## 下载、打开方法

- 方法一：
下载[release](https://gitee.com/UCPr251/zzzAuto/releases)最新版本的exe可执行文件（或自行下载源码编译）， **右键** 该exe文件选择 **以管理员方式运行**

- 方法二：
直接克隆源码使用（需已安装好[autohotkey](https://www.autohotkey.com) v2版解释器）， **右键** 零号业绩.ahk文件选择 **以管理员方式运行**

## 使用方法

- Alt+Z ：启动脚本（自动循环刷取，默认情况下会一直刷取直至零号业绩达到周上限）
- Alt+T ：查看/关闭刷取统计
- Alt+L ：关闭/开启日志弹窗
- Alt+P ：暂停/恢复脚本
- Alt+R ：重启脚本
- Alt+Q ：退出脚本
- Alt+B ：银行模式（开启此模式并启动脚本后，不论零号业绩是否达到周上限，都会无限循环刷取，用于刷取银行存款）

## 注意事项

1. 如此脚本在你的电脑上无法正常运行，可尝试切换 **显示器和游戏** 的画面分辨率为1920\*1080全屏。本脚本设计分辨率1920\*1080，其他分辨率按照等比缩放进行操作，因此建议按照 **16:9** 的 **长宽比** 运行脚本
    > 已测试可用分辨率：1920\*1080、2560\*1440、2880\*1800（对应游戏分辨率2304\*1440）、3840\*2160

2. 由于电脑配置的差异，实际动画加载时长可能比预设的更久进而导致错误，可自行修改源码的[休眠系数](零号业绩.ahk#L36)延长全局的等待时长

3. 由于实现原理较简易，此脚本无法保证在所有情况下都能稳定运行，若出现失效、意外报错，请尝试重启脚本后于主界面重新运行。若仍存在问题，请提issue截图描述

4. 战斗按照鲨鱼妹设计，其他角色只要哪怕一直a都能S评价即可，因此第一位建议带主C
    > 战斗时长一般在20~50s以内，超过50s建议换个角色试试

5. 为避免消息弹窗等的影响，建议在脚本运行期间开启 **免打扰模式**

6. 请勿在脚本运行期间操作键鼠，若需操作请先暂停脚本： **Alt+P**

7. 本脚本完全免费公开， **严禁用于任何商业用途** ，仅供学习交流使用
