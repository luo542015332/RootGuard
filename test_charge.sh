#!/system/bin/sh
echo "=== Test charge current control ==="
echo "Current limit: $(cat /sys/class/power_supply/battery/charge_control_limit)"
echo "Max limit: $(cat /sys/class/power_supply/battery/charge_control_limit_max)"
echo ""
echo "Try set limit to 8 (8A)..."
echo 8 > /sys/class/power_supply/battery/charge_control_limit 2>&1
echo "RC=$? new=$(cat /sys/class/power_supply/battery/charge_control_limit)"
echo ""
echo "Try set charge start threshold to 10..."
echo 10 > /sys/class/power_supply/battery/charge_control_start_threshold 2>&1
echo "RC=$? new=$(cat /sys/class/power_supply/battery/charge_control_start_threshold)"
echo ""
echo "Try set charge end threshold to 90..."
echo 90 > /sys/class/power_supply/battery/charge_control_end_threshold 2>&1
echo "RC=$? new=$(cat /sys/class/power_supply/battery/charge_control_end_threshold)"
