# 熊猫图标替换脚本（简化版）

## 使用 Windows 系统工具处理图标

这个脚本不需要 ImageMagick，使用 Windows 自带的 PowerShell 功能。

## 使用方法

```powershell
# 1. 确保图标文件在项目根目录，命名为 panda.png
# 2. 以管理员身份运行 PowerShell
# 3. 运行此脚本
.\replace-icon-simple.ps1
```

---

## 完整脚本（复制保存为 replace-icon-simple.ps1）

```powershell
# 熊猫图标替换脚本 - 简化版
# 不需要 ImageMagick，使用 .NET 处理图片

param(
    [string]$SourceIcon = "panda.png"
)

# 颜色定义
$themeColor = [System.Drawing.Color]::FromArgb(255, 98, 0)  # #FF6200 橙色

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  熊猫图标替换工具" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 检查源图标
if (-not (Test-Path $SourceIcon)) {
    Write-Host "[✗] 错误：找不到图标文件: $SourceIcon" -ForegroundColor Red
    Write-Host "" -ForegroundColor Red
    Write-Host "请将熊猫图标文件重命名为 panda.png" -ForegroundColor Yellow
    Write-Host "并放置在项目根目录" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "当前目录: $(Get-Location)" -ForegroundColor Gray
    pause
    exit 1
}

Write-Host "[✓] 找到图标文件: $SourceIcon" -ForegroundColor Green
Write-Host ""

# 加载 .NET 图像处理
Add-Type -AssemblyName System.Drawing

# 定义需要的尺寸
$sizes = @{
    "mdpi" = 36
    "hdpi" = 48
    "xhdpi" = 72
    "xxhdpi" = 96
    "xxxhdpi" = 144
    "play" = 512
}

Write-Host "开始处理图标..." -ForegroundColor Cyan
Write-Host ""

# 处理每个尺寸
foreach ($density in $sizes.Keys) {
    $size = $sizes[$density]
    
    Write-Host "处理 $density ($size x $size)..." -ForegroundColor Yellow
    
    try {
        # 加载原始图片
        $sourceImage = [System.Drawing.Image]::FromFile((Resolve-Path $SourceIcon))
        
        # 创建新尺寸的位图
        $destImage = New-Object System.Drawing.Bitmap($size, $size)
        $graphics = [System.Drawing.Graphics]::FromImage($destImage)
        
        # 设置高质量缩放
        $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
        
        # 绘制缩放后的图片
        $graphics.DrawImage($sourceImage, 0, 0, $size, $size)
        
        # 保存文件
        $outputPath = "app\src\main\res\mipmap-$density"
        if (-not (Test-Path $outputPath)) {
            New-Item -ItemType Directory -Path $outputPath -Force | Out-Null
        }
        
        $destImage.Save("$outputPath\ic_launcher.png", [System.Drawing.Imaging.ImageFormat]::Png)
        $destImage.Save("$outputPath\ic_launcher_round.png", [System.Drawing.Imaging.ImageFormat]::Png)
        
        # 清理
        $graphics.Dispose()
        $destImage.Dispose()
        $sourceImage.Dispose()
        
        Write-Host "  ✓ 完成" -ForegroundColor Green
    }
    catch {
        Write-Host "  ✗ 失败: $_" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "[✓] 图标处理完成！" -ForegroundColor Green
Write-Host ""

# 删除旧的 XML 配置文件
Write-Host "更新图标配置文件..." -ForegroundColor Cyan
Write-Host ""

$xmlFiles = @(
    "app\src\main\res\mipmap-mdpi\ic_launcher.xml",
    "app\src\main\res\mipmap-mdpi\ic_launcher_round.xml",
    "app\src\main\res\mipmap-hdpi\ic_launcher.xml",
    "app\src\main\res\mipmap-hdpi\ic_launcher_round.xml",
    "app\src\main\res\mipmap-xhdpi\ic_launcher.xml",
    "app\src\main\res\mipmap-xhdpi\ic_launcher_round.xml",
    "app\src\main\res\mipmap-xxhdpi\ic_launcher.xml",
    "app\src\main\res\mipmap-xxhdpi\ic_launcher_round.xml",
    "app\src\main\res\mipmap-xxxhdpi\ic_launcher.xml",
    "app\src\main\res\mipmap-xxxhdpi\ic_launcher_round.xml",
    "app\src\main\res\mipmap-anydpi-v26\ic_launcher.xml",
    "app\src\main\res\mipmap-anydpi-v26\ic_launcher_round.xml"
)

$deletedCount = 0
foreach ($file in $xmlFiles) {
    if (Test-Path $file) {
        Remove-Item $file -Force
        $deletedCount++
        Write-Host "  删除: $file" -ForegroundColor Gray
    }
}

Write-Host ""
Write-Host "[✓] 已删除 $deletedCount 个 XML 配置文件" -ForegroundColor Green
Write-Host ""
Write-Host "Android 将自动使用 PNG 图标文件" -ForegroundColor Yellow
Write-Host ""

# Git 操作提示
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  下一步操作" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. 检查更改:" -ForegroundColor Yellow
Write-Host "   git status" -ForegroundColor Gray
Write-Host ""
Write-Host "2. 提交更改:" -ForegroundColor Yellow
Write-Host "   git add -A" -ForegroundColor Gray
Write-Host "   git commit -m 'feat: 更新应用图标为可爱熊猫'" -ForegroundColor Gray
Write-Host ""
Write-Host "3. 推送到 GitHub:" -ForegroundColor Yellow
Write-Host "   git push" -ForegroundColor Gray
Write-Host ""
Write-Host "4. GitHub Actions 会自动构建新的 APK" -ForegroundColor Yellow
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

pause
```

---

## 注意事项

1. **需要 .NET Framework**：Windows 系统通常已预装
2. **图标文件要求**：
   - 必须是 PNG 格式
   - 必须是正方形
   - 建议至少 512x512 像素
   - 透明背景为佳

3. **如果提示错误**：
   - 确保以管理员身份运行 PowerShell
   - 检查图标文件是否在正确位置
   - 确保文件名为 panda.png

---

## 备用方案：使用在线工具

如果脚本运行有问题，可以使用在线工具：

1. 访问 https://appicon.co/
2. 上传 panda.png
3. 选择 Android
4. 下载后手动复制到 mipmap 文件夹
5. 删除所有 XML 配置文件
