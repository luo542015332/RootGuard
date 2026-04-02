#!/system/sh
# 直接修改 Magisk 数据库授权 PandaSU

# 重新挂载为读写
mount -o remount,rw /data

# 获取 UID
PKG_UID=$(dumpsys package com.rootguard.app 2>/dev/null | grep userId= | head -1 | sed 's/.*userId=//' | tr -d ' ')
[ -z "$PKG_UID" ] && PKG_UID="10095"

echo "PandaSU UID: $PKG_UID"

# 尝试使用 magisk su 命令授权 (交互式)
# 这里直接执行，让它自动添加授权
su -mm -c "echo 'test'" >/dev/null 2>&1

# 如果上述不行，尝试直接操作数据库
/data/adb/magisk/busybox sqlite3 /data/adb/magisk.db "DELETE FROM policies WHERE package_name='com.rootguard.app'" 2>/dev/null
/data/adb/magisk/busybox sqlite3 /data/adb/magisk.db "INSERT INTO policies (uid, package_name, policy, until, logging, notification) VALUES ($PKG_UID, 'com.rootguard.app', 2, 0, 1, 1)" 2>/dev/null

echo "Done"
