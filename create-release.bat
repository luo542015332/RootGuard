@echo off
chcp 65001 >nul
echo ========================================
echo   PandaSU v1.3.1 Release 创建脚本
echo ========================================
echo.

echo [1/3] 检查 GitHub CLI 登录状态...
gh auth status
if errorlevel 1 (
    echo.
    echo ❌ 需要先登录 GitHub CLI
    echo 请运行: gh auth login
    echo.
    pause
    exit /b 1
)
echo ✅ GitHub CLI 已登录
echo.

echo [2/3] 获取最新提交哈希...
for /f "tokens=*" %%i in ('git rev-parse HEAD') do set COMMIT=%%i
echo 提交哈希: %COMMIT%
echo.

echo [3/3] 创建 v1.3.1 Release...
gh release create v1.3.1^
  --repo luo542015332/RootGuard^
  --title "PandaSU v1.3.1"^
  --target %COMMIT%^
  --notes "🎉 PandaSU v1.3.1 发布

✨ 新功能：
- 扩展一键隔离应用分类关键词
- 新增电商、视频、教育等应用分类
- 优化未知应用处理逻辑

🐛 修复：
- 修复一键隔离只能隔离少量应用的问题
- 提高应用识别覆盖率到 90%+
- 确保系统应用不会被隔离

📦 下载 APK：
请从 GitHub Actions 构建页面下载最新版本"

if errorlevel 1 (
    echo.
    echo ❌ Release 创建失败
    echo.
) else (
    echo.
    echo ✅ Release 创建成功！
    echo 📱 现在可以在手机上检查更新了
    echo.
)

pause
