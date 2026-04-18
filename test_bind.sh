#!/system/bin/sh
REAL=$(cat /sys/class/power_supply/battery/temp)
echo "Real=$REAL"
echo $REAL > /data/local/tmp/batt_fake_temp
mount --bind /data/local/tmp/batt_fake_temp /sys/class/power_supply/battery/temp
echo "After bind: $(cat /sys/class/power_supply/battery/temp)"
echo 250 > /data/local/tmp/batt_fake_temp
echo "Fake=250: $(cat /sys/class/power_supply/battery/temp)"
echo 999 > /data/local/tmp/batt_fake_temp
echo "Fake=999: $(cat /sys/class/power_supply/battery/temp)"
