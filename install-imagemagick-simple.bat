@echo off
chcp 65001 >nul
echo ========================================
echo   ImageMagick 安装脚本
echo ========================================
echo.

REM 检查是否已安装
where magick >nul 2>&1
if %errorlevel%==0 (
    echo [✓] ImageMagick 已经安装
    magick -version
    echo.
    echo 安装完成！
    pause
    exit /b 0
)

echo [!] 检测到 ImageMagick 未安装
echo.
echo 正在下载 ImageMagick...
echo.

REM 下载 ImageMagick（使用 winget）
winget install ImageMagick.ImageMagick -e --accept-source-agreements --accept-package-agreements

if %errorlevel%==0 (
    echo.
    echo [✓] ImageMagick 安装成功！
    echo.
    echo 正在验证安装...
    timeout /t 3 >nul
    
    REM 刷新环境变量
    refreshenv >nul 2>&1
    set "PATH=%PATH%;C:\Program Files\ImageMagick-7.*\Q16-HDRI"
    
    REM 验证
    magick -version >nul 2>&1
    if %errorlevel%==0 (
        echo [✓] 安装验证成功！
        magick -version
    ) else (
        echo [!] 验证失败，可能需要重启终端
    )
) else (
    echo.
    echo [!] 安装失败
    echo.
    echo 请手动安装：
    echo 1. 访问 https://imagemagick.org/script/download.php#windows
    echo 2. 下载并安装 ImageMagick
    echo 3. 安装时确保勾选 "Add to system PATH"
    echo.
)

echo.
echo 安装脚本完成
pause
