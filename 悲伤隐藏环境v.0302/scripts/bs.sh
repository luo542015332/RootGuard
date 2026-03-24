#!/bin/sh
# 核心配置区：弃用数组，改用字符串存储脚本路径
MODDIR="/data/adb/modules/bszip"
SCRIPT_NAME="bs.sh"
SCRIPT_PATH="${MODDIR}/scripts/${SCRIPT_NAME}"
SLEEP_INTERVAL=60
# 用空格分隔脚本路径，替代数组
SPECIFIC_FILES="${MODDIR}/scripts/ts.sh"

# 执行指定文件函数：遍历字符串路径
execute_specific_files() {
  for file in ${SPECIFIC_FILES}; do
    if [ -f "${file}" ]; then
      chmod +x "${file}" >/dev/null 2>&1
      /bin/sh "${file}" >/dev/null 2>&1
    fi
  done
}

# 核心执行区
chmod 777 "${SCRIPT_PATH}" >/dev/null 2>&1
chmod +x "${SCRIPT_PATH}" >/dev/null 2>&1

export PATH=/system/bin:/system/xbin:/vendor/bin:/sdcard:$PATH
export LD_LIBRARY_PATH=/system/lib64:/system/lib:$LD_LIBRARY_PATH

# ========== 新增：检测并创建文件 ==========
CHECK_DIR="/storage/emulated/0/Android/bszip"
B_FILE="${CHECK_DIR}/b.txt"
S_FILE="${CHECK_DIR}/s.txt"

# 创建目录（如果不存在）
if [ ! -d "${CHECK_DIR}" ]; then
  mkdir -p "${CHECK_DIR}"
fi

# 创建 b.txt（如果不存在）
if [ ! -f "${B_FILE}" ]; then
  cat > "${B_FILE}" << 'EOF'
android
com.google.android.gms
com.google.android.gsf
com.android.vending
EOF
fi

# 创建 s.txt（如果不存在）
if [ ! -f "${S_FILE}" ]; then
  cat > "${S_FILE}" << 'EOF'
0
EOF
fi

# 循环执行
while true; do
  execute_specific_files
  sleep "${SLEEP_INTERVAL}"
done