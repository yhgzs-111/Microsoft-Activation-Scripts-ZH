<p align="center"><img src="https://massgrave.dev/img/logo_small.png" alt="MAS Logo"></p>

<h1 align="center">Microsoft  Activation  Scripts (MAS)</h1>

<p align="center">一款开源的 Windows 与 Office 激活工具，支持 HWID、Ohook、TSforge、KMS38 及在线 KMS 等多种激活方式，并提供高级故障排除功能。</p>

<p align="center">
    <a href="https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/stargazers"><img src="https://img.shields.io/github/stars/yhgzs-111/Microsoft-Activation-Scripts-ZH?style=for-the-badge&logo=github" alt="GitHub stars"></a>
    <a href="https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH"><img src="https://img.shields.io/github/repo-size/yhgzs-111/Microsoft-Activation-Scripts-ZH?style=for-the-badge&logo=github" alt="GitHub repo size"></a>
    <a href="https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/blob/main/LICENSE"><img src="https://img.shields.io/github/license/yhgzs-111/Microsoft-Activation-Scripts-ZH?style=for-the-badge" alt="GitHub license"></a>
</p>

<hr>

Windows 和 Office 激活工具 **MAS (Microsoft-Activation-Scripts)** 的汉化版，在不改变机器码的情况下可永久激活 (视激活方式而定) 。

**最新版本 (Latest Version)：3.12**

### 汉化版注意事项

本汉化版本实现了MAS脚本的完整汉化，注释、交互提示等所有界面与代码细节均已中文化。既可用于日常激活操作，也便于深入研习MAS脚本的内在实现原理。

该汉化版本由[**Deepseek-R1**](https://deepseek.com/)进行初步汉化+[**我本人**](https://github.com/yhgzs-111/)校对完成。

**请勿随意修改脚本编码，否则脚本有可能无法正常运行！！！**

由于不可抗力的编码因素，极少数界面提示或注释可能残留轻微乱码，但这完全不影响激活功能及脚本的正常运行。

有关脚本使用的更多信息，请参阅原脚本官网[**massgrave.dev**](https://massgrave.dev/)。

### 使用

#### 在线使用: 

打开 **Powershell** 输入下方命令即可使用。

- **Windows Defender** 有概率误删，使用前请关闭**实时保护**。

```
$w=New-Object System.Net.WebClient;$w.Encoding=[System.Text.Encoding]::GetEncoding('GB18030');iex($w.DownloadString('https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/raw/refs/heads/main/GETMASZH.ps1'))
```

**中国大陆加速**

```
$w=New-Object System.Net.WebClient;$w.Encoding=[System.Text.Encoding]::GetEncoding('GB18030');iex($w.DownloadString('https://get.f0x.in/GETMASZH.ps1'))
```

#### 离线使用: 

**注：本脚本大部分功能仍需联网使用**

下载后双击打开即可使用。如无法下载/打开，请关闭**Microsoft SmartScreen**。

**下载链接**：https://raw.githubusercontent.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/refs/heads/main/MAS_AIO_ZH.cmd

**下载链接（中国大陆加速）**：https://get.f0x.in/MAS_AIO_ZH.cmd

### 各个激活方法的特性

|          | HWID | Ohook  | Online KMS | TSforge (ZeroCID) | TSforge (StaticCID) | TSforge (KMS4k) |
|:------:|:--------:|:-------:|:------------:|:-------------------:|:---------------------:|:-----------------:| 
| 离线激活 |  ❌  |  ✅    |     ❌     |  ✅              |        ❌           |  ✅  |
| 永久激活 |  ✅  |  ✅    |  ☑️<br>(180天/次)  |  ✅  |  ✅  |☑️<br>(至4083)
| 不会在系统中留下文件来维持激活 |  ✅  |  ❌  |  ❌  |  ✅  |  ✅  |  ✅  |
| 硬件更改后仍保留激活 |  ❌  |  ✅  |  ✅  |  ✅  |  ❌  |  ✅  |
| 在同一硬件上的全新安装之间持续存在 |  ✅  |  ❌  |  ❌  |  ❌  |  ❌  |  ❌  |
| 在 Windows 10 / 11 功能升级之间持续存在 |  ✅  |  ✅  |  ✅  |  ❌  |  ❌  |  ❌  |

🔍 [了解脚本更多特性](https://massgrave.dev/chart#user-content-fn-2) 

🔍 [访问官方 Github 仓库 (MAS Source Code)](https://github.com/massgravel/Microsoft-Activation-Scripts?tab=readme-ov-file#download--how-to-use-it)

---

<div align="center">

### 鸣谢

感谢[**cmontage**](https://github.com/cmontage)的[**mas-cn**](https://github.com/cmontage/mas-cn)项目为本仓库README提供模板，为本仓库结构和.ps1脚本提供借鉴。

**本人在此致谢！**

---

### 官方原版主页 - [https://massgrave.dev/](https://massgrave.dev/)
  
[![1.1]][1]
[![1.2]][2]
[![1.3]][3]
[![1.4]][4]
[![1.5]][5]
[![1.6]][6]
[![1.7]][7]

[1.1]: https://massgrave.dev/img/logo_discord.png (Chat with us without signup)
[1.2]: https://massgrave.dev/img/logo_reddit.png (Reddit)
[1.3]: https://massgrave.dev/img/logo_bluesky.png (Bluesky)
[1.4]: https://massgrave.dev/img/logo_x.png (Twitter)

[1.5]: https://massgrave.dev/img/logo_github.png (GitHub)
[1.6]: https://massgrave.dev/img/logo_azuredevops.png (AzureDevOps)
[1.7]: https://massgrave.dev/img/logo_gitea.png (Self-hosted Git)

[1]: https://discord.gg/j2yFsV5ZVC
[2]: https://www.reddit.com/r/MAS_Activator
[3]: https://bsky.app/profile/massgrave.dev
[4]: https://twitter.com/massgravel
[5]: https://github.com/massgravel/Microsoft-Activation-Scripts
[6]: https://dev.azure.com/massgrave/_git/Microsoft-Activation-Scripts
[7]: https://git.activated.win/Microsoft-Activation-Scripts

---
</div>
