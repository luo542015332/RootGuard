@echo off
chcp 65001 >nul
title PandaSU 一键安装工具
echo ========================================
echo PandaSU 完整安装包
echo ========================================
echo.

set DIST_DIR=%~dp0dist
set INSTALL_DIR=%~dp0一键安装包

echo [1/4] 创建安装包目录...
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

echo [2/4] 复制安装文件...
copy "%DIST_DIR%\ZygiskNext-v1.3.3.zip" "%INSTALL_DIR%\ZygiskNext-框架.zip" >nul
copy "%DIST_DIR%\PandaSU-System-Helper-v2.3.0-upload.zip" "%INSTALL_DIR%\PandaSU-模块.zip" >nul
copy "%DIST_DIR%\PandaSU-v2.3.0.apk" "%INSTALL_DIR%\PandaSU-应用.apk" >nul

echo [3/4] 创建安装说明...
echo # PandaSU 一键安装包 > "%INSTALL_DIR%\安装说明.txt"
echo. >> "%INSTALL_DIR%\安装说明.txt"
echo ## 安装步骤 >> "%INSTALL_DIR%\安装说明.txt"
echo 1. 将「一键安装包」文件夹复制到手机 >> "%INSTALL_DIR%\安装说明.txt"
echo 2. Magisk/KernelSU - 模块 - 从本地安装 >> "%INSTALL_DIR%\安装说明.txt"
echo 3. 先刷入: ZygiskNext-框架.zip >> "%INSTALL_DIR%\安装说明.txt"
echo 4. 重启手机 >> "%INSTALL_DIR%\安装说明.txt"
echo 5. 再刷入: PandaSU-模块.zip >> "%INSTALL_DIR%\安装说明.txt"
echo 6. 重启手机 >> "%INSTALL_DIR%\安装说明.txt"
echo 7. 安装: PandaSU-应用.apk >> "%INSTALL_DIR%\安装说明.txt"
echo 8. 打开 PandaSU 完成配置 >> "%INSTALL_DIR%\安装说明.txt"

echo [4/4] 打包安装包...
powershell -Command "Compress-Archive -Path '%INSTALL_DIR%\*' -DestinationPath '%INSTALL_DIR%\PandaSU-完整安装包.zip' -Force"

echo.
echo ========================================
echo 完成！
echo ========================================
echo.
echo 安装包已创建: %INSTALL_DIR%\PandaSU-完整安装包.zip
echo.
echo 包含：
echo - ZygiskNext-框架.zip
echo - PandaSU-模块.zip  
echo - PandaSU-应用.apk
echo - 安装说明.txt
echo.
echo 使用方法：
echo 1. 解压到手机
echo 2. 按说明顺序安装
echo 3. 必须重启两次
echo.
echo 无需电脑，手机直接安装！
echo.
pause