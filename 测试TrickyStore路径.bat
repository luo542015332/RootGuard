@echo off
echo ========================================
echo Tricky Store 路径检查脚本
echo ========================================
echo.
echo 检查熊猫SU代码中的检测路径：
echo 1. /data/adb/tricky_store
echo 2. /data/adb/modules/tricky_store
echo.
echo 实际可能的安装路径：
echo 1. /data/adb/modules/tricky_store （模块目录）
echo 2. /data/adb/tricky_store （可能有独立的目录）
echo 3. /data/adb/modules/trickystore （无下划线）
echo 4. /data/adb/tricky_store_current （新版本可能带后缀）
echo.
echo 常见模块安装结构：
echo /data/adb/modules/{模块名}/
echo   |- module.prop （模块配置文件）
echo   |- system/     （系统文件）
echo   |- post-fs-data.sh
echo   |- service.sh
echo.
echo 要修复此问题，需要修改 RootHider.kt 中的检测逻辑
echo 增加更多的 Tricky Store 安装路径检查
pause