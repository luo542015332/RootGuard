# Process Panda Icon
Add-Type -AssemblyName System.Drawing

Write-Host "Processing panda icon..." -ForegroundColor Cyan

$sizes = @{
    "mdpi" = 36
    "hdpi" = 48
    "xhdpi" = 72
    "xxhdpi" = 96
    "xxxhdpi" = 144
}

foreach ($density in $sizes.Keys) {
    $size = $sizes[$density]
    Write-Host "Processing $density ($size x $size)..." -ForegroundColor Yellow
    
    $sourceImage = [System.Drawing.Image]::FromFile((Resolve-Path "panda.png"))
    $destImage = New-Object System.Drawing.Bitmap($size, $size)
    $graphics = [System.Drawing.Graphics]::FromImage($destImage)
    
    $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $graphics.DrawImage($sourceImage, 0, 0, $size, $size)
    
    $outputPath = "app\src\main\res\mipmap-$density"
    if (-not (Test-Path $outputPath)) {
        New-Item -ItemType Directory -Path $outputPath -Force | Out-Null
    }
    
    $destImage.Save("$outputPath\ic_launcher.png", [System.Drawing.Imaging.ImageFormat]::Png)
    $destImage.Save("$outputPath\ic_launcher_round.png", [System.Drawing.Imaging.ImageFormat]::Png)
    
    $graphics.Dispose()
    $destImage.Dispose()
    $sourceImage.Dispose()
    
    Write-Host "  Done" -ForegroundColor Green
}

Write-Host ""
Write-Host "Removing old XML files..." -ForegroundColor Cyan

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

$deleted = 0
foreach ($file in $xmlFiles) {
    if (Test-Path $file) {
        Remove-Item $file -Force
        $deleted++
    }
}

Write-Host "Removed $deleted XML files" -ForegroundColor Green
Write-Host ""
Write-Host "Icon replacement complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  git add -A" -ForegroundColor Gray
Write-Host "  git commit -m 'feat: update app icon to cute panda'" -ForegroundColor Gray
Write-Host "  git push" -ForegroundColor Gray
