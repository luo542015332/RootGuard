#!/system/bin/sh
# Reset: try to remove bind, then read real value
umount /sys/class/power_supply/battery/temp 2>/dev/null
sleep 1
REAL=$(cat /sys/class/power_supply/battery/temp)
echo "Real=$REAL"

# Setup fake
echo $REAL > /data/local/tmp/batt_fake_temp
chmod 666 /data/local/tmp/batt_fake_temp

# Bind (no umount needed)
mount --bind /data/local/tmp/batt_fake_temp /sys/class/power_supply/battery/temp
echo "Bind RC=$?"
echo "After bind: $(cat /sys/class/power_supply/battery/temp)"

# Test fake writes
for val in 250 300 0 999; do
    echo $val > /data/local/tmp/batt_fake_temp
    RESULT=$(cat /sys/class/power_supply/battery/temp)
    echo "Write $val -> sysfs read: $RESULT"
done
