@echo off
echo ========================================
echo PandaSU v2.0.8 环境安全评分修复测试脚本
echo ========================================
echo.
echo 修复内容：
echo 1. 增强 Tricky Store 模块检测逻辑
echo 2. 增加多个可能的安装路径检查
echo 3. 添加动态目录查找功能
echo.
echo 测试步骤：
echo 1. 确保设备已安装 Tricky Store 模块
echo 2. 编译并安装 PandaSU v2.0.8
echo 3. 打开 PandaSU 应用
echo 4. 进入隔离屏幕
echo 5. 点击环境安全评分的刷新按钮
echo 6. 观察评分是否仍被扣分
echo 7. 检查日志确认检测结果
echo.
echo 预期结果：
echo - Tricky Store 安装应被正确检测
echo - 不应再因 Tricky Store 扣分
echo - 环境安全评分应更加准确
echo.
echo 日志检查：
echo 1. 查看 adb logcat 中是否有 "Tricky Store 已安装" 的日志
echo 2. 检查是否找到正确的模块路径
echo 3. 确认评分计算正确
echo.
echo 如果问题仍然存在：
echo 1. 检查 Tricky Store 的实际安装路径
echo 2. 提供详细的日志信息
echo 3. 可能需要进一步扩展检测路径
echo.
pause