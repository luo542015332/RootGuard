@echo off
chcp 65001 > nul
cls
echo ========================================
echo    熊猫图标更换快速指南
echo ========================================
echo.

echo 请选择你的处理方式：
echo.
echo [1] 使用在线工具生成（最简单，推荐）
echo [2] 使用 PowerShell 脚本批量处理
echo [3] 手动复制文件
echo [4] 查看详细文档
echo.
set /p choice="请输入选项 (1-4): "

if "%choice%"=="1" goto online
if "%choice%"=="2" goto script
if "%choice%"=="3" goto manual
if "%choice%"=="4" goto docs

echo 无效选项，请重新运行
pause
exit /b

:online
cls
echo ========================================
echo    方式一：使用在线工具
echo ========================================
echo.
echo 步骤 1：访问在线工具
echo.
echo    https://www.appicon.co/
echo.
echo 步骤 2：上传图标
echo.
echo    - 选择你的熊猫图标
echo    - 建议尺寸：512×512 或更大
echo    - 格式：PNG
echo.
echo 步骤 3：生成并下载
echo.
echo    - 选择 Android 平台
echo    - 点击生成
echo    - 下载 ZIP 文件
echo.
echo 步骤 4：解压并复制
echo.
echo    - 解压下载的 ZIP 文件
echo    - 将所有 PNG 文件复制到：
echo.
echo      app\src\main\res\mipmap-mdpi\      (48×48)
echo      app\src\main\res\mipmap-hdpi\      (72×72)
echo      app\src\main\res\mipmap-xhdpi\     (96×96)
echo      app\src\main\res\mipmap-xxhdpi\   (144×144)
echo      app\src\main\res\mipmap-xxxhdpi\  (192×192)
echo.
echo 步骤 5：重命名文件
echo.
echo    每个文件夹需要两个文件：
echo    - ic_launcher.png
echo    - ic_launcher_round.png
echo.
echo ========================================
echo    完成后
echo ========================================
echo.
echo 运行以下命令构建并安装：
echo.
echo   .\gradlew.bat clean
echo   .\gradlew.bat assembleDebug
echo   .\platform-tools\adb.exe install app\build\outputs\apk\debug\app-debug.apk
echo.
pause
goto menu

:script
cls
echo ========================================
echo    方式二：使用脚本批量处理
echo ========================================
echo.
echo 前提条件：
echo   1. 已经生成了所有尺寸的图标文件：
echo      - panda_48.png  (48×48)
echo      - panda_72.png  (72×72)
echo      - panda_96.png  (96×96)
echo      - panda_144.png (144×144)
echo      - panda_192.png (192×192)
echo.
echo   2. 文件放在项目根目录
echo.
echo 如果已经准备好，按任意键继续...
pause > nul
echo.
echo 正在运行批量复制脚本...
echo.

powershell -ExecutionPolicy Bypass -File copy-icons.ps1

echo.
echo ✅ 脚本执行完成！
echo.
pause
goto menu

:manual
cls
echo ========================================
echo    方式三：手动复制文件
echo ========================================
echo.
echo 如果已经有各个尺寸的图标文件：
echo.
echo 请手动重命名并复制到对应文件夹：
echo.
echo ├── app\src\main\res\mipmap-mdpi\
echo │   ├── ic_launcher.png          (48×48)
echo │   └── ic_launcher_round.png    (48×48)
echo.
echo ├── app\src\main\res\mipmap-hdpi\
echo │   ├── ic_launcher.png          (72×72)
echo │   └── ic_launcher_round.png    (72×72)
echo.
echo ├── app\src\main\res\mipmap-xhdpi\
echo │   ├── ic_launcher.png          (96×96)
echo │   └── ic_launcher_round.png    (96×96)
echo.
echo ├── app\src\main\res\mipmap-xxhdpi\
echo │   ├── ic_launcher.png          (144×144)
echo │   └── ic_launcher_round.png    (144×144)
echo.
echo └── app\src\main\res\mipmap-xxxhdpi\
echo     ├── ic_launcher.png          (192×192)
echo     └── ic_launcher_round.png    (192×192)
echo.
echo 完成后，运行：
echo.
echo   .\gradlew.bat clean
echo   .\gradlew.bat assembleDebug
echo.
pause
goto menu

:docs
cls
echo ========================================
echo    打开详细文档
echo ========================================
echo.
echo 正在打开详细文档...
echo.

start 图标设置详细步骤.md
start 图标更新指南.md
start GitHub修复指南.md

echo ✅ 文档已在浏览器中打开
echo.
pause
goto menu

:menu
cls
echo ========================================
echo    返回主菜单
echo ========================================
echo.
echo 图标更换完成后，运行以下命令：
echo.
echo   1. 清理缓存：
echo      .\gradlew.bat clean
echo.
echo   2. 构建项目：
echo      .\gradlew.bat assembleDebug
echo.
echo   3. 安装到设备：
echo      .\platform-tools\adb.exe install app\build\outputs\apk\debug\app-debug.apk
echo.
echo 或使用 GitHub Actions：
echo.
echo   1. 推送代码到 GitHub
echo   2. 等待 Actions 构建完成
echo   3. 从 Actions 页面下载 APK
echo   4. 安装到设备
echo.
echo 按任意键退出...
pause > nul
