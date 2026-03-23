@echo off
echo ========================================
echo 应用列表获取方法测试工具
echo ========================================
echo.
echo 准备开始测试...
echo.
echo 请确保:
echo 1. 设备已通过 USB 连接到电脑
echo 2. 设备已启用 USB 调试
echo 3. 设备已获得 Root 权限
echo 4. 已授权此计算机进行 ADB 调试
echo.
pause

echo.
echo 开始测试...
echo.

python test_applist.py

echo.
echo.
echo 测试完成！
echo 结果已保存到 test_results_*.txt 文件中
echo.
pause
