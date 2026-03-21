# 批量复制图标文件到项目
# 使用前请确保已经生成了 panda_48.png 到 panda_192.png

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   图标文件复制工具" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 检查是否在正确的目录
if (-not (Test-Path "app\src\main\res")) {
    Write-Host "❌ 错误：请在项目根目录运行此脚本" -ForegroundColor Red
    Write-Host "   当前目录：$(Get-Location)" -ForegroundColor Yellow
    Write-Host "   应该在：c:\Users\Administrator\WorkBuddy\20260321183732" -ForegroundColor Yellow
    pause
    exit 1
}

# 检查源文件是否存在
$sourceFiles = @(
    "panda_48.png",
    "panda_72.png",
    "panda_96.png",
    "panda_144.png",
    "panda_192.png"
)

$missingFiles = @()
foreach ($file in $sourceFiles) {
    if (-not (Test-Path $file)) {
        $missingFiles += $file
    }
}

if ($missingFiles.Count -gt 0) {
    Write-Host "❌ 错误：缺少以下文件" -ForegroundColor Red
    foreach ($file in $missingFiles) {
        Write-Host "   - $file" -ForegroundColor Yellow
    }
    Write-Host ""
    Write-Host "请先使用画图工具生成这些文件，然后再运行此脚本。" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "查看详细步骤：图标设置详细步骤.md" -ForegroundColor Cyan
    pause
    exit 1
}

Write-Host "✅ 找到所有源文件" -ForegroundColor Green
Write-Host ""

# 开始复制
Write-Host "开始复制图标文件..." -ForegroundColor White
Write-Host ""

# mdpi (48×48)
Write-Host "[1/5] 复制 mdpi 图标 (48×48)..." -ForegroundColor Cyan
Copy-Item "panda_48.png" "app\src\main\res\mipmap-mdpi\ic_launcher.png" -Force
Copy-Item "panda_48.png" "app\src\main\res\mipmap-mdpi\ic_launcher_round.png" -Force
Write-Host "   ✅ ic_launcher.png" -ForegroundColor Green
Write-Host "   ✅ ic_launcher_round.png" -ForegroundColor Green

# hdpi (72×72)
Write-Host "[2/5] 复制 hdpi 图标 (72×72)..." -ForegroundColor Cyan
Copy-Item "panda_72.png" "app\src\main\res\mipmap-hdpi\ic_launcher.png" -Force
Copy-Item "panda_72.png" "app\src\main\res\mipmap-hdpi\ic_launcher_round.png" -Force
Write-Host "   ✅ ic_launcher.png" -ForegroundColor Green
Write-Host "   ✅ ic_launcher_round.png" -ForegroundColor Green

# xhdpi (96×96)
Write-Host "[3/5] 复制 xhdpi 图标 (96×96)..." -ForegroundColor Cyan
Copy-Item "panda_96.png" "app\src\main\res\mipmap-xhdpi\ic_launcher.png" -Force
Copy-Item "panda_96.png" "app\src\main\res\mipmap-xhdpi\ic_launcher_round.png" -Force
Write-Host "   ✅ ic_launcher.png" -ForegroundColor Green
Write-Host "   ✅ ic_launcher_round.png" -ForegroundColor Green

# xxhdpi (144×144)
Write-Host "[4/5] 复制 xxhdpi 图标 (144×144)..." -ForegroundColor Cyan
Copy-Item "panda_144.png" "app\src\main\res\mipmap-xxhdpi\ic_launcher.png" -Force
Copy-Item "panda_144.png" "app\src\main\res\mipmap-xxhdpi\ic_launcher_round.png" -Force
Write-Host "   ✅ ic_launcher.png" -ForegroundColor Green
Write-Host "   ✅ ic_launcher_round.png" -ForegroundColor Green

# xxxhdpi (192×192)
Write-Host "[5/5] 复制 xxxhdpi 图标 (192×192)..." -ForegroundColor Cyan
Copy-Item "panda_192.png" "app\src\main\res\mipmap-xxxhdpi\ic_launcher.png" -Force
Copy-Item "panda_192.png" "app\src\main\res\mipmap-xxxhdpi\ic_launcher_round.png" -Force
Write-Host "   ✅ ic_launcher.png" -ForegroundColor Green
Write-Host "   ✅ ic_launcher_round.png" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   🎉 图标复制完成！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "下一步：" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. 清理构建缓存：" -ForegroundColor White
Write-Host "   .\gradlew.bat clean" -ForegroundColor Yellow
Write-Host ""
Write-Host "2. 重新构建项目：" -ForegroundColor White
Write-Host "   .\gradlew.bat assembleDebug" -ForegroundColor Yellow
Write-Host ""
Write-Host "3. 安装到设备：" -ForegroundColor White
Write-Host "   .\install-apk.ps1" -ForegroundColor Yellow
Write-Host ""

Write-Host "完成后，在手机上查看应用图标！" -ForegroundColor Green
Write-Host ""

pause
