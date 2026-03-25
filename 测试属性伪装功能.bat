@echo off
echo ============================================
echo PandaSU 属性伪装功能测试脚本
echo ============================================
echo.
echo 1. 检查设备连接状态...
adb devices
echo.

echo 2. 检查 PandaSU 应用进程...
adb shell ps | findstr rootguard
echo.

echo 3. 检查 Root 权限状态...
adb shell su -c id
echo.

echo 4. 测试属性伪装功能...
echo 尝试调用属性伪装功能...
echo 注意：这需要 PandaSU 有 Root 权限
echo.

echo 5. 检查 KernelSU 权限...
echo 请确保在 KernelSU 管理器中：
echo   - 找到 PandaSU (com.rootguard.app)
echo   - 授予 Root 权限
echo   - 权限模式设置为"允许"
echo.

echo 6. 手动测试属性伪装...
echo 可以在设备上执行以下命令测试：
echo   su -c "resetprop -n ro.build.tags release-keys"
echo   su -c "getprop ro.build.tags"
echo.

echo 7. 日志收集...
echo 如果属性伪装按钮不能点击，请：
echo   a) 检查是否有 Root 权限
echo   b) 检查应用是否有前台服务权限
echo   c) 查看应用错误日志
echo.

echo ============================================
echo 测试建议：
echo   1. 重启 PandaSU 应用
echo   2. 检查 KernelSU 权限设置
echo   3. 尝试其他需要 Root 的功能是否正常
echo   4. 查看应用日志文件
echo ============================================
pause