#!/system/bin/sh

MODDIR=${0%/*}

# 显示面板信息
echo -e "悲伤压缩包"

# 定义文件路径
POLICY_FILE="/data/adb/zygisksu/denylist_policy"
ENFORCE_FILE="/data/adb/zygisksu/denylist_enforce"

# 任务1：检测并修正Root隐藏配置
task1() {
    [ -f "$POLICY_FILE" ] || touch "$POLICY_FILE"
    [ -f "$ENFORCE_FILE" ] || touch "$ENFORCE_FILE"

    current_policy=$(cat "$POLICY_FILE")
    [ "$current_policy" != "1" ] && echo "1" > "$POLICY_FILE"

    current_enforce=$(cat "$ENFORCE_FILE")
    [ "$current_enforce" != "2" ] && echo "2" > "$ENFORCE_FILE"

    echo "全局隐藏root开启"
}

# 按顺序执行任务
task1

echo -e "\n所有任务执行完毕"