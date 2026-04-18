#!/system/bin/sh
# 测试非 root 写 /data/local/tmp/batt_fake_temp
echo "=== as system user (no root) ==="
su system -c 'echo 777 > /data/local/tmp/batt_fake_temp'
RESULT=$(cat /sys/class/power_supply/battery/temp)
echo "Sysfs read: $RESULT"

echo "=== as shell user ==="
su shell -c 'echo 888 > /data/local/tmp/batt_fake_temp'
RESULT2=$(cat /sys/class/power_supply/battery/temp)
echo "Sysfs read: $RESULT2"

echo "=== direct write (no su) ==="
echo 666 > /data/local/tmp/batt_fake_temp
RESULT3=$(cat /sys/class/power_supply/battery/temp)
echo "Sysfs read: $RESULT3"
