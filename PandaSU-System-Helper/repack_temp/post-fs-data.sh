#!/system/bin/sh
# PandaSU System Helper - 早期启动脚本

MODDIR=${0%/*}
LOG_FILE=/data/adb/pandasu/module.log

# 日志函数
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [post-fs-data] $1" >> $LOG_FILE
}

log "=========================================="
log "PandaSU System Helper Post-FS-Data"
log "=========================================="

# 早期重置属性（部分属性需要在post-fs-data阶段设置）
log "[早期] 重置关键属性..."

# 必须在早期设置的属性
resetprop ro.boot.vbmeta.device_state locked 2>/dev/null
resetprop ro.boot.verifiedbootstate green 2>/dev/null
resetprop ro.bootmode unknown 2>/dev/null

# 等待Zygisk服务启动
sleep 5

# 设置Zygisk DenyList（如果框架支持）
if [ -d /data/adb/zygisksu ]; then
    log "[早期] 配置Zygisk DenyList..."
    mkdir -p /data/adb/zygisksu
    echo 1 > /data/adb/zygisksu/denylist_policy 2>/dev/null
    echo 2 > /data/adb/zygisksu/denylist_enforce 2>/dev/null
    log "[早期] DenyList配置完成"
fi

log "[早期] Post-FS-Data阶段完成"

exit 0
