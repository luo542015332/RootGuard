# 快速下载可爱的熊猫图标并替换到项目

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  下载可爱熊猫图标" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 尝试从免费图标源下载
$iconUrls = @(
    # 免费可商用熊猫图标
    "https://cdn-icons-png.flaticon.com/512/616/616408.png",  # 可爱熊猫头
    "https://cdn-icons-png.flaticon.com/512/3069/3069173.png", # 圆脸熊猫
    "https://cdn-icons-png.flaticon.com/512/3379/3379019.png", # 简约熊猫
    "https://cdn-icons-png.flaticon.com/512/4755/4755866.png"  # 卡通熊猫
)

$downloaded = $false

Write-Host "正在搜索可爱的熊猫图标..." -ForegroundColor Yellow
Write-Host ""

foreach ($url in $iconUrls) {
    try {
        Write-Host "尝试下载: $url" -ForegroundColor Gray

        # 使用 WebClient 下载
        $wc = New-Object System.Net.WebClient
        $wc.DownloadFile($url, "panda.png")

        if (Test-Path "panda.png") {
            $fileInfo = Get-Item "panda.png"
            if ($fileInfo.Length -gt 0) {
                Write-Host "[✓] 下载成功！" -ForegroundColor Green
                Write-Host "  文件大小: $($fileInfo.Length) 字节" -ForegroundColor Gray
                $downloaded = $true
                break
            }
        }
    }
    catch {
        Write-Host "  ✗ 失败: $_" -ForegroundColor Red
    }
}

if (-not $downloaded) {
    Write-Host ""
    Write-Host "[✗] 自动下载失败" -ForegroundColor Red
    Write-Host ""
    Write-Host "请手动下载图标:" -ForegroundColor Yellow
    Write-Host "1. 访问: https://www.flaticon.com/search?word=panda" -ForegroundColor Gray
    Write-Host "2. 选择一个喜欢的熊猫图标" -ForegroundColor Gray
    Write-Host "3. 下载 PNG 格式" -ForegroundColor Gray
    Write-Host "4. 保存为: panda.png" -ForegroundColor Gray
    Write-Host "5. 放到项目根目录" -ForegroundColor Gray
    Write-Host ""
    Write-Host "然后运行: .\replace-icon-simple.ps1" -ForegroundColor Yellow
    pause
    exit 1
}

Write-Host ""
Write-Host "[✓] 图标下载完成！" -ForegroundColor Green
Write-Host ""
Write-Host "下一步: 运行图标替换脚本" -ForegroundColor Yellow
Write-Host "命令: .\replace-icon-simple.ps1" -ForegroundColor Gray
Write-Host ""

pause
