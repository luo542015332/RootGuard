#!/system/bin/sh
# PandaTurbo Battery Spoof - APatch/Magisk 通用绑定脚本
# mount --bind: /data/local/tmp/batt_fake_temp -> /sys/class/power_supply/battery/temp
# 执行后所有对 sysfs 温度节点的读都返回 fake 文件内容

FAKE=/data/local/tmp/batt_fake_temp
NODE=/sys/class/power_supply/battery/temp
LOG=/data/local/tmp/batt_turbo.log

mkdir -p /data/local/tmp

# 初始化 fake 文件（保存真实温度供恢复）
if [ -f "$NODE" ]; then
    cat "$NODE" > "$FAKE" 2>/dev/null
else
    echo 344 > "$FAKE" 2>/dev/null
fi
chmod 666 "$FAKE" 2>/dev/null

# mount --bind 直接叠加，不需要 umount
mount --bind "$FAKE" "$NODE" 2>> "$LOG"
if [ $? -eq 0 ]; then
    echo "$FAKE" > /data/local/tmp/batt_turbo_config
fi
