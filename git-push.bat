@echo off
chcp 65001 >nul

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo Current directory:
cd

echo.
echo Git status:
git status

echo.
echo Adding remote...
git remote remove origin 2>nul
git remote add origin https://github.com/luo542015332/RootGuard.git
git remote -v

echo.
echo Setting branch to main...
git branch -M main

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
pause