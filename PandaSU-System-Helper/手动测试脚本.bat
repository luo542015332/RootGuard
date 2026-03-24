@echo off
echo ========================================
echo PandaSU System Helper - 手动测试脚本
echo 在不刷模块的情况下测试核心功能
echo ========================================
echo.

echo [步骤1] 创建配置目录...
adb shell "mkdir -p /data/adb/pandasu"
echo.

echo [步骤2] 写入测试配置...
adb shell "echo '# 测试配置' > /data/adb/pandasu/config"
adb shell "echo 'force_denylist=1' >> /data/adb/pandasu/config"
adb shell "echo 'sync_tricky=1' >> /data/adb/pandasu/config"
echo.

echo [步骤3] 测试强制DenyList...
adb shell "if [ -d /data/adb/zygisksu ]; then echo 1 > /data/adb/zygisksu/denylist_policy; echo '✓ DenyList policy=1'; fi"
adb shell "if [ -d /data/adb/zygisksu ]; then echo 2 > /data/adb/zygisksu/denylist_enforce; echo '✓ DenyList enforce=2'; fi"
echo.

echo [步骤4] 测试属性伪装...
adb shell "resetprop ro.boot.vbmeta.device_state locked && echo ✓ ro.boot.vbmeta.device_state=locked"
adb shell "resetprop ro.boot.verifiedbootstate green && echo ✓ ro.boot.verifiedbootstate=green"
adb shell "resetprop ro.debuggable 0 && echo ✓ ro.debuggable=0"
adb shell "resetprop ro.secure 1 && echo ✓ ro.secure=1"
echo.

echo [步骤5] 查看当前属性...
adb shell "echo '--- 当前属性值 ---' && getprop ro.boot.vbmeta.device_state && getprop ro.boot.verifiedbootstate && getprop ro.debuggable && getprop ro.secure"
echo.

echo [步骤6] 测试TrickyStore同步...
adb shell "if [ -d /data/adb/tricky_store ]; then echo 'com.test.app' > /data/adb/tricky_store/target.txt && echo ✓ TrickyStore白名单测试写入; fi"
echo.

echo [步骤7] 查看日志...
adb shell "cat /data/adb/pandasu/module.log 2>/dev/null || echo '暂无日志'"
echo.

echo ========================================
echo 测试完成！
echo 如果以上步骤都成功，说明模块功能安全
echo ========================================
echo.
echo 现在可以：
echo 1. 重启手机测试是否卡开机
echo 2. 查看PandaSU应用的环境评分是否提升
echo.
pause
