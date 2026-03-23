# 测试 PandaSU 超级用户列表加载逻辑

$ErrorActionPreference = "Stop"

Write-Host "========== 开始测试 PandaSU 加载逻辑 ==========" -ForegroundColor Green

# 设置工作目录
$workDir = "c:\Users\Administrator\WorkBuddy\20260321183732"
$adbPath = "$workDir\platform-tools\adb.exe"
Set-Location $workDir

# 步骤 1: 获取所有已安装应用
Write-Host "`n步骤 1: 获取所有已安装应用" -ForegroundColor Cyan
$packagesOutput = & $adbPath shell "pm list packages" 2>&1
$packagesOutput | Out-File -Encoding utf8 "packages_list.txt"

# 提取包名
$packageNames = $packagesOutput | ForEach-Object {
    if ($_ -match '^package:(.+)$') {
        $matches[1].Trim()
    }
}
$packageNames | Out-File -Encoding utf8 "package_names.txt"

$totalApps = $packageNames.Count
Write-Host "总应用数: $totalApps"

# 步骤 2: 检查关键应用是否在列表中
Write-Host "`n步骤 2: 检查关键应用" -ForegroundColor Cyan
$keyApps = @("com.tencent.mm", "com.tencent.mobileqq", "com.tencent.tmgp.sgame", "com.netease.dk")

foreach ($pkg in $keyApps) {
    if ($packageNames -contains $pkg) {
        Write-Host "✓ 找到: $pkg" -ForegroundColor Green

        # 获取应用路径
        $pathOutput = & $adbPath shell "pm path $pkg" 2>&1
        $pathInfo = ($pathOutput | Select-String '^package:(.+)$').Matches[0].Groups[1].Value.Trim()
        Write-Host "  路径: $pathInfo"

        # 判断是否为用户应用
        if ($pathInfo -match '^/data/app/') {
            Write-Host "  类型: 用户应用 ✓" -ForegroundColor Green
        } else {
            Write-Host "  类型: 系统应用" -ForegroundColor Yellow
        }
    } else {
        Write-Host "✗ 未找到: $pkg" -ForegroundColor Red
    }
}

# 步骤 3: 统计用户应用和系统应用
Write-Host "`n步骤 3: 统计应用类型（这可能需要几分钟...）" -ForegroundColor Cyan
$userApps = 0
$systemApps = 0
$unknownApps = 0

$progress = 0
foreach ($pkg in $packageNames) {
    $progress++
    Write-Progress -Activity "分析应用类型" -Status "正在处理: $pkg ($progress/$totalApps)" -PercentComplete (($progress / $totalApps) * 100)

    try {
        # 获取应用路径
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

Write-Progress -Activity "分析应用类型" -Completed

Write-Host "用户应用: $userApps" -ForegroundColor Green
Write-Host "系统应用: $systemApps" -ForegroundColor Yellow
Write-Host "未知类型: $unknownApps" -ForegroundColor Gray

# 步骤 4: 检测 Root 类型
Write-Host "`n步骤 4: 检测 Root 类型" -ForegroundColor Cyan

# 检查 KernelSU 是否安装
$kernelSUPath = & $adbPath shell "pm path me.weishu.kernelsu" 2>&1
if ($kernelSUPath -match '^package:') {
    Write-Host "✓ 检测到 Weishu KernelSU" -ForegroundColor Green

    # 检查数据库是否存在（需要 Root 权限）
    $dbCheck = & $adbPath shell "su -c 'test -f /data/data/me.weishu.kernelsu/databases/app.db && echo exists'" 2>&1
    if ($dbCheck -match 'exists') {
        Write-Host "✓ KernelSU 数据库存在" -ForegroundColor Green

        # 查询数据库表
        Write-Host "`n步骤 5: 查询 KernelSU 授权策略" -ForegroundColor Cyan
        $tables = & $adbPath shell "su -c 'sqlite3 /data/data/me.weishu.kernelsu/databases/app.db .tables'" 2>&1
        Write-Host "数据库表: $tables"

        # 尝试查询策略
        $policies = & $adbPath shell "su -c 'sqlite3 /data/data/me.weishu.kernelsu/databases/app.db SELECT * FROM rules LIMIT 5'" 2>&1
        $policies | Out-File -Encoding utf8 "ksud_policies.txt"

        if ((Get-Content "ksud_policies.txt" -ErrorAction SilentlyContinue).Count -gt 0) {
            $policyCount = (Get-Content "ksud_policies.txt").Count
            Write-Host "找到 $policyCount 条授权策略（显示前5条）"
        }
    } else {
        Write-Host "✗ KernelSU 数据库不存在或无访问权限" -ForegroundColor Yellow
    }
} else {
    Write-Host "✗ 未检测到 KernelSU" -ForegroundColor Red
}

# 检查 Magisk
$magiskCheck = & $adbPath shell "test -d /data/adb/magisk && echo exists" 2>&1
if ($magiskCheck -match 'exists') {
    Write-Host "✓ 检测到 Magisk" -ForegroundColor Green

    $magiskDbCheck = & $adbPath shell "test -f /data/adb/magisk.db && echo exists" 2>&1
    if ($magiskDbCheck -match 'exists') {
        Write-Host "✓ Magisk 数据库存在" -ForegroundColor Green
    }
} else {
    Write-Host "✗ 未检测到 Magisk" -ForegroundColor Red
}

# 步骤 6: 总结
Write-Host "`n========== 测试结果总结 ==========" -ForegroundColor Green
Write-Host "总应用数: $totalApps"
Write-Host "用户应用: $userApps"
Write-Host "系统应用: $systemApps"
Write-Host "未知类型: $unknownApps"

if ($totalApps -gt 0) {
    $coverage = [math]::Round(($userApps / $totalApps) * 100, 2)
    Write-Host "用户应用覆盖率: $coverage%"
}

# 检查关键应用是否都被识别为用户应用
Write-Host "`n关键应用类型验证:" -ForegroundColor Cyan
foreach ($pkg in $keyApps) {
    if ($packageNames -contains $pkg) {
        $pathOutput = & $adbPath shell "pm path $pkg" 2>&1
        if ($pathOutput -match '^package:(.+)$') {
            $pathInfo = $matches[1].Trim()
            if ($pathInfo -match '^/data/app/') {
                Write-Host "  ✓ $pkg - 用户应用" -ForegroundColor Green
            } else {
                Write-Host "  ✗ $pkg - 不是用户应用 (路径: $pathInfo)" -ForegroundColor Red
            }
        }
    }
}

Write-Host "`n========== 测试完成 ==========" -ForegroundColor Green
