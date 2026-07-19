<p align="center"><img src="https://massgrave.dev/img/logo_small.png" alt="MAS Logo"></p>

<h1 align="center">Microsoft  Activation  Scripts (MAS)</h1>

<p align="center">An open-source Windows and Office activation tool supporting HWID, Ohook, TSforge, KMS38, and Online KMS activation methods, along with advanced troubleshooting features.</p>

<p align="center">
    <a href="https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/stargazers"><img src="https://img.shields.io/github/stars/yhgzs-111/Microsoft-Activation-Scripts-ZH?style=for-the-badge&logo=github" alt="GitHub stars"></a>
    <a href="https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH"><img src="https://img.shields.io/github/repo-size/yhgzs-111/Microsoft-Activation-Scripts-ZH?style=for-the-badge&logo=github" alt="GitHub repo size"></a>
    <a href="https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/blob/main/LICENSE"><img src="https://img.shields.io/github/license/yhgzs-111/Microsoft-Activation-Scripts-ZH?style=for-the-badge" alt="GitHub license"></a>
</p>

<p align="center">
  <a href="README.md">简体中文 (中国大陆)</a> |
  <a href="README_zh-HK.md">繁體中文 (香港)</a> |
  <a href="README_zh-TW.md">繁體中文 (台灣)</a> |
  <a href="README_en-US.md">English (US)</a>
</p>

<hr>

A Chinese translation of the **MAS (Microsoft-Activation-Scripts)** Windows and Office activation tool, capable of permanent activation (depending on the method) without modifying machine code.

**Latest Version: 3.12**

### Notes on the Chinese Translation

This Chinese version features a complete translation of the MAS script, with all comments, interactive prompts, and interface and code details localized into Chinese. It can be used for daily activation tasks and also facilitates an in-depth study of the inner workings of the MAS script.

This translation was initially performed by [**Deepseek-R1**](https://deepseek.com/) and proofread by [**myself**](https://github.com/yhgzs-111/).

**Do not arbitrarily modify the script encoding, otherwise the script may not function properly!!!**

Due to unavoidable encoding factors, a very small number of interface prompts or comments may contain slight garbled text, but this does not affect the activation functionality or the normal operation of the script.

All download links have been accelerated for **mainland China**.

For more information and FAQs about using the script, please refer to the original script website: [**massgrave.dev**](https://massgrave.dev/).

### Usage

#### Online Use: 

Open **PowerShell** and enter the command below to use.

- **Windows Defender** may occasionally remove it; please disable **real-time protection** before use.

**Mainland China Accelerated**

```
irm https://get.f0x.in | iex
```

#### Offline Use: 

**Note: Most features of this script still require an internet connection.**

After downloading, double-click to open and use. If you cannot download/open it, please disable **Microsoft SmartScreen**.

**Download Link (Mainland China Accelerated):** [MAS_AIO_ZH.cmd](https://get.f0x.in/MAS_AIO_ZH.cmd)

### Characteristics of Each Activation Method

|          | HWID | Ohook  | Online KMS | TSforge (ZeroCID) | TSforge (StaticCID) | TSforge (KMS4k) |
|:------:|:--------:|:-------:|:------------:|:-------------------:|:---------------------:|:-----------------:| 
| Offline activation |  ❌  |  ✅    |     ❌     |  ✅              |        ❌           |  ✅  |
| Permanent activation |  ✅  |  ✅    |  ☑️<br>(180 days/cycle)  |  ✅  |  ✅  |☑️<br>(until 4083)
| Does not leave files on system to maintain activation |  ✅  |  ❌  |  ❌  |  ✅  |  ✅  |  ✅  |
| Activation persists after hardware changes |  ❌  |  ✅  |  ✅  |  ✅  |  ❌  |  ✅  |
| Persists across clean installs on the same hardware |  ✅  |  ❌  |  ❌  |  ❌  |  ❌  |  ❌  |
| Persists across Windows 10 / 11 feature upgrades |  ✅  |  ✅  |  ✅  |  ❌  |  ❌  |  ❌  |

🔍 [Learn more about script features](https://massgrave.dev/chart#user-content-fn-2) 

🔍 [Visit the official GitHub repository (MAS Source Code)](https://github.com/massgravel/Microsoft-Activation-Scripts?tab=readme-ov-file#download--how-to-use-it)

---

<div align="center">

### Acknowledgments

Thanks to [**cmontage**](https://github.com/cmontage) and the [**mas-cn**](https://github.com/cmontage/mas-cn) project for providing the README template for this repository, and for inspiring the repository structure and .ps1 scripts.

**My sincere thanks!**

---

### Official Homepage - [https://massgrave.dev/](https://massgrave.dev/)
  
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
