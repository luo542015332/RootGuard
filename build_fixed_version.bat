@echo off
echo 构建 PandaSU 修复版本 v3.0.5
echo ====================================

echo 1. 清理构建缓存...
gradlew clean

echo.
echo 2. 构建 APK...
gradlew assembleDebug

echo.
echo 3. 检查构建结果...
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo ✅ APK 构建成功！
    echo 文件位置: app\build\outputs\apk\debug\app-debug.apk
    echo 文件大小: 
    for %%i in ("app\build\outputs\apk\debug\app-debug.apk") do echo   %%~zi 字节
    
    echo.
    echo 4. 复制到桌面...
    copy "app\build\outputs\apk\debug\app-debug.apk" "%USERPROFILE%\Desktop\PandaSU-v3.0.5-fixed.apk"
    
    if exist "%USERPROFILE%\Desktop\PandaSU-v3.0.5-fixed.apk" (
        echo ✅ 已复制到桌面: PandaSU-v3.0.5-fixed.apk
    ) else (
        echo ❌ 复制到桌面失败
    )
    
    echo.
    echo 5. 生成修复说明...
    echo # PandaSU v3.0.5 修复版本说明 > "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo. >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo **修复内容:** >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 1. ✅ 修复 Root 权限检测逻辑 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 2. ✅ 优化 KernelSU 检测方法（增加多种检测方式） >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 3. ✅ 优化 Magisk 检测方法（增加多种检测方式） >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 4. ✅ 改进检测顺序和异常处理 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 5. ✅ 添加 Zygisk 模式检测 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo. >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo **问题解决:** >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo - 解决黑屏重启问题 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo - 解决 STANDALONE 模式误检测问题 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo - 改进 Zygisk 模块兼容性 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo. >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo **安装说明:** >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 1. 卸载旧版本 PandaSU >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 2. 安装新版本 APK >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo 3. 重启设备使更改生效 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo. >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo **已知限制:** >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo - 如果还有 Zygisk 模块冲突，请手动禁用相关模块 >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    echo. >> "%USERPROFILE%\Desktop\PandaSU-v3.0.5-修复说明.md"
    
    echo ✅ 修复说明已生成到桌面
) else (
    echo ❌ APK 构建失败！
)

echo.
echo ====================================
echo 构建完成！
pause