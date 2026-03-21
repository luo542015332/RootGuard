# RootGuard 一键安装脚本 (PowerShell)
# 使用方法: .\install-apk.ps1

param(
    [string]$ApkPath = "app/build/outputs/apk/debug/app-debug.apk"
)

# 设置编码
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "    RootGuard 一键安装工具" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# 检查 ADB
$adbPath = (Get-Command adb -ErrorAction SilentlyContinue).Source

if (-not $adbPath) {
    # 尝试常见路径
    $commonPaths = @(
        "C:\platform-tools\adb.exe",
        "C:\Users\$env:USERNAME\AppData\Local\Android\Sdk\platform-tools\adb.exe",
        "C:\Program Files\Android\platform-tools\adb.exe"
    )
    
    foreach ($path in $commonPaths) {
        if (Test-Path $path) {
            $adbPath = $path
            break
        }
    }
}

if (-not $adbPath) {
    Write-Host "[❌ 错误] 未找到 ADB" -ForegroundColor Red
    Write-Host ""
    Write-Host "请按以下步骤安装 ADB：" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "方法 1 - 使用 Chocolatey（推荐）：" -ForegroundColor Green
    Write-Host "  以管理员运行: choco install adb" -ForegroundColor White
    Write-Host ""
    Write-Host "方法 2 - 手动下载：" -ForegroundColor Green
    Write-Host "  1. 访问 https://developer.android.com/studio/releases/platform-tools" -ForegroundColor White
    Write-Host "  2. 下载 platform-tools-windows-xxxxxxxx.zip" -ForegroundColor White
    Write-Host "  3. 解压到 C:\platform-tools" -ForegroundColor White
    Write-Host "  4. 添加环境变量" -ForegroundColor White
    Write-Host ""
    Write-Host "方法 3 - 使用 Scoop：" -ForegroundColor Green
    Write-Host "  scoop install adb" -ForegroundColor White
    Write-Host ""
    Read-Host "按 Enter 键退出"
    exit 1
}

Write-Host "[✓] ADB 已找到: $adbPath" -ForegroundColor Green
Write-Host ""

# 检查 APK
if (-not (Test-Path $ApkPath)) {
    Write-Host "[❌ 错误] 未找到 APK 文件: $ApkPath" -ForegroundColor Red
    Write-Host ""
    Write-Host "请先构建 APK：" -ForegroundColor Yellow
    Write-Host "  ./gradlew assembleDebug" -ForegroundColor White
    Write-Host ""
    Read-Host "按 Enter 键退出"
    exit 1
}

$apkSize = (Get-Item $ApkPath).Length / 1MB
Write-Host "[✓] APK 文件存在 ($([math]::Round($apkSize, 2)) MB)" -ForegroundColor Green
Write-Host ""

# 检查设备
Write-Host "[..] 检查设备连接..." -ForegroundColor Yellow

try {
    $devicesOutput = & $adbPath devices 2>&1
    $deviceLines = $devicesOutput | Select-String "device$"
    
    if (-not $deviceLines) {
        Write-Host "[❌ 错误] 未找到连接的设备" -ForegroundColor Red
        Write-Host ""
        Write-Host "请检查：" -ForegroundColor Yellow
        Write-Host "  1. USB 线是否连接" -ForegroundColor White
        Write-Host "  2. 是否开启 USB 调试（设置 → 开发者选项 → USB 调试）" -ForegroundColor White
        Write-Host "  3. 手机上是否允许调试授权（会弹出提示）" -ForegroundColor White
        Write-Host ""
        Write-Host "首次连接步骤：" -ForegroundColor Cyan
        Write-Host "  1. 设置 → 关于手机 → 连续点击「版本号」7 次" -ForegroundColor White
        Write-Host "  2. 返回 → 系统 → 开发者选项 → 开启「USB 调试」" -ForegroundColor White
        Write-Host "  3. 连接 USB，手机上点击「允许」" -ForegroundColor White
        Write-Host ""
        Read-Host "按 Enter 键退出"
        exit 1
    }
    
    $deviceCount = $deviceLines.Count
    Write-Host "[✓] 找到 $deviceCount 个设备" -ForegroundColor Green
    Write-Host ""
    
    # 获取设备信息
    Write-Host "[..] 获取设备信息..." -ForegroundColor Yellow
    try {
        $deviceModel = (& $adbPath shell getprop ro.product.model 2>$null).Trim()
        $androidVersion = (& $adbPath shell getprop ro.build.version.release 2>$null).Trim()
        Write-Host "  设备: $deviceModel" -ForegroundColor Gray
        Write-Host "  Android: $androidVersion" -ForegroundColor Gray
    } catch {
        Write-Host "  (无法获取详细信息)" -ForegroundColor Yellow
    }
    Write-Host ""
    
} catch {
    Write-Host "[❌ 错误] 执行 ADB 命令失败: $_" -ForegroundColor Red
    Read-Host "按 Enter 键退出"
    exit 1
}

# 检查是否已安装
Write-Host "[..] 检查应用状态..." -ForegroundColor Yellow
try {
    $packageInfo = & $adbPath shell pm list packages 2>$null | Select-String "com.rootguard.app"
    
    if ($packageInfo) {
        Write-Host "[!] 应用已安装，将覆盖安装" -ForegroundColor Yellow
        $installArgs = @("-r")
    } else {
        Write-Host "[✓] 新安装" -ForegroundColor Green
        $installArgs = @()
    }
} catch {
    $installArgs = @()
}
Write-Host ""

# 安装 APK
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "[..] 正在安装 RootGuard..." -ForegroundColor Yellow
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

try {
    $installOutput = & $adbPath install @installArgs $ApkPath 2>&1
    $exitCode = $LASTEXITCODE
    
    if ($exitCode -eq 0) {
        Write-Host ""
        Write-Host "[✓] 安装成功！" -ForegroundColor Green
        Write-Host ""
        
        # 显示应用信息
        Write-Host "应用信息:" -ForegroundColor Cyan
        Write-Host "  包名: com.rootguard.app" -ForegroundColor Gray
        Write-Host "  名称: RootGuard" -ForegroundColor Gray
        Write-Host ""
        
        # 询问是否启动
        $startApp = Read-Host "是否立即启动应用? (Y/n)"
        if ($startApp -ne 'n' -and $startApp -ne 'N') {
            Write-Host ""
            Write-Host "[..] 启动应用..." -ForegroundColor Yellow
            & $adbPath shell am start -n com.rootguard.app/.MainActivity 2>$null
            Write-Host "[✓] 应用已启动" -ForegroundColor Green
        }
    } else {
        Write-Host ""
        Write-Host "[❌ 安装失败]" -ForegroundColor Red
        Write-Host ""
        Write-Host "错误信息:" -ForegroundColor Red
        Write-Host $installOutput -ForegroundColor Red
        Write-Host ""
        Write-Host "可能的解决方案：" -ForegroundColor Yellow
        Write-Host "  1. 先卸载旧版本:" -ForegroundColor White
        Write-Host "     $adbPath uninstall com.rootguard.app" -ForegroundColor Cyan
        Write-Host "  2. 检查 APK 文件是否完整" -ForegroundColor White
        Write-Host "  3. 检查设备存储空间" -ForegroundColor White
        Write-Host ""
    }
} catch {
    Write-Host ""
    Write-Host "[❌ 安装过程出错: $_]" -ForegroundColor Red
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "🐼 RootGuard - 熊猫主题 Root 管理器" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""
Read-Host "按 Enter 键退出"