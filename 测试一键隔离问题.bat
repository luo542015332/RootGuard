@echo off
echo 测试 PandaSU 一键隔离逻辑问题
echo.

echo 1. 检查设备连接状态
adb devices

echo.
echo 2. 查看应用的权限状态
adb shell pm dump com.rootguard.app | grep -E "userId|permission|granted"

echo.
echo 3. 检查 /data/adb/modules/ 目录下的模块
adb shell "ls -la /data/adb/modules/ 2>/dev/null || echo '无法访问 /data/adb/modules/'"

echo.
echo 4. 测试 su 权限
adb shell "su -c id && echo '有 Root 权限' || echo '无 Root 权限'"

echo.
echo 5. 测试 pm list packages 命令
adb shell "pm list packages | head -20"

echo.
echo 6. 查看 PandaSU 日志中的错误信息
echo 请打开 PandaSU 应用，点击一键隔离，然后查看日志页面中的错误信息