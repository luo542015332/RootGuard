@echo off
chcp 65001 > nul
echo ========================================
echo    手动设置应用图标
echo ========================================
echo.

echo 由于无法在线上传，我们使用手动方法：
echo.

echo 步骤 1：准备原图
echo.
echo 1. 将你的熊猫图标保存到桌面
echo    文件名：panda.png
echo    建议尺寸：512×512 或更大
echo.

pause

echo.
echo ========================================
echo 步骤 2：使用画图工具
echo ========================================
echo.

echo 1. 右键点击熊猫图标，选择"打开方式" → "画图"
echo 2. 在画图中，调整图像大小
echo 3. 分别保存为以下尺寸：
echo.

echo 需要的尺寸：
echo   - 48×48  保存为 panda_48.png
echo   - 72×72  保存为 panda_72.png
echo   - 96×96  保存为 panda_96.png
echo   - 144×144 保存为 panda_144.png
echo   - 192×192 保存为 panda_192.png
echo.

pause

echo.
echo ========================================
echo 步骤 3：复制图标文件
echo ========================================
echo.

echo 将保存的文件重命名并复制到对应文件夹：
echo.

echo panda_48.png  → app\src\main\res\mipmap-mdpi\ic_launcher.png
echo               → app\src\main\res\mipmap-mdpi\ic_launcher_round.png
echo.

echo panda_72.png  → app\src\main\res\mipmap-hdpi\ic_launcher.png
echo               → app\src\main\res\mipmap-hdpi\ic_launcher_round.png
echo.

echo panda_96.png  → app\src\main\res\mipmap-xhdpi\ic_launcher.png
echo               → app\src\main\res\mipmap-xhdpi\ic_launcher_round.png
echo.

echo panda_144.png → app\src\main\res\mipmap-xxhdpi\ic_launcher.png
echo               → app\src\main\res\mipmap-xxhdpi\ic_launcher_round.png
echo.

echo panda_192.png → app\src\main\res\mipmap-xxxhdpi\ic_launcher.png
echo               → app\src\main\res\mipmap-xxxhdpi\ic_launcher_round.png
echo.

pause

echo.
echo ========================================
echo 步骤 4：验证和测试
echo ========================================
echo.

echo 完成后运行以下命令：
echo.
echo 1. 清理缓存：
echo    .\gradlew.bat clean
echo.
echo 2. 构建项目：
echo    .\gradlew.bat assembleDebug
echo.
echo 3. 安装到手机：
echo    .\install-apk.ps1
echo.

pause

echo.
echo 完成后，在手机上就能看到你的熊猫图标了！
echo.

pause
