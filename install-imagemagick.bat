@echo off
chcp 65001 > nul
echo ========================================
echo    ImageMagick 安装指南
echo ========================================
echo.

echo ImageMagick 是一个强大的图像处理工具，
echo 用于自动缩放和生成应用图标。
echo.

echo ========================================
echo 安装步骤：
echo ========================================
echo.

echo 1. 访问下载页面：
echo    https://imagemagick.org/script/download.php
echo.

echo 2. 选择 Windows 版本下载：
echo    点击 "Windows Binary Release"
echo.

echo 3. 下载并运行安装程序
echo.

echo 4. 安装时重要选项：
echo    [x] Install legacy utilities (e.g. convert)
echo    - 这个选项必须勾选！
echo    - 否则脚本无法使用
echo.

echo 5. 完成安装后，重新打开命令提示符
echo.

echo ========================================
echo 验证安装：
echo ========================================
echo.

echo 在新的命令提示符中运行：
echo magick --version
echo.

echo 如果显示版本信息，说明安装成功！
echo.

echo 安装完成后，你可以运行：
echo .\update-icon.ps1
echo.

pause
