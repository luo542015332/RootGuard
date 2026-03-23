@echo off
chcp 65001 >nul
echo ========================================
echo 授予 PandaSU Root 权限
echo ========================================
echo.

echo 检查 KernelSU 管理器...
.\platform-tools\adb.exe shell "pm path me.weishu.kernelsu"
if errorlevel 1 (
    echo [错误] 未找到 KernelSU 管理器
    pause
    exit /b 1
)

echo.
echo 检查 PandaSU 是否已安装...
.\platform-tools\adb.exe shell "pm path com.rootguard.app"
if errorlevel 1 (
    echo [错误] 未找到 PandaSU 应用
    pause
    exit /b 1
)

echo.
echo ========================================
echo 方法1：通过 KernelSU 数据库授权（需要 Root）
echo ========================================
echo 正在检查 Root 权限...
.\platform-tools\adb.exe shell "su -c 'id'" 2>nul | findstr "uid=0" >nul
if errorlevel 1 (
    echo [警告] 设备没有 Root 权限或未授权 ADB
    echo 请先在 KernelSU 管理器中授予 Shell Root 权限
    echo.
    echo 或者使用方法2：手动授权
    goto manual_method
)

echo.
echo 正在查询 PandaSU UID...
for /f "tokens=*" %%i in ('.\platform-tools\adb.exe shell "dumpsys package com.rootguard.app | grep userId"') do set UID_LINE=%%i
echo %UID_LINE%

echo.
echo 正在查询 KernelSU 数据库...
.\platform-tools\adb.exe shell "su -c 'sqlite3 /data/adb/kernelsu.db \"SELECT * FROM profiles WHERE package_name=\\\"com.rootguard.app\\\"\"'"

echo.
echo ========================================
echo 方法2：手动授权步骤
echo ========================================
:manual_method
echo 请按照以下步骤手动授权：
echo.
echo 1. 在设备上打开 KernelSU 管理器
echo 2. 进入"超级用户"页面
echo 3. 找到 PandaSU（com.rootguard.app）
echo 4. 点击开关授予 Root 权限
echo 5. 重启 PandaSU 应用
echo.
echo ========================================
echo 验证权限
echo ========================================
echo.
echo 按任意键检查 PandaSU 是否有 Root 权限...
pause >nul

echo 正在检查...
.\platform-tools\adb.exe shell "su -c 'id'" 2>nul | findstr "uid=0" >nul
if errorlevel 1 (
    echo [失败] PandaSU 没有 Root 权限
    echo 请确保已在 KernelSU 管理器中授权
) else (
    echo [成功] PandaSU 已获得 Root 权限
    echo.
    echo 现在可以正常使用 PandaSU 了！
)

echo.
pause
