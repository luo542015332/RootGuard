Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   AppList Test Build" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

Set-Location "c:\Users\Administrator\WorkBuddy\20260321183732\AppListTest"

Write-Host "Building..." -ForegroundColor Yellow
Write-Host ""

# 先复制 gradlew 和 gradle 文件夹
if (!(Test-Path "gradlew.bat")) {
    Copy-Item "..\gradlew.bat" "."
    Copy-Item "..\gradle" ".\gradle" -Recurse
    Copy-Item "..\gradle.properties" "."
    Copy-Item "..\local.properties" "."
}

# 在 AppListTest 目录执行
& .\gradlew.bat assembleDebug

Write-Host ""

if ($LASTEXITCODE -eq 0) {
    Write-Host "[OK] Build successful!" -ForegroundColor Green
    Write-Host ""

    $apkPath = "app\build\outputs\apk\debug\app-debug.apk"
    if (Test-Path $apkPath) {
        $size = (Get-Item $apkPath).Length / 1MB
        Write-Host "APK: $apkPath" -ForegroundColor Cyan
        Write-Host "Size: $([math]::Round($size, 2)) MB" -ForegroundColor Cyan

        Copy-Item $apkPath "$env:USERPROFILE\Desktop\AppListTest.apk" -Force
        Write-Host "Copied to Desktop: AppListTest.apk" -ForegroundColor Green
    }
} else {
    Write-Host "[ERROR] Build failed" -ForegroundColor Red
}

Write-Host ""
