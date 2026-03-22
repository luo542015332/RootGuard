#!/bin/bash
# ========================================
# KernelSU 日志提取脚本 (Linux/Mac)
# 用途：从已 Root 的设备提取 KernelSU 日志
# ========================================

echo "========================================"
echo "  KernelSU 日志提取工具"
echo "========================================"
echo ""

# 创建日志目录
mkdir -p logs/KernelSU

echo "[1/4] 检查设备连接..."
adb devices
echo ""

echo "[2/4] 检查 KernelSU 是否安装..."
if ! adb shell su -c "which ksud" > /dev/null 2>&1; then
    echo "[错误] 未检测到 KernelSU (ksud 命令不存在)"
    echo ""
    echo "可能的原因:"
    echo "  - 设备未安装 KernelSU"
    echo "  - 设备未授予 adb root 权限"
    echo "  - KernelSU 版本不支持 ksud 命令"
    exit 1
fi
echo "[成功] KernelSU 已安装"
echo ""

echo "[3/4] 提取 KernelSU 日志..."

# 检查 KernelSU 日志目录是否存在
KSU_DIR_EXISTS=$(adb shell su -c "test -d /data/adb/ksu/log && echo 'exists' || echo 'not_exists'")

if [ "$KSU_DIR_EXISTS" = "exists" ]; then
    echo ""
    echo "[方法1] 从 /data/adb/ksu/log 提取日志文件..."

    # 列出日志文件
    echo "[信息] 可用的日志文件:"
    adb shell su -c "ls -lh /data/adb/ksu/log"

    # 提取所有日志文件
    echo ""
    echo "[信息] 提取日志文件到 logs/KernelSU/ ..."
    adb shell su -c "cp -r /data/adb/ksu/log/* /data/local/tmp/ksu_logs_copy/"
    adb pull /data/local/tmp/ksu_logs_copy/ logs/KernelSU/
    adb shell su -c "rm -rf /data/local/tmp/ksu_logs_copy/"

    echo ""
    echo "[成功] 日志已提取到 logs/KernelSU/ 目录"
else
    echo "[信息] /data/adb/ksu/log 目录不存在，尝试其他方法..."
    echo ""
fi

# 方法2：使用 ksud 命令获取版本信息
echo "[方法2] 获取 KernelSU 版本信息..."
adb shell su -c "ksu version" > logs/KernelSU/version.txt 2>&1
echo "[成功] 版本信息已保存到 logs/KernelSU/version.txt"
cat logs/KernelSU/version.txt

# 方法3：获取 KernelSU 模块列表
echo ""
echo "[方法3] 获取已安装的 KernelSU 模块..."
adb shell su -c "ls -1 /data/adb/modules" > logs/KernelSU/modules_list.txt 2>&1
echo "[成功] 模块列表已保存到 logs/KernelSU/modules_list.txt"
cat logs/KernelSU/modules_list.txt

# 方法4：获取模块详细信息
if [ -s logs/KernelSU/modules_list.txt ]; then
    echo ""
    echo "[方法4] 获取每个模块的详细信息..."
    while IFS= read -r module; do
        if [ -n "$module" ]; then
            echo "正在提取模块: $module"
            adb shell su -c "cat /data/adb/modules/$module/module.prop" > logs/KernelSU/module_$module.txt 2>&1
        fi
    done < logs/KernelSU/modules_list.txt
    echo "[成功] 模块详细信息已保存"
fi

# 方法5：从 logcat 获取 KernelSU 相关日志
echo ""
echo "[方法5] 从 logcat 提取 KernelSU 相关日志..."
adb logcat -d -s "KernelSU:*" "ksud:*" "ksumod:*" > logs/KernelSU/logcat_ksu.log 2>&1
echo "[成功] logcat 日志已保存到 logs/KernelSU/logcat_ksu.log"

# 方法6：获取系统日志（包含 KernelSU 相关）
echo ""
echo "[方法6] 获取系统日志（KernelSU 相关）..."
adb logcat -d -v time | grep -i "ksu\|kernelsu" > logs/KernelSU/system_ksu.log 2>&1
echo "[成功] 系统 KernelSU 日志已保存到 logs/KernelSU/system_ksu.log"

# 方法7：获取内核日志（KernelSU 是内核级 Root）
echo ""
echo "[方法7] 获取内核日志..."
adb shell su -c "dmesg" > logs/KernelSU/kernel.log 2>&1
echo "[成功] 内核日志已保存到 logs/KernelSU/kernel.log"

# 方法8：获取 SELinux 状态
echo ""
echo "[方法8] 获取 SELinux 状态..."
adb shell getenforce > logs/KernelSU/selinux_status.txt 2>&1
echo "[成功] SELinux 状态已保存到 logs/KernelSU/selinux_status.txt"
cat logs/KernelSU/selinux_status.txt

echo ""
echo "========================================"
echo "  提取完成！"
echo "========================================"
echo ""
echo "日志文件位置: logs/KernelSU/"
echo ""
echo "已提取的文件:"
ls -lh logs/KernelSU/
echo ""
