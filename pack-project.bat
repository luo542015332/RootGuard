@echo off
chcp 65001 >nul
echo ==========================================
echo 打包 RootGuard 项目
echo ==========================================
echo.

cd /d C:\Users\Administrator\.qclaw\workspace

echo 正在打包...
tar -a -c -f Desktop\RootGuard-project.zip RootGuard

if exist "Desktop\RootGuard-project.zip" (
    echo.
    echo [成功] 项目已打包到桌面:
    echo        RootGuard-project.zip
    echo.
    dir Desktop\RootGuard-project.zip
) else (
    echo [失败] 请手动压缩 RootGuard 文件夹
)

echo.
echo ==========================================
echo 使用说明:
echo 1. 将 RootGuard-project.zip 复制到另一台电脑
echo 2. 解压后用 Android Studio 打开
echo 3. 点击 Build - Build APK
echo ==========================================
pause