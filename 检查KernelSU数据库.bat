@echo off
chcp 65001 >nul
set LOG_DIR=..\logs
set TIMESTAMP=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%
set LOG_FILE=%LOG_DIR%\db_check_%TIMESTAMP%.txt

echo ===== KernelSU 数据库检查 ===== > "%LOG_FILE%"
echo 时间: %date% %time% >> "%LOG_FILE%"
echo. >> "%LOG_FILE%"

echo 1. 检查 Weishu KernelSU 数据库目录... >> "%LOG_FILE%"
adb shell "su -c 'ls -la /data/data/me.weishu.kernelsu/databases/' 2>&1" >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%"

echo 2. 检查数据库文件... >> "%LOG_FILE%"
adb shell "su -c 'file /data/data/me.weishu.kernelsu/databases/app.db' 2>&1" >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%"

echo 3. 查看数据库表结构... >> "%LOG_FILE%"
adb shell "su -c 'sqlite3 /data/data/me.weishu.kernelsu/databases/app.db .tables' 2>&1" >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%"

echo 4. 查看 rules 表结构... >> "%LOG_FILE%"
adb shell "su -c 'sqlite3 /data/data/me.weishu.kernelsu/databases/app.db .schema rules' 2>&1" >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%"

echo 5. 查询 rules 表数据（前10条）... >> "%LOG_FILE%"
adb shell "su -c 'sqlite3 /data/data/me.weishu.kernelsu/databases/app.db \"SELECT uid, policy FROM rules LIMIT 10\"' 2>&1" >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%"

echo 6. 查询总记录数... >> "%LOG_FILE%"
adb shell "su -c 'sqlite3 /data/data/me.weishu.kernelsu/databases/app.db \"SELECT COUNT(*) FROM rules\"' 2>&1" >> "%LOG_FILE%" 2>&1
echo. >> "%LOG_FILE%"

echo ===== 检查完成 ===== >> "%LOG_FILE%"
echo. >> "%LOG_FILE%"
echo 日志已保存到: %LOG_FILE%
type "%LOG_FILE%"
pause
