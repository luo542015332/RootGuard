#!/bin/bash
# ========================================
# PandaSU 应用日志提取脚本 (Linux/Mac)
# 用途：从已 Root 的设备提取 PandaSU 应用日志
# ========================================

echo "========================================"
echo "  PandaSU 日志提取工具"
echo "========================================"
echo ""

# 创建日志目录
mkdir -p logs/PandaSU

echo "[1/6] 检查设备连接..."
adb devices
echo ""

echo "[2/6] 检查 PandaSU 应用是否安装..."
if ! adb shell pm list packages | grep -q "com.rootguard.app"; then
    echo "[错误] 未检测到 PandaSU 应用 (com.rootguard.app)"
    echo ""
    echo "请确保:"
    echo "  - 设备已安装 PandaSU 应用"
    echo "  - 设备已授予 adb root 权限"
    exit 1
fi
echo "[成功] PandaSU 已安装"
echo ""

echo "[3/6] 提取 PandaSU 应用日志..."

echo ""
echo "[方法1] 提取所有 PandaSU 日志（包含所有级别）..."
adb logcat -d | grep "PandaSU" > logs/PandaSU/pandasu_all.log
echo "[成功] 所有日志已保存到 logs/PandaSU/pandasu_all.log"

echo ""
echo "[方法2] 提取 PandaSU Error 级别日志..."
adb logcat -d *:E | grep "PandaSU" > logs/PandaSU/pandasu_errors.log
echo "[成功] Error 日志已保存到 logs/PandaSU/pandasu_errors.log"

echo ""
echo "[方法3] 提取 PandaSU Debug 级别日志..."
adb logcat -d *:D | grep "PandaSU" > logs/PandaSU/pandasu_debug.log
echo "[成功] Debug 日志已保存到 logs/PandaSU/pandasu_debug.log"

echo ""
echo "[方法4] 提取 PandaSU Info 级别日志..."
adb logcat -d *:I | grep "PandaSU" > logs/PandaSU/pandasu_info.log
echo "[成功] Info 日志已保存到 logs/PandaSU/pandasu_info.log"

echo ""
echo "[方法5] 提取 PandaSU Warning 级别日志..."
adb logcat -d *:W | grep "PandaSU" > logs/PandaSU/pandasu_warning.log
echo "[成功] Warning 日志已保存到 logs/PandaSU/pandasu_warning.log"

echo ""
echo "[4/6] 提取 PandaSU 相关的异常堆栈..."

echo "[方法6] 提取 AndroidRuntime 异常（可能包含 PandaSU 崩溃信息）..."
adb logcat -d AndroidRuntime:E | grep -i "pandasu\|rootguard" > logs/PandaSU/android_runtime.log 2>&1
echo "[成功] AndroidRuntime 日志已保存到 logs/PandaSU/android_runtime.log"

echo ""
echo "[方法7] 提取 System.err（标准错误输出）..."
adb logcat -d System.err:V > logs/PandaSU/system_err.log
echo "[成功] System.err 日志已保存到 logs/PandaSU/system_err.log"

echo ""
echo "[5/6] 提取 PandaSU 应用信息..."

echo "[方法8] 获取 PandaSU 应用详细信息..."
adb shell dumpsys package com.rootguard.app > logs/PandaSU/package_info.txt 2>&1
echo "[成功] 包信息已保存到 logs/PandaSU/package_info.txt"

echo ""
echo "[方法9] 获取 PandaSU 应用进程信息..."
adb shell ps -A | grep "com.rootguard.app" > logs/PandaSU/process_info.txt 2>&1
echo "[成功] 进程信息已保存到 logs/PandaSU/process_info.txt"

echo ""
echo "[6/6] 提取 Root 权限相关日志..."

echo "[方法10] 提取 Root 权限请求相关日志..."
adb logcat -d | grep -i "root.*request\|magisk.*request\|permission.*root" > logs/PandaSU/root_requests.log 2>&1
echo "[成功] Root 请求日志已保存到 logs/PandaSU/root_requests.log"

echo ""
echo "[方法11] 提取模块操作相关日志（备份/恢复）..."
adb logcat -d | grep -i "module.*backup\|module.*restore\|备份模块\|恢复模块\|备份失败\|恢复失败" > logs/PandaSU/module_operations.log 2>&1
echo "[成功] 模块操作日志已保存到 logs/PandaSU/module_operations.log"

echo ""
echo "[方法12] 提取完整 logcat（带时间戳）用于深度分析..."
adb logcat -d -v time > logs/PandaSU/full_logcat.log
echo "[成功] 完整 logcat 已保存到 logs/PandaSU/full_logcat.log"

echo ""
echo "========================================"
echo "  提取完成！"
echo "========================================"
echo ""
echo "日志文件位置: logs/PandaSU/"
echo ""
echo "已提取的文件:"
ls -lh logs/PandaSU/
echo ""

echo "========================================"
echo "  日志统计"
echo "========================================"
echo ""
for file in logs/PandaSU/*.log; do
    if [ -f "$file" ]; then
        echo "$file:"
        wc -l "$file"
        echo ""
    fi
done

echo ""
echo "========================================"
echo "  日志摘要"
echo "========================================"
echo ""
echo "[最新错误信息]"
if [ -s logs/PandaSU/pandasu_errors.log ]; then
    tail -n 20 logs/PandaSU/pandasu_errors.log
else
    echo "没有 Error 级别的日志"
fi
echo ""

echo "========================================"
echo "  建议"
echo "========================================"
echo ""
echo "1. 首先查看 pandasu_errors.log 了解错误信息"
echo "2. 查看 android_runtime.log 查找可能的崩溃信息"
echo "3. 查看模块操作日志 (module_operations.log) 了解备份/恢复问题"
echo "4. 如需深度分析，可查看完整 logcat (full_logcat.log)"
echo ""
