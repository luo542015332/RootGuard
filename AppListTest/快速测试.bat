@echo off
echo ========================================
echo 应用列表获取方法快速测试
echo ========================================
echo.
echo 准备测试 3 种不同的方法...
echo.

echo [1] 测试 pm list packages 命令
echo ----------------------------------------
adb shell su -c "pm list packages" 2>nul | find /c "package:"
echo.

echo [2] 测试 pm list packages -3 (第三方应用)
echo ----------------------------------------
adb shell su -c "pm list packages -3" 2>nul | find /c "package:"
echo.

echo [3] 测试 pm list packages -s (系统应用)
echo ----------------------------------------
adb shell su -c "pm list packages -s" 2>nul | find /c "package:"
echo.

echo [4] 检查微信、QQ 等关键应用
echo ----------------------------------------
adb shell su -c "pm list packages" 2>nul | findstr "tencent"
echo.

echo [5] 测试 ksud app-list 命令
echo ----------------------------------------
adb shell su -c "ksud app-list" 2>nul
echo.

echo ========================================
echo 测试完成！
echo ========================================
echo.
echo 分析结果：
echo - 如果 [1] 返回 492，说明 pm list packages 可用
echo - 如果 [4] 找到了 tencent 相关包名，说明关键应用在列表中
echo - 如果 [5] 输出了 JSON 数据，说明 ksud 可用
echo.
echo 请告诉我哪个方法返回了 492 个应用！
echo.
pause
