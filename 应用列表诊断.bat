@echo off
REM ========================================
REM PandaSU 应用列表诊断脚本
REM ========================================

echo ========================================
echo   PandaSU 应用列表诊断工具
echo ========================================
echo.

echo [1/5] 检查 PandaSU 版本...
adb shell dumpsys package com.rootguard.app | findstr "versionName\|versionCode"
echo.

echo [2/5] 检查 /data/app/ 下的应用数量（实际用户应用）...
for /f %%a in ('adb shell ls -d /data/app/* 2^>nul ^| find /c /v ""') do set data_app_count=%%a
echo /data/app/ 目录下的应用数量: %data_app_count%
echo.

echo [3/5] 检查关键应用是否安装...
echo 微信:
adb shell pm list packages | findstr "com.tencent.mm"
echo.
echo QQ:
adb shell pm list packages | findstr "com.tencent.mobileqq"
echo.
echo 英雄联盟手游:
adb shell pm list packages | findstr "com.tencent.lolm"
echo.

echo [4/5] 检查 PackageManager 返回的应用数量...
for /f %%a in ('adb shell pm list packages 2^>nul ^| find /c /v ""') do set pm_count=%%a
echo PackageManager 返回的应用数量: %pm_count%
echo.

echo [5/5] 获取最新的 PandaSU Debug 日志（最近20行）...
adb logcat -d *:D | findstr "PandaSU" | Select-Object -Last 20
echo.

echo ========================================
echo   诊断完成
echo ========================================
echo.
echo 请提供以下信息:
echo 1. PandaSU 版本号
echo 2. /data/app/ 目录下的应用数量
echo 3. 微信、QQ、英雄联盟手游是否安装
echo 4. 最新日志内容（如果有）
echo.

pause
