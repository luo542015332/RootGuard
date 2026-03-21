@echo off
chcp 65001 >nul
cd /d C:\Users\Administrator\.qclaw\workspace

echo ==========================================
echo 打包 RootGuard 项目
echo ==========================================
echo.

powershell -Command "Compress-Archive -Path 'RootGuard' -DestinationPath 'C:\Users\Administrator\Desktop\RootGuard-project.zip' -Force"

if exist "C:\Users\Administrator\Desktop\RootGuard-project.zip" (
    echo.
    echo [成功] 已打包到桌面: RootGuard-project.zip
    echo.
    dir "C:\Users\Administrator\Desktop\RootGuard-project.zip"
) else (
    echo [失败]
)

echo.
pause