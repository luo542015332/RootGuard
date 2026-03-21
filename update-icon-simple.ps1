# 简化版图标处理脚本（不需要 ImageMagick）
# 此脚本会引导你使用在线工具来生成图标

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   PandaSU 图标处理向导" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "⚠️  检测到未安装 ImageMagick" -ForegroundColor Yellow
Write-Host ""
Write-Host "没关系！我们可以使用在线工具来完成。" -ForegroundColor Green
Write-Host ""

# 检查是否有源图标
$sourceIcon = "icon.png"
if (Test-Path $sourceIcon) {
    Write-Host "✅ 找到源图标: $sourceIcon" -ForegroundColor Green
    Write-Host ""
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   使用在线工具（推荐）" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "🌐 访问以下在线工具之一：" -ForegroundColor White
Write-Host ""
Write-Host "1. AppIcon.co（最简单）：" -ForegroundColor Cyan
Write-Host "   https://www.appicon.co/" -ForegroundColor Yellow
Write-Host ""
Write-Host "2. Android Asset Studio：" -ForegroundColor Cyan
Write-Host "   https://romannurik.github.io/AndroidAssetStudio/icons-launcher.html" -ForegroundColor Yellow
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   操作步骤" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "步骤 1：" -ForegroundColor White
Write-Host "  准备你的熊猫图标" -ForegroundColor Green
Write-Host "  - 建议尺寸：512×512 或更大" -ForegroundColor Gray
Write-Host "  - 格式：PNG（推荐，支持透明背景）" -ForegroundColor Gray
Write-Host "  - 文件名：icon.png" -ForegroundColor Gray
Write-Host ""

Write-Host "步骤 2：" -ForegroundColor White
Write-Host "  打开在线工具" -ForegroundColor Green
Write-Host "  - 上传你的图标文件" -ForegroundColor Gray
Write-Host "  - 等待生成所有尺寸" -ForegroundColor Gray
Write-Host ""

Write-Host "步骤 3：" -ForegroundColor White
Write-Host "  下载生成的图标包" -ForegroundColor Green
Write-Host "  - 通常是一个 ZIP 文件" -ForegroundColor Gray
Write-Host "  - 包含所有需要的尺寸" -ForegroundColor Gray
Write-Host ""

Write-Host "步骤 4：" -ForegroundColor White
Write-Host "  解压并复制到项目" -ForegroundColor Green
Write-Host "  - 解压 ZIP 文件" -ForegroundColor Gray
Write-Host "  - 将图标文件复制到：" -ForegroundColor Gray
Write-Host "    app/src/main/res/mipmap-*/" -ForegroundColor Yellow
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   验证安装" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "完成后运行以下命令：" -ForegroundColor White
Write-Host ""
Write-Host "1. 清理构建缓存：" -ForegroundColor Cyan
Write-Host "   .\gradlew.bat clean" -ForegroundColor Yellow
Write-Host ""
Write-Host "2. 重新构建：" -ForegroundColor Cyan
Write-Host "   .\gradlew.bat assembleDebug" -ForegroundColor Yellow
Write-Host ""
Write-Host "3. 安装到设备：" -ForegroundColor Cyan
Write-Host "   .\install-apk.ps1" -ForegroundColor Yellow
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   图标尺寸对照表" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "文件夹名称          分辨率" -ForegroundColor White
Write-Host "─────────────────────────────────" -ForegroundColor Gray
Write-Host "mipmap-mdpi/        48×48" -ForegroundColor Cyan
Write-Host "mipmap-hdpi/        72×72" -ForegroundColor Cyan
Write-Host "mipmap-xhdpi/       96×96" -ForegroundColor Cyan
Write-Host "mipmap-xxhdpi/     144×144" -ForegroundColor Cyan
Write-Host "mipmap-xxxhdpi/    192×192" -ForegroundColor Cyan
Write-Host ""

Write-Host "每个文件夹需要两个文件：" -ForegroundColor White
Write-Host "  - ic_launcher.png (标准图标)" -ForegroundColor Gray
Write-Host "  - ic_launcher_round.png (圆形图标)" -ForegroundColor Gray
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   需要帮助？" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "查看详细文档：" -ForegroundColor White
Write-Host "  图标更新指南.md" -ForegroundColor Yellow
Write-Host ""

Write-Host "或者运行安装指南：" -ForegroundColor White
Write-Host "  .\install-imagemagick.bat" -ForegroundColor Yellow
Write-Host ""

Write-Host ""
Write-Host "按任意键打开在线工具..." -ForegroundColor Green
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# 尝试打开浏览器
Start-Process "https://www.appicon.co/"

Write-Host ""
Write-Host "✅ 已在浏览器中打开在线工具！" -ForegroundColor Green
Write-Host ""
