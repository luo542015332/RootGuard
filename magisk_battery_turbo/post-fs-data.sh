# ============================================================
# PandaTurbo Battery Spoof - post-fs-data
# Runs in late_stage_trigger, very early boot
# Sets up the fake file before any service reads temp
# ============================================================

LOG=/data/local/tmp/batt_turbo.log
FAKE_FILE=/data/local/tmp/batt_fake_temp
REAL_NODE=/sys/class/power_supply/battery/temp

log() {
    echo "[POST-FS $(date '+%H:%M:%S')] $1" >> $LOG 2>/dev/null
}

# Ensure fake file exists
mkdir -p /data/local/tmp
echo "344" > "$FAKE_FILE" 2>/dev/null
chmod 666 "$FAKE_FILE" 2>/dev/null

log "post-fs-data: fake file ready at $FAKE_FILE"
