#!/data/data/com.termux/files/usr/bin/bash

# PandaSU 模块日志提取脚本
# 运行方式: bash get_logs.sh

echo "=== 提取 PandaSU 模块日志 ==="
echo ""

# 提取 PandaSU 模块日志
echo "--- PandaSU-Module 日志 ---"
logcat -d -s PandaSU-Module 2>/dev/null

echo ""
echo "--- Xposed 相关日志 ---"
logcat -d 2>/dev/null | grep -i "xposed\|lsp" | tail -50

echo ""
echo "--- LSPosed 服务日志 ---"
logcat -d 2>/dev/null | grep -i "lspd\|lsposed" | tail -30

echo ""
echo "=== 完成 ==="
echo "请把上面的输出复制发送给我"