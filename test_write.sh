#!/system/bin/sh
echo "=== Testing write to battery temp ==="
echo "Current temp: $(cat /sys/class/power_supply/battery/temp)"
echo "SELinux context: $(cat /proc/self/attr/current)"
echo "Attempt echo redirect..."
echo 300 > /sys/class/power_supply/battery/temp 2>&1
echo "RC1=$?"
echo "New temp: $(cat /sys/class/power_supply/battery/temp)"
echo ""
echo "Attempt tee..."
echo 310 | tee /sys/class/power_supply/battery/temp 2>&1
echo "RC2=$?"
echo "New temp: $(cat /sys/class/power_supply/battery/temp)"
echo ""
echo "Attempt dd..."
echo 320 | dd of=/sys/class/power_supply/battery/temp 2>&1
echo "RC3=$?"
echo "New temp: $(cat /sys/class/power_supply/battery/temp)"
echo ""
echo "Check if writable:"
ls -la /sys/class/power_supply/battery/temp
