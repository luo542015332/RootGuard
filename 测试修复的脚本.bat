@echo off
REM ========================================
REM PandaSU 修复测试脚本
REM 测试修复后的功能
REM ========================================

echo.
echo ========================================
echo   PandaSU 修复测试
echo ========================================
echo.

echo [1] 测试 SQLite3 可用性检查...
echo --------------------------------------------------
adb shell "su -c 'which sqlite3 2>/dev/null || echo \"sqlite3 not found\"'"
echo.

echo [2] 测试 Magisk 命令可用性...
echo --------------------------------------------------
adb shell "su -c 'which magisk 2>/dev/null || echo \"magisk command not found\"'"
echo.

echo [3] 测试 mount 命令可用性...
echo --------------------------------------------------
adb shell "su -c 'which mount 2>/dev/null || echo \"mount command not found\"'"
echo.

echo [4] 测试当前 Root 环境检测...
echo --------------------------------------------------
adb shell "su -c 'echo \"Checking KernelSU...\"; ls /data/adb/kernelsu.db 2>/dev/null || ls /data/data/me.weishu.kernelsu/databases/app.db 2>/dev/null || echo \"KernelSU not detected\"; echo \"Checking Magisk...\"; ls /data/adb/magisk.db 2>/dev/null || echo \"Magisk not detected\"; echo \"Checking su binary...\"; ls /system/bin/su 2>/dev/null || ls /system/xbin/su 2>/dev/null || ls /sbin/su 2>/dev/null || echo \"su binary not found\"'"
echo.

echo [5] 测试修复后的 PandaSU 应用...
echo --------------------------------------------------
adb shell am start -n com.rootguard.app/.MainActivity
echo "应用已启动，请检查功能..."
echo.

echo [6] 测试隔离操作...
echo --------------------------------------------------
echo "请打开 PandaSU 应用，尝试隔离一个检测器应用"
echo "然后查看日志确认修复是否生效"
echo.

echo [7] 查看修复后的错误日志...
echo --------------------------------------------------
adb logcat -d | findstr "PandaSU.*verification\|PandaSU.*rollback\|PandaSU.*exception" | head -20
echo.

echo ========================================
echo   测试完成建议
echo ========================================
echo.
echo 1. 在 PandaSU 应用中执行一次隔离操作
echo 2. 查看日志确认是否有 SQLite3 相关的错误
echo 3. 检查 mount --bind 操作是否成功
echo 4. 验证 Root 检测逻辑是否准确
echo 5. 测试错误处理和回滚机制
echo.

pause