@echo off
echo ================================================
echo 测试 PandaSU v2.0.7 逻辑重构和紧急修复
echo ================================================
echo.
echo [1] 检查编译错误...
echo.

cd /d "%~dp0"
call gradlew.bat assembleDebug

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✓ 编译成功！PandaSU v2.0.7 构建完成
    echo.
    
    echo [2] 复制APK到桌面...
    copy app\build\outputs\apk\debug\app-debug.apk "%USERPROFILE%\Desktop\PandaSU-v2.0.7.apk"
    
    if exist "%USERPROFILE%\Desktop\PandaSU-v2.0.7.apk" (
        echo ✓ APK已复制到桌面：PandaSU-v2.0.7.apk
    ) else (
        echo ✗ APK复制失败
    )
    
    echo.
    echo [3] 修复总结：
    echo ================================================
    echo 1. 逻辑重构：预设对应隔离强度，应用分类对应默认配置
    echo    - 保守：银行严格，游戏中等，社交中等
    echo    - 平衡：银行严格，游戏严格，社交中等
    echo    - 激进：所有应用严格
    echo    - 宽松：银行严格，其他宽松
    echo.
    echo 2. 紧急修复：RootHider.kt中的configureMagiskHide函数
    echo    - 根据RootEnvironmentDetector.detectRootMode()结果选择命令
    echo    - 添加工具可用性检查（checkToolAvailable）
    echo    - 统一所有Root操作通过检测结果
    echo.
    echo 3. 修复的函数：
    echo    - configureMagiskHide() - 根据Root类型选择命令
    echo    - isolateStorageForPackage() - 根据Root类型使用正确方法
    echo    - removeIsolation() - 根据Root类型移除隔离
    echo    - hideXposedForPackage() - 检查LSPosed路径
    echo.
    echo 4. 版本更新：
    echo    - 版本号: v2.0.7
    echo    - versionCode: 81
    echo    - 修复了"保守、激进、平衡"对应"银行、游戏、社交"的逻辑问题
    echo    - 修复了Root环境检测与命令执行脱节的问题
    echo ================================================
) else (
    echo.
    echo ✗ 编译失败！请检查错误信息
    echo.
    echo 常见错误：
    echo 1. 类型错误：使用正确的RootMode枚举
    echo 2. Logger参数错误：只传递一个字符串参数
    echo 3. 导入问题：确保import com.rootguard.app.util.RootEnvironmentDetector
)

pause