<#
.SYNOPSIS
    启动 Microsoft Activation Scripts (MAS) 中文版 AIO 脚本（通过 ghproxy 加速下载）。
.DESCRIPTION
    从 https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH 通过 ghproxy 代理
    下载 MAS_AIO_ZH.cmd 并在 CMD 中执行，支持传递任意参数。
.PARAMETER Parameters
    传递给 MAS_AIO_ZH.cmd 的额外参数（使用剩余参数形式）。
.EXAMPLE
    .\mas-zh.ps1
    直接运行，不带参数。
.EXAMPLE
    .\mas-zh.ps1 /kms 192.168.1.100
    将参数 /kms 和 192.168.1.100 传递给 CMD 脚本。
.LINK
    项目主页: https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH
#>

chcp 65001 > $null
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Parameters
)

# 若没有参数且没有 $args，显示帮助信息
if (-not $Parameters -and -not $args) {
    Write-Host ''
    Write-Host '需要帮助？查看项目主页: ' -NoNewline
    Write-Host 'https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH' -ForegroundColor Green
    Write-Host ''
}

& {
    $psv = (Get-Host).Version.Major
    $troubleshoot = 'https://github.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/issues'

    # 检查 PowerShell 执行模式
    if ($ExecutionContext.SessionState.LanguageMode.value__ -ne 0) {
        Write-Host "PowerShell 未在完整语言模式下运行。"
        Write-Host "帮助 - https://massgrave.dev/troubleshoot" -ForegroundColor White -BackgroundColor Blue
        return
    }

    # 检查 .NET 环境
    try {
        [void][System.AppDomain]::CurrentDomain.GetAssemblies()
        [void][System.Math]::Sqrt(144)
    } catch {
        Write-Host "错误: $($_.Exception.Message)" -ForegroundColor Red
        Write-Host "PowerShell 无法加载 .NET 命令。"
        Write-Host "帮助 - https://massgrave.dev/troubleshoot" -ForegroundColor White -BackgroundColor Blue
        return
    }

    # 检查第三方杀毒软件
    function Check3rdAV {
        $cmd = if ($psv -ge 3) { 'Get-CimInstance' } else { 'Get-WmiObject' }
        try {
            $avList = & $cmd -Namespace root\SecurityCenter2 -Class AntiVirusProduct -ErrorAction SilentlyContinue |
                Where-Object { $_.displayName -notlike '*windows*' } |
                Select-Object -ExpandProperty displayName
            if ($avList) {
                Write-Host '第三方杀毒软件可能会阻止脚本运行 - ' -ForegroundColor White -BackgroundColor Blue -NoNewline
                Write-Host " $($avList -join ', ')" -ForegroundColor DarkRed -BackgroundColor White
            }
        } catch {}
    }

    # 检查文件是否创建成功
    function CheckFile {
        param ([string]$FilePath)
        if (-not (Test-Path $FilePath)) {
            Check3rdAV
            Write-Host "无法在临时文件夹中创建 MAS 文件，操作中止！"
            Write-Host "帮助 - $troubleshoot" -ForegroundColor White -BackgroundColor Blue
            throw
        }
    }

    # 设置安全协议
    try {
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    } catch {}

    # 下载 URL
    $downloadUrl = "https://raw.githubusercontent.com/yhgzs-111/Microsoft-Activation-Scripts-ZH/refs/heads/main/MAS_AIO_ZH.cmd"
    $fileName = "MAS_AIO_ZH.cmd"

    Write-Progress -Activity "下载 MAS 文件..." -Status "请稍等"

    $tempFile = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), [System.IO.Path]::GetRandomFileName() + ".cmd")
    $downloadSuccess = $false

    try {
        Write-Host "下载链接: $downloadUrl" -ForegroundColor Gray
        if ($psv -ge 3) {
            Invoke-WebRequest -Uri $downloadUrl -OutFile $tempFile -Headers @{ "User-Agent" = "PowerShell MAS-CN Script" }
        } else {
            $wc = New-Object System.Net.WebClient
            $wc.Headers.Add("User-Agent", "PowerShell MAS-CN Script")
            $wc.DownloadFile($downloadUrl, $tempFile)
        }
        $downloadSuccess = $true
    } catch {
        Write-Host "下载失败: $($_.Exception.Message)" -ForegroundColor Red
    }

    Write-Progress -Activity "下载 MAS 文件..." -Status "完成" -Completed

    if (-not $downloadSuccess -or -not (Test-Path $tempFile)) {
        Write-Host "无法下载 MAS 文件，操作中止！" -ForegroundColor Red
        Write-Host "帮助 - $troubleshoot" -ForegroundColor White -BackgroundColor Blue
        return
    }

    CheckFile $tempFile

    # 启动 CMD，先切换代码页，再执行临时脚本
    $cmdArgs = "/c chcp 936 && `"$tempFile`""
    if ($Parameters) {
        $cmdArgs += " " + ($Parameters -join " ")
    }

    Start-Process -FilePath "cmd.exe" -ArgumentList $cmdArgs -Wait

    # 清理临时文件
    Remove-Item $tempFile -Force -ErrorAction SilentlyContinue
}