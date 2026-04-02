#!/system/sh
# 授予 PandaSU Root 权限

# 获取 PandaSU 的 uid
PKG_UID=$(dumpsys package com.rootguard.app | grep userId= | sed 's/userId=//' | sed 's/\(.*\)/\1 * 100000/')
UID=$(dumpsys package com.rootguard.app | grep userId= | sed 's/userId=//')

echo "PandaSU UID: $UID"

# 使用 magisk su 命令授权
magisk su -g -d com.rootguard.app

# 直接插入数据库
magisk --sqlite "DELETE FROM policies WHERE package_name='com.rootguard.app'"
magisk --sqlite "INSERT INTO policies (uid, package_name, policy, until, logging, notification) VALUES ($UID, 'com.rootguard.app', 2, 0, 1, 1)"

echo "权限已设置"
