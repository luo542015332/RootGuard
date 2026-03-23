# Test PandaSU Loading Logic

$ErrorActionPreference = "Stop"

Write-Host "========== Testing PandaSU Loading Logic ==========" -ForegroundColor Green

$workDir = "c:\Users\Administrator\WorkBuddy\20260321183732"
$adbPath = "$workDir\platform-tools\adb.exe"
Set-Location $workDir

# Step 1: Get all installed apps
Write-Host "`nStep 1: Get all installed apps" -ForegroundColor Cyan
$packagesOutput = & $adbPath shell "pm list packages" 2>&1
$packagesOutput | Out-File -Encoding utf8 "packages_list.txt"

$packageNames = $packagesOutput | ForEach-Object {
    if ($_ -match '^package:(.+)$') {
        $matches[1].Trim()
    }
}
$packageNames | Out-File -Encoding utf8 "package_names.txt"

$totalApps = $packageNames.Count
Write-Host "Total apps: $totalApps"

# Step 2: Check key apps
Write-Host "`nStep 2: Check key apps" -ForegroundColor Cyan
$keyApps = @("com.tencent.mm", "com.tencent.mobileqq", "com.tencent.tmgp.sgame", "com.netease.dk")

foreach ($pkg in $keyApps) {
    if ($packageNames -contains $pkg) {
        Write-Host "Found: $pkg" -ForegroundColor Green
        $pathOutput = & $adbPath shell "pm path $pkg" 2>&1
        if ($pathOutput -match '^package:(.+)$') {
            $pathInfo = $matches[1].Trim()
            Write-Host "  Path: $pathInfo"
            if ($pathInfo -match '^/data/app/') {
                Write-Host "  Type: User App OK" -ForegroundColor Green
            } else {
                Write-Host "  Type: System App" -ForegroundColor Yellow
            }
        }
    } else {
        Write-Host "Not found: $pkg" -ForegroundColor Red
    }
}

# Step 3: Count user and system apps (sample - first 50 apps)
Write-Host "`nStep 3: Sample app type analysis (first 50 apps)" -ForegroundColor Cyan
$userApps = 0
$systemApps = 0
$unknownApps = 0

$sampleApps = $packageNames | Select-Object -First 50
foreach ($pkg in $sampleApps) {
    try {
        $pathOutput = & $adbPath shell "pm path $pkg" 2>&1
        if ($pathOutput -match '^package:(.+)$') {
            $pathInfo = $matches[1].Trim()
            if ($pathInfo -match '^/data/app/') {
                $userApps++
            } elseif ($pathInfo -match '^/system/|^/vendor/|^/product/|^/apex/') {
                $systemApps++
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

Write-Host "User apps (sample): $userApps" -ForegroundColor Green
Write-Host "System apps (sample): $systemApps" -ForegroundColor Yellow
Write-Host "Unknown (sample): $unknownApps" -ForegroundColor Gray

# Estimate total
$totalSample = $userApps + $systemApps + $unknownApps
if ($totalSample -gt 0) {
    $userRatio = [math]::Round(($userApps / $totalSample) * 100, 2)
    $estimatedUserApps = [math]::Round($totalApps * ($userApps / $totalSample), 0)
    Write-Host "Estimated total user apps: $estimatedUserApps"
    Write-Host "User app ratio: $userRatio%"
}

# Step 4: Detect Root type
Write-Host "`nStep 4: Detect Root type" -ForegroundColor Cyan

$kernelSUPath = & $adbPath shell "pm path me.weishu.kernelsu" 2>&1
if ($kernelSUPath -match '^package:') {
    Write-Host "Found Weishu KernelSU" -ForegroundColor Green
} else {
    Write-Host "KernelSU not found" -ForegroundColor Red
}

$magiskCheck = & $adbPath shell "test -d /data/adb/magisk && echo exists" 2>&1
if ($magiskCheck -match 'exists') {
    Write-Host "Found Magisk" -ForegroundColor Green
} else {
    Write-Host "Magisk not found" -ForegroundColor Red
}

# Summary
Write-Host "`n========== Test Summary ==========" -ForegroundColor Green
Write-Host "Total apps: $totalApps"
Write-Host "Sample size: $totalSample"
Write-Host "User apps (sample): $userApps"
Write-Host "System apps (sample): $systemApps"
Write-Host "User app ratio: $userRatio%"
Write-Host "Estimated total user apps: $estimatedUserApps"

Write-Host "`n========== Test Complete ==========" -ForegroundColor Green
