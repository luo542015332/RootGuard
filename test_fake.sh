#!/system/bin/sh
echo "=== Setup fake ==="
cat /sys/class/power_supply/battery/temp > /data/local/tmp/batt_fake_temp
chmod 666 /data/local/tmp/batt_fake_temp
mount --bind /data/local/tmp/batt_fake_temp /sys/class/power_supply/battery/temp
echo "BIND_RC=$?"

echo "=== Test fake writes ==="
for v in 250 300 0 999; do
    echo $v > /data/local/tmp/batt_fake_temp
    RESULT=$(cat /sys/class/power_supply/battery/temp)
    echo "Write[$v] Read[$RESULT]"
done
