param(
    [string]$ApkPath = "app/build/outputs/apk/debug/app-debug.apk"
)

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "    RootGuard APK 安装工具" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# 检查 ADB
$adb = Get-Command adb -ErrorAction SilentlyContinue
if (-not $adb) {
    Write-Host "[❌ 错误] 未找到 ADB" -ForegroundColor Red
    Write-Host ""
    Write-Host "请安装 ADB 工具："
    Write-Host "  1. 安装 Android Studio"
    Write-Host "  2. 或运行: choco install adb"
    Write-Host "  3. 或下载: https://developer.android.com/studio/releases/platform-tools"
    exit 1
}

Write-Host "[✓] ADB 检测通过" -ForegroundColor Green
Write-Host ""

# 检查 APK 文件
if (-not (Test-Path $ApkPath)) {
    Write-Host "[❌ 错误] 未找到 APK 文件: $ApkPath" -ForegroundColor Red
    Write-Host ""
    Write-Host "请先构建 APK 或指定正确的路径"
    Write-Host ""
    Write-Host "示例:"
    Write-Host "  .\install.ps1"
    Write-Host "  .\install.ps1 -ApkPath 'C:\path\to\app-debug.apk'"
    exit 1
}

Write-Host "[✓] APK 文件存在" -ForegroundColor Green
Write-Host "    路径: $ApkPath" -ForegroundColor Gray
Write-Host ""

# 检查设备
Write-Host "[...] 检查设备连接..." -ForegroundColor Yellow
$devices = adb devices | Select-String "device$"

if (-not $devices) {
    Write-Host "[❌ 错误] 未找到连接的设备" -ForegroundColor Red
    Write-Host ""
    Write-Host "请检查："
    Write-Host "  1. USB 线是否连接"
    Write-Host "  2. 是否开启 USB 调试（设置 → 开发者选项 → USB 调试）"
    Write-Host "  3. 是否允许调试授权（手机上会弹出提示）"
    Write-Host ""
    Write-Host "如果首次连接，请在手机上允许 USB 调试"
    exit 1
}

$deviceCount = ($devices -split "`n").Count
Write-Host "[✓] 找到 $deviceCount 个设备" -ForegroundColor Green
Write-Host ""

# 获取设备信息
Write-Host "[...] 获取设备信息..." -ForegroundColor Yellow
try {
    $deviceInfo = adb shell getprop ro.product.model
    $androidVersion = adb shell getprop ro.build.version.release
    $deviceInfo = $deviceInfo.Trim()
    $androidVersion = $androidVersion.Trim()
    Write-Host "    设备: $deviceInfo" -ForegroundColor Gray
    Write-Host "    Android: $androidVersion" -ForegroundColor Gray
} catch {
    Write-Host "    无法获取设备信息" -ForegroundColor Yellow
}
Write-Host ""

# 检查是否已安装
Write-Host "[...] 检查应用状态..." -ForegroundColor Yellow
$packageInfo = adb shell pm list packages | Select-String "com.rootguard.app"

if ($packageInfo) {
    Write-Host "[!] 应用已安装，将覆盖安装" -ForegroundColor Yellow
    $installArgs = "-r"
} else {
    Write-Host "[✓] 新安装" -ForegroundColor Green
    $installArgs = ""
}

Write-Host ""

# 安装 APK
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "[...] 正在安装 APK..." -ForegroundColor Yellow
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

$installOutput = adb install $installArgs "$ApkPath" 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "[✓] 安装成功！" -ForegroundColor Green
    Write-Host ""
    
    # 显示应用信息
    Write-Host "应用信息:" -ForegroundColor Cyan
    Write-Host "  包名: com.rootguard.app" -ForegroundColor Gray
    Write-Host "  名称: RootGuard" -ForegroundColor Gray
    Write-Host ""
    
    # 启动应用
    $startApp = Read-Host "是否立即启动应用? (Y/n)"
    if ($startApp -ne 'n') {
        Write-Host ""
        Write-Host "[...] 启动应用..." -ForegroundColor Yellow
        adb shell am start -n com.rootguard.app/.MainActivity
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
    Write-Host "  1. 检查 APK 是否完整（文件大小是否正常）"
    Write-Host "  2. 卸载旧版本: adb uninstall com.rootguard.app"
    Write-Host "  3. 检查设备存储空间是否充足"
    Write-Host "  4. 检查设备是否已 Root（Magisk 是否安装）"
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "🐼 RootGuard - 熊猫主题 Root 管理器" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

pause