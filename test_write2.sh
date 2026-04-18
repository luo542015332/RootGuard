#!/system/bin/sh
echo "Current: $(cat /sys/class/power_supply/battery/temp)"
echo "Try 250 (25.0C)..."
echo 250 > /sys/class/power_supply/battery/temp 2>&1; echo "RC=$?"
cat /sys/class/power_supply/battery/temp
echo ""
echo "Try 0..."
echo 0 > /sys/class/power_supply/battery/temp 2>&1; echo "RC=$?"
cat /sys/class/power_supply/battery/temp
echo ""
echo "Try -1..."
echo --1 > /sys/class/power_supply/battery/temp 2>&1; echo "RC=$?"
cat /sys/class/power_supply/battery/temp
echo ""
echo "Check if thermal-engine is locking..."
ps -ef | grep -i thermal | grep -v grep
echo ""
echo "Check thermal config..."
find /vendor/etc -name "*thermal*" 2>/dev/null | head -5
echo ""
echo "Check charge_control..."
cat /sys/class/power_supply/battery/charge_control_limit 2>/dev/null
cat /sys/class/power_supply/battery/charge_control_limit_max 2>/dev/null
