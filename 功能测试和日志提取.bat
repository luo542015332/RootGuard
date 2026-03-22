@echo off
chcp 65001 > nul
echo ========================================
echo PandaSU 功能测试和日志提取工具
echo ========================================
echo.

cd /d "%~dp0"

echo [1/5] 检查设备连接...
platform-tools\adb.exe devices
echo.

echo [2/5] 提取 PandaSU 日志...
platform-tools\adb.exe logcat -d -v time | findstr /i "PandaSU RootGuard rootguard" > logs\pandasu_test_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt
echo 日志已保存到 logs 目录
echo.

echo [3/5] 提取应用列表日志...
platform-tools\adb.exe logcat -d -v time | findstr /i "Apps loaded PackageManager Added.*apps" >> logs\pandasu_test_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt
echo.

echo [4/5] 提取模块安装日志...
platform-tools\adb.exe logcat -d -v time | findstr /i "installModule InstallModule Detected root type" >> logs\pandasu_test_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt
echo.

echo [5/5] 提取隔离功能日志...
platform-tools\adb.exe logcat -d -v time | findstr /i "Isolation RootHider 隔离" >> logs\pandasu_test_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt
echo.

echo ========================================
echo 测试指南
echo ========================================
echo.
echo 请在设备上完成以下测试:
echo.
echo 1. 应用列表测试:
echo    - 打开应用列表页面
echo    - 查看统计卡片,确认显示"用户 36, 系统 265"
echo    - 点击筛选按钮,切换"全部应用"、"用户应用"、"系统应用"
echo    - 测试搜索功能
echo.
echo 2. 隔离功能测试:
echo    - 打开隔离设置页面
echo    - 查看已隔离应用列表
echo    - 从应用列表选择一个应用,配置隔离设置
echo    - 保存并验证
echo.
echo 3. 模块安装测试:
echo    - 准备一个 Magisk/KernelSU 模块 zip 文件
echo    - 打开模块管理页面
echo    - 点击"安装模块"按钮
echo    - 选择模块文件
echo    - 观察安装过程和结果
echo.
echo 测试完成后,按任意键提取新的日志...
pause > nul

echo.
echo 提取新的测试日志...
platform-tools\adb.exe logcat -d -v time > logs\pandasu_after_test_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt
echo 日志已保存: logs\pandasu_after_test_*.txt
echo.

echo 完成!请检查 logs 目录中的日志文件
pause
