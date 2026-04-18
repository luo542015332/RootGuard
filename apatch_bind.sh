#!/system/bin/sh
# APatch-compatible startup: setup bind mount for battery temp spoofing
# Called from the app at startup if module is not installed

FAKE=/data/local/tmp/batt_fake_temp
NODE=/sys/class/power_supply/battery/temp
LOG=/data/local/tmp/batt_turbo_apatch.log

log() {
    echo "[$(date '+%H:%M:%S')] $1" >> $LOG 2>/dev/null
}

# Already mounted?
if mount | grep -q "$NODE"; then
    log "Already mounted"
    exit 0
fi

mkdir -p /data/local/tmp

# Init fake file
if [ -f $NODE ]; then
    cat $NODE > $FAKE 2>/dev/null
else
    echo 344 > $FAKE 2>/dev/null
fi
chmod 666 $FAKE 2>/dev/null

# Bind mount
mount --bind $FAKE $NODE 2>> $LOG
if [ $? -eq 0 ]; then
    log "OK"
else
    log "FAIL"
fi
