@echo off
chcp 65001 >nul
echo ===========================================
echo  PackageManager Hook 测试脚本
echo  通过 ADB 检测手机上是否隐藏了 Root 框架
echo ===========================================
echo.

echo [1] 检查 LSPosed Manager (org.lsposed.manager)...
adb shell pm path org.lsposed.manager 2>nul
if %errorlevel%==0 (
    echo     [发现] LSPosed Manager - 未隐藏!
) else (
    echo     [未发现] LSPosed Manager - 已隐藏 ✓
)
echo.

echo [2] 检查 Magisk (com.topjohnwu.magisk)...
adb shell pm path com.topjohnwu.magisk 2>nul
if %errorlevel%==0 (
    echo     [发现] Magisk - 未隐藏!
) else (
    echo     [未发现] Magisk - 已隐藏 ✓
)
echo.

echo [3] 检查 KernelSU (me.weishu.kernelsu)...
adb shell pm path me.weishu.kernelsu 2>nul
if %errorlevel%==0 (
    echo     [发现] KernelSU - 未隐藏!
) else (
    echo     [未发现] KernelSU - 已隐藏 ✓
)
echo.

echo [4] 检查 LSPosed (org.lsposed.lspd)...
adb shell pm path org.lsposed.lspd 2>nul
if %errorlevel%==0 (
    echo     [发现] org.lsposed.lspd - 未隐藏!
) else (
    echo     [未发现] org.lsposed.lspd - 已隐藏 ✓
)
echo.

echo [5] 检查 LSPosed (com.lsposed)...
adb shell pm path com.lsposed 2>nul
if %errorlevel%==0 (
    echo     [发现] com.lsposed - 未隐藏!
) else (
    echo     [未发现] com.lsposed - 已隐藏 ✓
)
echo.

echo [6] 检查 Xposed (de.robv.android.xposed)...
adb shell pm path de.robv.android.xposed 2>nul
if %errorlevel%==0 (
    echo     [发现] Xposed - 未隐藏!
) else (
    echo     [未发现] Xposed - 已隐藏 ✓
)
echo.

echo [7] 列出包含 "lsp" 的包...
adb shell pm list packages 2>nul | findstr /i "lsp"
if %errorlevel%==1 (
    echo     没有找到包含 "lsp" 的包 ✓
)
echo.

echo [8] 列出包含 "magisk" 的包...
adb shell pm list packages 2>nul | findstr /i "magisk"
if %errorlevel%==1 (
    echo     没有找到包含 "magisk" 的包 ✓
)
echo.

echo [9] 列出包含 "xposed" 的包...
adb shell pm list packages 2>nul | findstr /i "xposed"
if %errorlevel%==1 (
    echo     没有找到包含 "xposed" 的包 ✓
)
echo.

echo [10] 列出包含 "root" 的包...
adb shell pm list packages 2>nul | findstr /i "root"
if %errorlevel%==1 (
    echo     没有找到包含 "root" 的包 ✓
)
echo.

echo [11] 列出包含 "hide" 的包...
adb shell pm list packages 2>nul | findstr /i "hide"
if %errorlevel%==1 (
    echo     没有找到包含 "hide" 的包 ✓
)
echo.

echo [12] 检查 /data/adb/lspd 目录...
adb shell ls /data/adb/lspd 2>nul
if %errorlevel%==0 (
    echo     目录存在 - 部分隐藏可能在工作
) else (
    echo     目录不存在 ✓
)
echo.

echo [13] 检查 /data/adb/magisk 目录...
adb shell ls /data/adb/magisk 2>nul
if %errorlevel%==0 (
    echo     目录存在 - 部分隐藏可能在工作
) else (
    echo     目录不存在 ✓
)
echo.

echo [14] 获取系统属性 ro.debuggable...
adb shell getprop ro.debuggable
echo.

echo [15] 获取系统属性 ro.secure...
adb shell getprop ro.secure
echo.

echo [16] 获取系统属性 ro.build.type...
adb shell getprop ro.build.type
echo.

echo ===========================================
echo  测试完成
echo ===========================================
echo.
echo 总结：
echo - 如果大部分显示"未发现"和"不存在"，说明 Hook 已生效
echo - 如果仍然发现 Root 框架，说明 Hook 未生效或未安装
echo.
pause
