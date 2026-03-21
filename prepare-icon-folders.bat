@echo off
chcp 65001 > nul
echo ========================================
echo    PandaSU 图标文件准备工具
echo ========================================
echo.

echo 此脚本会在各个 mipmap 文件夹中创建
echo 空白的 PNG 图标文件作为占位符
echo.

set /p confirm="是否继续？(Y/N): "
if /i not "%confirm%"=="Y" (
    echo 已取消
    pause
    exit /b
)

echo.
echo 正在创建占位符图标文件...
echo.

REM 创建 mdpi
echo [1/5] 创建 mdpi 图标 (48x48)...
type nul > app\src\main\res\mipmap-mdpi\ic_launcher.png
type nul > app\src\main\res\mipmap-mdpi\ic_launcher_round.png

REM 创建 hdpi
echo [2/5] 创建 hdpi 图标 (72x72)...
type nul > app\src\main\res\mipmap-hdpi\ic_launcher.png
type nul > app\src\main\res\mipmap-hdpi\ic_launcher_round.png

REM 创建 xhdpi
echo [3/5] 创建 xhdpi 图标 (96x96)...
type nul > app\src\main\res\mipmap-xhdpi\ic_launcher.png
type nul > app\src\main\res\mipmap-xhdpi\ic_launcher_round.png

REM 创建 xxhdpi
echo [4/5] 创建 xxhdpi 图标 (144x144)...
type nul > app\src\main\res\mipmap-xxhdpi\ic_launcher.png
type nul > app\src\main\res\mipmap-xxhdpi\ic_launcher_round.png

REM 创建 xxxhdpi
echo [5/5] 创建 xxxhdpi 图标 (192x192)...
type nul > app\src\main\res\mipmap-xxxhdpi\ic_launcher.png
type nul > app\src\main\res\mipmap-xxxhdpi\ic_launcher_round.png

echo.
echo ========================================
echo    ✅ 占位符文件创建完成！
echo ========================================
echo.
echo 下一步：
echo 1. 使用你喜欢的图片编辑工具
echo 2. 将你的熊猫图标缩放到以下尺寸：
echo    - 48×48  放到 mipmap-mdpi/
echo    - 72×72  放到 mipmap-hdpi/
echo    - 96×96  放到 mipmap-xhdpi/
echo    - 144×144 放到 mipmap-xxhdpi/
echo    - 192×192 放到 mipmap-xxxhdpi/
echo 3. 每个文件夹需要两个文件：
echo    - ic_launcher.png (标准图标)
echo    - ic_launcher_round.png (圆形图标)
echo 4. 替换掉刚才创建的空白文件
echo.
echo 推荐在线工具：
echo https://www.appicon.co/
echo.
pause
