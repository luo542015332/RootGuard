#!/system/bin/sh
# ============================================
#  PackageManager Hook 测试脚本
#  在 Android 设备上直接运行
# ============================================

echo "============================================"
echo "  PackageManager Hook 测试"
echo "============================================"
echo ""

echo "[1] 检查 LSPosed Manager..."
RESULT=$(pm path org.lsposed.manager 2>/dev/null)
if [ -n "$RESULT" ]; then
    echo "    发现: $RESULT"
else
    echo "    未发现 LSPosed Manager ✓"
fi
echo ""

echo "[2] 检查 Magisk..."
RESULT=$(pm path com.topjohnwu.magisk 2>/dev/null)
if [ -n "$RESULT" ]; then
    echo "    发现: $RESULT"
else
    echo "    未发现 Magisk ✓"
fi
echo ""

echo "[3] 检查 KernelSU..."
RESULT=$(pm path me.weishu.kernelsu 2>/dev/null)
if [ -n "$RESULT" ]; then
    echo "    发现: $RESULT"
else
    echo "    未发现 KernelSU ✓"
fi
echo ""

echo "[4] 列出包含 'lsp' 的包..."
RESULT=$(pm list packages 2>/dev/null | grep -i "lsp")
if [ -n "$RESULT" ]; then
    echo "$RESULT"
else
    echo "    没有找到包含 'lsp' 的包 ✓"
fi
echo ""

echo "[5] 列出包含 'magisk' 的包..."
RESULT=$(pm list packages 2>/dev/null | grep -i "magisk")
if [ -n "$RESULT" ]; then
    echo "$RESULT"
else
    echo "    没有找到包含 'magisk' 的包 ✓"
fi
echo ""

echo "[6] 列出包含 'xposed' 的包..."
RESULT=$(pm list packages 2>/dev/null | grep -i "xposed")
if [ -n "$RESULT" ]; then
    echo "$RESULT"
else
    echo "    没有找到包含 'xposed' 的包 ✓"
fi
echo ""

echo "[7] 列出包含 'root' 的包..."
RESULT=$(pm list packages 2>/dev/null | grep -i "root")
if [ -n "$RESULT" ]; then
    echo "$RESULT"
else
    echo "    没有找到包含 'root' 的包 ✓"
fi
echo ""

echo "[8] 列出包含 'hide' 的包..."
RESULT=$(pm list packages 2>/dev/null | grep -i "hide")
if [ -n "$RESULT" ]; then
    echo "$RESULT"
else
    echo "    没有找到包含 'hide' 的包 ✓"
fi
echo ""

echo "[9] 检查 /data/adb/lspd 目录..."
if [ -d "/data/adb/lspd" ]; then
    echo "    目录存在: $(ls -la /data/adb/lspd 2>/dev/null)"
else
    echo "    目录不存在 ✓"
fi
echo ""

echo "[10] 检查 /data/adb/magisk 目录..."
if [ -d "/data/adb/magisk" ]; then
    echo "    目录存在"
else
    echo "    目录不存在 ✓"
fi
echo ""

echo "[11] 获取系统属性..."
echo "    ro.debuggable: $(getprop ro.debuggable)"
echo "    ro.secure: $(getprop ro.secure)"
echo "    ro.build.type: $(getprop ro.build.type)"
echo ""

echo "============================================"
echo "  测试完成"
echo "============================================"
echo ""
echo "如果上述检测都返回'未发现'或'不存在'，"
echo "说明 PackageManager Hook 已成功隐藏 Root 框架。"
