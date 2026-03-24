#!/system/bin/sh
MODDIR=${0%/*}

(
    # 等待系统完全启动
    until [ $(getprop sys.boot_completed) -eq 1 ]; do
        sleep 5
    done
    sleep 30

    # 适配Magisk/KernelSU/APatch的busybox路径，解决pgrep等命令失效问题
    if [ -f "/data/adb/magisk/busybox" ]; then
        BB="/data/adb/magisk/busybox"
    elif [ -f "/data/adb/ksu/bin/busybox" ]; then
        BB="/data/adb/ksu/bin/busybox"
    elif [ -f "/data/adb/apatch/bin/busybox" ]; then
        BB="/data/adb/apatch/bin/busybox"
    else
        BB="busybox"
    fi
    export PATH="${BB}:${PATH}"

    # 检测scripts目录是否存在，避免目录缺失导致失败
    SCRIPTS_DIR="${MODDIR}/scripts"
    if [ ! -d "${SCRIPTS_DIR}" ]; then
        mkdir -p "${SCRIPTS_DIR}"
        chmod 755 "${SCRIPTS_DIR}"
    fi

    # 赋予脚本权限
    chmod 777 "${SCRIPTS_DIR}"/*

    # 执行bs.sh
    BS_SCRIPT="${SCRIPTS_DIR}/bs.sh"
    if [ -f "${BS_SCRIPT}" ]; then
        sh "${BS_SCRIPT}" >/dev/null 2>&1
    fi
)
