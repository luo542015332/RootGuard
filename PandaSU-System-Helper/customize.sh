#!/system/bin/sh
# PandaSU System Helper - 安装脚本

# 跳过挂载（纯脚本模块）
SKIPMOUNT=true

# 初始化
ui_print " "
ui_print "================================"
ui_print "PandaSU System Helper v2.1.0"
ui_print "系统级隐藏模块 (内置PandaSU)"
ui_print "================================"
ui_print " "

# 检测Root框架
ui_print "[1/5] 检测Root框架..."
if [ -d /data/adb/modules_update ]; then
    ui_print "      ✓ 检测到Magisk"
elif [ -d /data/adb/ksu ]; then
    ui_print "      ✓ 检测到KernelSU"
elif [ -d /data/adb/ap ]; then
    ui_print "      ✓ 检测到APatch"
else
    ui_print "      ✗ 未检测到支持的Root框架"
    abort "请使用Magisk/KernelSU/APatch"
fi

# 创建配置目录
ui_print "[2/5] 创建配置目录..."
mkdir -p /data/adb/pandasu
if [ ! -f /data/adb/pandasu/config ]; then
    echo "# PandaSU System Helper Configuration" > /data/adb/pandasu/config
    echo "hide_su=0" >> /data/adb/pandasu/config
    echo "hide_processes=0" >> /data/adb/pandasu/config
    echo "hide_mounts=0" >> /data/adb/pandasu/config
    echo "force_denylist=1" >> /data/adb/pandasu/config
    echo "sync_tricky=1" >> /data/adb/pandasu/config
    ui_print "      ✓ 已创建默认配置"
else
    ui_print "      ✓ 配置已存在"
fi

# 安装PandaSU APK
ui_print "[3/5] 安装PandaSU应用..."
if [ -f /data/adb/pandasu/PandaSU.apk ]; then
    # 备份旧版本
    if [ -f /data/data/com.rootguard.app/files/*.apk ]; then
        cp /data/data/com.rootguard.app/files/*.apk /data/adb/pandasu/PandaSU_backup.apk 2>/dev/null
    fi
fi

# 复制APK到模块目录
if [ -f /system/app/PandaSU/PandaSU.apk ]; then
    mkdir -p /data/adb/pandasu
    cp -f /system/app/PandaSU/PandaSU.apk /data/adb/pandasu/PandaSU.apk
    chmod 644 /data/adb/pandasu/PandaSU.apk
    ui_print "      ✓ PandaSU APK 已安装"
else
    ui_print "      ! 未找到PandaSU APK"
fi

# 设置权限
ui_print "[4/5] 设置权限..."
chmod 755 /data/adb/pandasu
chmod 644 /data/adb/pandasu/config 2>/dev/null
chmod 644 /data/adb/pandasu/PandaSU.apk 2>/dev/null
ui_print "      ✓ 权限设置完成"

# 创建日志文件
ui_print "[5/5] 创建日志文件..."
touch /data/adb/pandasu/module.log
chmod 644 /data/adb/pandasu/module.log
ui_print "      ✓ 日志文件已创建"

ui_print " "
ui_print "================================"
ui_print "安装完成！"
ui_print "内置PandaSU v2.2.0"
ui_print "模块将自动隐藏Root和框架"
ui_print "================================"
ui_print " "

exit 0
