#!/bin/bash

# 测试 PandaSU 超级用户列表加载逻辑

echo "========== 开始测试 PandaSU 加载逻辑 =========="

# 步骤 1: 获取所有已安装应用
echo ""
echo "步骤 1: 获取所有已安装应用"
adb shell pm list packages > packages_list.txt

# 统计应用数量
TOTAL_APPS=$(cat packages_list.txt | wc -l)
echo "总应用数: $TOTAL_APPS"

# 提取包名列表
cat packages_list.txt | sed 's/package://g' > package_names.txt
echo "已提取包名列表"

# 步骤 2: 检查关键应用是否在列表中
echo ""
echo "步骤 2: 检查关键应用"
KEY_APPS=("com.tencent.mm" "com.tencent.mobileqq" "com.tencent.tmgp.sgame" "com.netease.dk")

for pkg in "${KEY_APPS[@]}"; do
    if grep -q "^$pkg$" package_names.txt; then
        echo "✓ 找到: $pkg"
        
        # 获取应用路径
        PATH_INFO=$(adb shell pm path $pkg | sed 's/package://g')
        echo "  路径: $PATH_INFO"
        
        # 判断是否为用户应用
        if echo "$PATH_INFO" | grep -q "^/data/app/"; then
            echo "  类型: 用户应用 ✓"
        else
            echo "  类型: 系统应用"
        fi
    else
        echo "✗ 未找到: $pkg"
    fi
done

# 步骤 3: 统计用户应用和系统应用
echo ""
echo "步骤 3: 统计应用类型"
USER_APPS=0
SYSTEM_APPS=0

while IFS= read -r pkg; do
    pkg=$(echo "$pkg" | tr -d '\r')
    if [ -n "$pkg" ]; then
        # 获取应用路径
        PATH_INFO=$(adb shell pm path "$pkg" 2>/dev/null | sed 's/package://g' | head -1)
        PATH_INFO=$(echo "$PATH_INFO" | tr -d '\r')
        
        if echo "$PATH_INFO" | grep -q "^/data/app/"; then
            USER_APPS=$((USER_APPS + 1))
        elif echo "$PATH_INFO" | grep -q "^/system/\|^/vendor/\|^/product/\|^/apex/"; then
            SYSTEM_APPS=$((SYSTEM_APPS + 1))
        else
            # 未知路径，尝试其他方式
            SYSTEM_APPS=$((SYSTEM_APPS + 1))
        fi
    fi
done < package_names.txt

echo "用户应用: $USER_APPS"
echo "系统应用: $SYSTEM_APPS"
echo "未知类型: $((TOTAL_APPS - USER_APPS - SYSTEM_APPS))"

# 步骤 4: 检测 Root 类型
echo ""
echo "步骤 4: 检测 Root 类型"

# 检查 KernelSU 是否安装
if adb shell pm path me.weishu.kernelsu > /dev/null 2>&1; then
    echo "✓ 检测到 Weishu KernelSU"
    
    # 检查数据库是否存在
    if adb shell test -f /data/data/me.weishu.kernelsu/databases/app.db; then
        echo "✓ KernelSU 数据库存在"
        
        # 查询数据库
        echo ""
        echo "步骤 5: 查询 KernelSU 授权策略"
        adb shell su -c "sqlite3 /data/data/me.weishu.kernelsu/databases/app.db '.tables'" 2>/dev/null || echo "  需要权限或数据库不可访问"
        
        # 尝试查询表结构
        adb shell su -c "sqlite3 /data/data/me.weishu.kernelsu/databases/app.db 'SELECT * FROM rules LIMIT 5'" 2>/dev/null > ksud_policies.txt || echo "  无法查询授权策略"
        
        if [ -s ksud_policies.txt ]; then
            POLICY_COUNT=$(wc -l < ksud_policies.txt)
            echo "找到 $POLICY_COUNT 条授权策略"
        fi
    else
        echo "✗ KernelSU 数据库不存在"
    fi
else
    echo "✗ 未检测到 KernelSU"
fi

# 检查 Magisk
if adb shell test -d /data/adb/magisk > /dev/null 2>&1; then
    echo "✓ 检测到 Magisk"
    
    if adb shell test -f /data/adb/magisk.db > /dev/null 2>&1; then
        echo "✓ Magisk 数据库存在"
    fi
else
    echo "✗ 未检测到 Magisk"
fi

# 步骤 6: 总结
echo ""
echo "========== 测试结果总结 =========="
echo "总应用数: $TOTAL_APPS"
echo "用户应用: $USER_APPS"
echo "系统应用: $SYSTEM_APPS"
echo "覆盖率: $((USER_APPS * 100 / TOTAL_APPS))%"

# 检查关键应用是否都被识别为用户应用
echo ""
echo "关键应用类型验证:"
for pkg in "${KEY_APPS[@]}"; do
    if grep -q "^$pkg$" package_names.txt; then
        PATH_INFO=$(adb shell pm path $pkg | sed 's/package://g' | head -1)
        if echo "$PATH_INFO" | grep -q "^/data/app/"; then
            echo "  ✓ $pkg - 用户应用"
        else
            echo "  ✗ $pkg - 不是用户应用 (路径: $PATH_INFO)"
        fi
    fi
done

echo ""
echo "========== 测试完成 =========="
