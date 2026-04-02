# 安装后执行的脚本
MODPATH=${0%/*}
MODID=zygisk_pandasu

# 记录日志
log() {
    echo "[PandaSU-Zygisk] $1"
}

# 检查 Magisk 是否安装
if [ ! -f /data/adb/magisk ]; then
    log "Magisk 未安装"
    exit 1
fi

log "PandaSU Zygisk 模块安装完成"
exit 0
