@echo off
chcp 65001 >nul
echo ==========================================
echo RootGuard GitHub 上传指南
echo ==========================================
echo.
echo 步骤 1: 创建 GitHub 仓库
echo   1. 打开 https://github.com/new
echo   2. 仓库名: RootGuard
echo   3. 选择 Public
echo   4. 点击 Create repository
echo.
echo 步骤 2: 初始化 Git 并上传
echo   在 RootGuard 文件夹中运行以下命令:
echo.
echo   git init
echo   git add .
echo   git commit -m "Initial commit"
echo   git branch -M main
echo   git remote add origin https://github.com/YOUR_USERNAME/RootGuard.git
echo   git push -u origin main
echo.
echo 步骤 3: 等待自动构建
echo   - GitHub Actions 会自动开始构建
echo   - 点击 Actions 标签页查看进度
echo   - 构建完成后在 Releases 页面下载 APK
echo.
echo ==========================================
pause