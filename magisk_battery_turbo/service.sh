# PandaTurbo Battery Spoof - service.sh
# mount --bind overlay: /data/local/tmp/batt_fake_temp -> /sys/class/power_supply/battery/temp
# Android reads the fake file transparently through the bind mount

FAKE=/data/local/tmp/batt_fake_temp
NODE=/sys/class/power_supply/battery/temp
LOG=/data/local/tmp/batt_turbo.log

mkdir -p /data/local/tmp

# Init fake file with current real temperature
if [ -f $NODE ]; then
    cat $NODE > $FAKE 2>/dev/null
else
    echo 344 > $FAKE 2>/dev/null
fi
chmod 666 $FAKE 2>/dev/null

# mount --bind: no umount needed, directly overlays
mount --bind $FAKE $NODE 2>$LOG

echo "$FAKE" > /data/local/tmp/batt_turbo_config
chmod 666 /data/local/tmp/batt_turbo_config 2>/dev/null
