# Full App Analysis for PandaSU

$ErrorActionPreference = "Stop"

Write-Host "========== Full App Analysis ==========" -ForegroundColor Green

$workDir = "c:\Users\Administrator\WorkBuddy\20260321183732"
$adbPath = "$workDir\platform-tools\adb.exe"
Set-Location $workDir

# Get all apps
Write-Host "Loading all packages..." -ForegroundColor Cyan
$packagesOutput = & $adbPath shell "pm list packages" 2>&1
$packageNames = $packagesOutput | ForEach-Object {
    if ($_ -match '^package:(.+)$') {
        $matches[1].Trim()
    }
}

$totalApps = $packageNames.Count
Write-Host "Total apps: $totalApps"

# Analyze all apps
Write-Host "Analyzing all apps (this may take a few minutes)..." -ForegroundColor Cyan

$userApps = 0
$systemApps = 0
$unknownApps = 0
$userAppList = @()
$systemAppList = @()

$progress = 0
foreach ($pkg in $packageNames) {
    $progress++
    $percent = [math]::Round(($progress / $totalApps) * 100, 0)
    Write-Progress -Activity "Analyzing apps" -Status "Processing $pkg ($progress/$totalApps)" -PercentComplete $percent

    try {
        $pathOutput = & $adbPath shell "pm path $pkg" 2>&1
        if ($pathOutput -match '^package:(.+)$') {
            $pathInfo = $matches[1].Trim()

            if ($pathInfo -match '^/data/app/') {
                $userApps++
                $userAppList += $pkg
            } elseif ($pathInfo -match '^/system/|^/vendor/|^/product/|^/apex/') {
                $systemApps++
                $systemAppList += $pkg
            } else {
                $unknownApps++
            }
        } else {
            $unknownApps++
        }
    } catch {
        $unknownApps++
    }
}

Write-Progress -Activity "Analyzing apps" -Completed

# Save results
Write-Host "`n========== Analysis Results ==========" -ForegroundColor Green
Write-Host "Total apps: $totalApps"
Write-Host "User apps: $userApps" -ForegroundColor Green
Write-Host "System apps: $systemApps" -ForegroundColor Yellow
Write-Host "Unknown: $unknownApps" -ForegroundColor Gray

$userRatio = [math]::Round(($userApps / $totalApps) * 100, 2)
$systemRatio = [math]::Round(($systemApps / $totalApps) * 100, 2)
Write-Host "User app ratio: $userRatio%"
Write-Host "System app ratio: $systemRatio%"

# Save to files
$userAppList | Out-File -Encoding utf8 "user_apps_list.txt"
$systemAppList | Out-File -Encoding utf8 "system_apps_list.txt"

Write-Host "`nLists saved to:"
Write-Host "  - user_apps_list.txt"
Write-Host "  - system_apps_list.txt"

# Check key apps in user apps
Write-Host "`nKey apps in user apps list:" -ForegroundColor Cyan
$keyApps = @("com.tencent.mm", "com.tencent.mobileqq", "com.tencent.tmgp.sgame", "com.netease.dk")
foreach ($pkg in $keyApps) {
    if ($userAppList -contains $pkg) {
        Write-Host "  + $pkg" -ForegroundColor Green
    } else {
        Write-Host "  - $pkg (not found)" -ForegroundColor Red
    }
}

Write-Host "`n========== Analysis Complete ==========" -ForegroundColor Green
