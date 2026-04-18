#!/system/bin/sh
echo "Real temp: $(cat /sys/class/power_supply/battery/temp)"
mkdir -p /data/local/tmp
cat /sys/class/power_supply/battery/temp > /data/local/tmp/batt_fake_temp
chmod 666 /data/local/tmp/batt_fake_temp
mount --bind /data/local/tmp/batt_fake_temp /sys/class/power_supply/battery/temp
echo "Bind RC=$?"
echo "After bind: $(cat /sys/class/power_supply/battery/temp)"
echo "Module path: /data/local/tmp/batt_fake_temp"
