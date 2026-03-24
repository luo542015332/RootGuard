@echo off
echo ========================================
echo PandaSU System Helper - 卸载脚本
echo 用于卸载模块和清理残留
echo ========================================
echo.

echo [步骤1] 停止模块服务...
adb shell "pkill -f service.sh 2>/dev/null && echo ✓ 已停止服务"
echo.

echo [步骤2] 移除模块文件...
adb shell "rm -rf /data/adb/modules/PandaSU-System-Helper && echo ✓ 已移除模块目录"
adb shell "rm -rf /data/adb/pandasu && echo ✓ 已移除配置目录"
echo.

echo [步骤3] 恢复系统属性（可选）...
echo 注意：属性一旦设置，重启前无法恢复
echo.

echo [步骤4] 移除DenyList配置...
adb shell "rm -f /data/adb/zygisksu/denylist_policy 2>/dev/null && echo ✓ 已移除denylist_policy"
adb shell "rm -f /data/adb/zygisksu/denylist_enforce 2>/dev/null && echo ✓ 已移除denylist_enforce"
echo.

echo ========================================
echo 卸载完成！
echo 建议重启手机以完全清理
echo ========================================
echo.
pause
