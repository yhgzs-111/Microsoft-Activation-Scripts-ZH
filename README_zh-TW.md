<p align="center"><img src="https://massgrave.dev/img/logo_small.png" alt="MAS Logo"></p>

<h1 align="center">Microsoft  Activation  Scripts (MAS)</h1>

<p align="center">一款開源的 Windows 與 Office 啟用工具，支援 HWID、Ohook、TSforge、KMS38 及線上 KMS 等多種啟用方式，並提供進階疑難排解功能。</p>

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

Windows 和 Office 啟用工具 **MAS (Microsoft-Activation-Scripts)** 的正體中文化版，在不改變機器碼的情況下可永久啟用 (視啟用方式而定) 。

**最新版本 (Latest Version)：3.12**

### 中文化版注意事項

本中文化版本實現了MAS指令碼的完整中文化，註解、互動提示等所有介面與程式碼細節皆已中文化。既可用於日常啟用操作，亦便於深入研習MAS指令碼的內部實作原理。

該中文化版本由[**Deepseek-R1**](https://deepseek.com/)進行初步中文化，並由[**本人**](https://github.com/yhgzs-111/)校對完成。

**請勿隨意修改指令碼編碼，否則指令碼可能無法正常執行！！！**

由於不可抗力的編碼因素，極少數介面提示或註解可能殘留輕微亂碼，但這完全不影響啟用功能及指令碼的正常執行。

下載連結皆已進行**中國大陸加速**。

有關指令碼使用的更多資訊及常見問題，請參閱原指令碼官方網站[**massgrave.dev**](https://massgrave.dev/)。

### 使用

#### 線上使用: 

開啟 **PowerShell** 並輸入下方命令即可使用。

- **Windows Defender** 有可能誤刪，使用前請關閉**即時保護**。

**中國大陸加速**

```
irm https://get.f0x.in | iex
```

#### 離線使用: 

**註：本指令碼大部分功能仍需連線使用**

下載後按兩下開啟即可使用。如果無法下載/開啟，請關閉 **Microsoft SmartScreen**。

**下載連結（中國大陸加速）**：[MAS_AIO_ZH.cmd](https://get.f0x.in/MAS_AIO_ZH.cmd)

### 各個啟用方法的特性

|          | HWID | Ohook  | Online KMS | TSforge (ZeroCID) | TSforge (StaticCID) | TSforge (KMS4k) |
|:------:|:--------:|:-------:|:------------:|:-------------------:|:---------------------:|:-----------------:| 
| 離線啟用 |  ❌  |  ✅    |     ❌     |  ✅              |        ❌           |  ✅  |
| 永久啟用 |  ✅  |  ✅    |  ☑️<br>(180天/次)  |  ✅  |  ✅  |☑️<br>(至4083)
| 不會在系統中留下檔案來維持啟用 |  ✅  |  ❌  |  ❌  |  ✅  |  ✅  |  ✅  |
| 硬體變更後仍保留啟用 |  ❌  |  ✅  |  ✅  |  ✅  |  ❌  |  ✅  |
| 在同一硬體上的全新安裝之間持續存在 |  ✅  |  ❌  |  ❌  |  ❌  |  ❌  |  ❌  |
| 在 Windows 10 / 11 功能升級之間持續存在 |  ✅  |  ✅  |  ✅  |  ❌  |  ❌  |  ❌  |

🔍 [了解指令碼更多特性](https://massgrave.dev/chart#user-content-fn-2) 

🔍 [前往官方 GitHub 儲存庫 (MAS Source Code)](https://github.com/massgravel/Microsoft-Activation-Scripts?tab=readme-ov-file#download--how-to-use-it)

---

<div align="center">

### 致謝

感謝[**cmontage**](https://github.com/cmontage)的[**mas-cn**](https://github.com/cmontage/mas-cn)專案為本儲存庫README提供範本，並為本儲存庫結構和.ps1指令碼提供參考。

**在此致謝！**

---

### 官方原版首頁 - [https://massgrave.dev/](https://massgrave.dev/)
  
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
