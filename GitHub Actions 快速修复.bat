@echo off
chcp 65001 > nul
cls
echo ========================================
echo    GitHub Actions 快速修复
echo ========================================
echo.

echo 此脚本将帮助你修复 GitHub Actions 错误
echo.

pause

cls
echo ========================================
echo    步骤 1：检查本地编译
echo ========================================
echo.

echo 正在清理构建缓存...
.\gradlew.bat clean

if %errorlevel% neq 0 (
    echo.
    echo ❌ 清理失败！
    echo 请检查 Gradle 配置
    pause
    exit /b 1
)

echo.
echo ✅ 清理完成
echo.

echo 正在本地构建...
.\gradlew.bat assembleDebug --stacktrace

if %errorlevel% neq 0 (
    echo.
    echo ❌ 本地构建失败！
    echo.
    echo 请先修复代码错误，然后再推送到 GitHub
    pause
    exit /b 1
)

echo.
echo ✅ 本地构建成功
echo.

echo 检查 APK 文件...
if not exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo.
    echo ❌ APK 文件未生成！
    echo 请检查构建输出
    pause
    exit /b 1
)

echo.
echo ✅ APK 文件已生成
echo.

cls
echo ========================================
echo    步骤 2：检查 GitHub 权限
echo ========================================
echo.

echo 请在浏览器中打开以下链接：
echo.
echo https://github.com/luo542015332/RootGuard/settings/actions
echo.

echo 检查以下设置：
echo.
echo 1. Workflow permissions:
echo    [ ] 选择 "Read and write permissions"
echo    [ ] 勾选 "Allow GitHub Actions to create and approve pull requests"
echo.

set /p checked="已检查并设置完成？(Y/N): "
if /i not "%checked%"=="Y" (
    echo 请先完成权限设置
    pause
    exit /b 1
)

echo.
echo ✅ 权限检查完成
echo.

cls
echo ========================================
echo    步骤 3：推送代码
echo ========================================
echo.

echo 正在检查 Git 状态...
git status

echo.
echo 是否需要添加并提交更改？
set /p commit="是否提交？(Y/N): "

if /i "%commit%"=="Y" (
    echo.
    echo 正在添加文件...
    git add .

    echo 正在提交...
    git commit -m "fix: 修复 GitHub Actions 构建问题

    - 检查并修复代码错误
    - 验证本地构建成功
    - 确认 GitHub 权限设置"

    echo.
    echo 正在推送到 GitHub...
    git push origin main

    if %errorlevel% neq 0 (
        echo.
        echo ❌ 推送失败！
        echo 请检查网络连接和 Git 配置
        pause
        exit /b 1
    )

    echo.
    echo ✅ 推送成功！
) else (
    echo.
    echo 跳过提交和推送
)

cls
echo ========================================
echo    步骤 4：检查构建状态
echo ========================================
echo.

echo 代码已推送到 GitHub
echo.
echo 请访问以下链接查看构建状态：
echo.
echo https://github.com/luo542015332/RootGuard/actions
echo.

echo 正在打开 Actions 页面...
start https://github.com/luo542015332/RootGuard/actions

echo.
echo 等待构建完成（通常需要 5-10 分钟）
echo.

echo 查看详细错误：
echo 1. 点击失败的 workflow 运行
echo 2. 点击失败的步骤
echo 3. 查看错误日志
echo 4. 点击 "Show more" 查看完整日志
echo.

echo 如果构建失败，请参考：
echo GitHub错误排查.md
echo.

pause

cls
echo ========================================
echo    常见错误快速修复
echo ========================================
echo.

echo 根据错误类型，选择相应的解决方案：
echo.
echo [1] 权限错误
echo [2] 编译错误
echo [3] Release 创建失败
echo [4] 其他错误
echo [5] 查看详细文档
echo.
set /p choice="请选择 (1-5): "

if "%choice%"=="1" goto permission
if "%choice%"=="2" goto compile
if "%choice%"=="3" goto release
if "%choice%"=="4" goto other
if "%choice%"=="5" goto docs
goto end

:permission
cls
echo ========================================
echo    修复权限错误
echo ========================================
echo.
echo 请按照以下步骤操作：
echo.
echo 1. 打开：https://github.com/luo542015332/RootGuard/settings/actions
echo.
echo 2. 滚动到 "Workflow permissions"
echo.
echo 3. 选择 "Read and write permissions"
echo.
echo 4. 勾选 "Allow GitHub Actions to create and approve pull requests"
echo.
echo 5. 点击 "Save" 保存
echo.
echo 6. 在 GitHub Actions 页面重新运行失败的 workflow
echo.
pause
goto end

:compile
cls
echo ========================================
echo    修复编译错误
echo ========================================
echo.
echo 本地构建失败的可能原因：
echo.
echo 1. 代码有语法错误
echo 2. 依赖版本不兼容
echo 3. Kotlin 版本问题
echo.
echo 请运行以下命令查看详细错误：
echo.
echo .\gradlew.bat assembleDebug --stacktrace
echo.
echo 根据错误信息修复代码
echo.
pause
goto end

:release
cls
echo ========================================
echo    修复 Release 创建失败
echo ========================================
echo.
echo 可能的原因：
echo.
echo 1. 权限未正确设置
echo 2. 已经存在相同版本的 Release
echo 3. Release 名称冲突
echo.
echo 解决方案：
echo.
echo 1. 检查权限设置（参考选项 1）
echo 2. 手动删除冲突的 Release
echo 3. 重新运行 workflow
echo.
echo 或者暂时不创建 Release，只下载 Artifact
echo.
pause
goto end

:other
cls
echo ========================================
echo    其他错误
echo ========================================
echo.
echo 请查看详细的错误排查文档：
echo.
echo GitHub错误排查.md
echo.
pause
goto end

:docs
cls
echo ========================================
echo    打开详细文档
echo ========================================
echo.

start GitHub错误排查.md
start 图标更换最简方案.md
start GitHub修复指南.md

echo ✅ 文档已在浏览器中打开
echo.
pause
goto end

:end
cls
echo ========================================
echo    完成
echo ========================================
echo.
echo 如果仍然有问题，请：
echo.
echo 1. 查看 GitHub Actions 的详细错误日志
echo 2. 参考文档：GitHub错误排查.md
echo 3. 搜索错误信息
echo.
echo 祝好运！
echo.
pause
