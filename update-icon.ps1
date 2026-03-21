# 应用图标自动更新脚本
# 用途：将原始图标缩放到所有需要的尺寸并替换到 mipmap 文件夹中

param(
    [Parameter(Mandatory=$false)]
    [string]$SourceIcon = "icon.png"
)

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   PandaSU 应用图标更新工具" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 检查源图标是否存在
if (-not (Test-Path $SourceIcon)) {
    Write-Host "❌ 错误：找不到源图标文件 '$SourceIcon'" -ForegroundColor Red
    Write-Host ""
    Write-Host "请先将你的熊猫图标保存为 'icon.png' 放到项目根目录" -ForegroundColor Yellow
    Write-Host "然后再次运行此脚本" -ForegroundColor Yellow
    Write-Host ""
    exit 1
}

Write-Host "✅ 找到源图标: $SourceIcon" -ForegroundColor Green
Write-Host ""

# 定义目标尺寸
$sizes = @{
    "mdpi" = 48
    "hdpi" = 72
    "xhdpi" = 96
    "xxhdpi" = 144
    "xxxhdpi" = 192
}

# 检查是否有 ImageMagick（用于图片缩放）
$hasImageMagick = $false
try {
    $null = Get-Command magick -ErrorAction Stop
    $hasImageMagick = $true
    Write-Host "✅ 检测到 ImageMagick" -ForegroundColor Green
} catch {
    Write-Host "⚠️  未检测到 ImageMagick" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "请先安装 ImageMagick:" -ForegroundColor Cyan
    Write-Host "1. 访问: https://imagemagick.org/script/download.php" -ForegroundColor White
    Write-Host "2. 下载 Windows 版本并安装" -ForegroundColor White
    Write-Host "3. 确保勾选 'Install legacy utilities (e.g. convert)'" -ForegroundColor White
    Write-Host ""
    exit 1
}

Write-Host ""

# 处理每个尺寸
foreach ($density in $sizes.Keys) {
    $size = $sizes[$density]
    $targetDir = "app\src\main\res\mipmap-$density"

    Write-Host "📦 处理 $density (${size}x${size})..." -ForegroundColor White

    # 确保目标目录存在
    if (-not (Test-Path $targetDir)) {
        New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
    }

    # 缩放并复制标准图标
    $targetFile = Join-Path $targetDir "ic_launcher.png"
    magick convert $SourceIcon -resize ${size}x${size} -background transparent -gravity center -extent ${size}x${size} $targetFile

    # 缩放并复制圆形图标（应用圆形遮罩）
    $targetRoundFile = Join-Path $targetDir "ic_launcher_round.png"
    magick convert $SourceIcon -resize ${size}x${size} \( +clone -threshold 0 -negate -fill white -colorize 100 -fill black -draw "circle $size/2,$size/2 $size/2,0" \) -alpha off -compose copy-opacity -composite $targetRoundFile

    Write-Host "   ✅ 已生成: $targetFile" -ForegroundColor Green
    Write-Host "   ✅ 已生成: $targetRoundFile" -ForegroundColor Green
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   🎉 图标更新完成！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "下一步:" -ForegroundColor Cyan
Write-Host "1. 在 Android Studio 中刷新项目" -ForegroundColor White
Write-Host "2. 运行: .\gradlew.bat clean" -ForegroundColor White
Write-Host "3. 重新构建项目" -ForegroundColor White
Write-Host ""
