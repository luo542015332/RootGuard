#!/system/bin/sh
# PandaSU System Helper - 后台服务脚本

MODDIR=${0%/*}
CONFIG_FILE=/data/adb/pandasu/config
LOG_FILE=/data/adb/pandasu/module.log
APK_FILE=$MODDIR/PandaSU-v2.1.8.apk
PKG_NAME="com.rootguard.app"

# 日志函数
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> $LOG_FILE
}

# ========== APK 自动安装 ==========
# 检查是否需要安装/更新 APP
if [ -f "$APK_FILE" ]; then
    log "[APK安装] 检测到APK文件，开始安装..."

    # 检查是否已安装
    if pm list packages | grep -q "^package:$PKG_NAME$"; then
        # 已安装，检查版本
        CURRENT_VERSION=$(dumpsys package $PKG_NAME | grep versionName | head -1 | sed 's/.*versionName=//')
        NEW_VERSION=$(dumpsys package $PKG_NAME 2>/dev/null | head -1)
        log "[APK安装] 当前版本: $CURRENT_VERSION，将更新..."
    else
        log "[APK安装] 未安装PandaSU，将全新安装..."
    fi

    # 静默安装APK
    pm install -r "$APK_FILE" 2>&1 | while read line; do
        log "[APK安装] $line"
    done

    # 检查安装结果
    if pm list packages | grep -q "^package:$PKG_NAME$"; then
        log "[APK安装] 安装成功！"
        # 删除APK文件节省空间
        rm -f "$APK_FILE"
        log "[APK安装] APK文件已清理"
    else
        log "[APK安装] 安装失败，请手动检查"
    fi
else
    log "[APK安装] 未找到APK文件，跳过自动安装"
fi
# ========== APK 自动安装结束 ==========

# 安全模式检查：如果存在安全模式标志文件，跳过所有操作
if [ -f /data/adb/pandasu/safe_mode ]; then
    log "[安全模式] 检测到安全模式标志，模块功能已禁用"
    log "[安全模式] 如需启用，请删除 /data/adb/pandasu/safe_mode 并重启"
    # 只保留一个空循环，不执行任何操作
    while true; do
        sleep 60
    done
fi

# 3. TrickyStore白名单同步
if [ "$sync_tricky" = "1" ] && [ -d /data/adb/tricky_store ]; then
    log "[任务] 同步PandaSU配置到TrickyStore..."
    
    # 读取PandaSU隔离配置
    PANDA_CONFIG_DIR=/data/data/com.rootguard.app/files
    if [ -d $PANDA_CONFIG_DIR ]; then
        # 收集所有隔离的包名
        > /data/adb/pandasu/tricky_packages.tmp
        
        # 从PandaSU配置目录读取
        find $PANDA_CONFIG_DIR -name "*.json" 2>/dev/null | while read config; do
            grep -o '"packageName":"[^"]*"' "$config" 2>/dev/null | sed 's/.*":"\([^"]*\)".*/\1/' >> /data/adb/pandasu/tricky_packages.tmp
        done
        
        # 去重并写入TrickyStore
        if [ -s /data/adb/pandasu/tricky_packages.tmp ]; then
            sort -u /data/adb/pandasu/tricky_packages.tmp > /data/adb/tricky_store/target.txt
            echo "com.android.vending" >> /data/adb/tricky_store/target.txt
            echo "com.google.android.gms" >> /data/adb/tricky_store/target.txt
            echo "com.google.android.gsf" >> /data/adb/tricky_store/target.txt
            
            log "[结果] 已同步 $(wc -l < /data/adb/tricky_store/target.txt) 个包到TrickyStore"
        else
            log "[结果] 未找到PandaSU隔离配置"
        fi
        
        rm -f /data/adb/pandasu/tricky_packages.tmp
    else
        log "[结果] PandaSU应用数据目录未找到"
    fi
fi

# 4. 进程隐藏（如果启用）
if [ "$hide_processes" = "1" ]; then
    log "[任务] 隐藏Root进程..."
    
    # 隐藏常见的Root进程名
    for proc in "magiskd" "zygisk" "ksud" "pandahook"; do
        if [ -d /proc/$proc ]; then
            # 通过mount --bind隐藏/proc/$proc
            if [ ! -d /dev/panda_hide ]; then
                mkdir -p /dev/panda_hide
            fi
            mount --bind /dev/panda_hide /proc/$proc 2>/dev/null
        fi
    done
    
    log "[结果] 进程隐藏已应用"
fi

# 5. su文件隐藏（如果启用）
if [ "$hide_su" = "1" ]; then
    log "[任务] 准备su文件隐藏（需要Zygisk Hook）"
    # 实际隐藏由Zygisk so实现，这里只是标记
    echo "1" > /data/adb/pandasu/hide_su_active
fi

# 6. mount信息过滤（如果启用）
if [ "$hide_mounts" = "1" ]; then
    log "[任务] 准备mount信息过滤"
    # 由Zygisk so实现/proc/self/mounts过滤
    echo "1" > /data/adb/pandasu/hide_mounts_active
fi

log "[循环] 任务执行完成，等待60秒..."
sleep 60

done

exit 0
