@echo off
chcp 65001 >nul

cd /d C:\Users\Administrator\.qclaw\workspace\RootGuard

echo Step 1: Initializing git...
rd /s /q .git 2>nul
git init

echo.
echo Step 2: Adding files...
git add .

echo.
echo Step 3: Committing...
git commit -m "Initial commit: RootGuard v1.0"

echo.
echo Step 4: Setting branch...
git branch -M main

echo.
echo Step 5: Adding remote...
git remote remove origin 2>nul
git remote add origin https://github.com/luo542015332/RootGuard.git

echo.
echo Step 6: Pushing to GitHub...
git push -u origin main --force

echo.
echo Done!
pause