#!/system/bin/sh

# 配置路径
TARGET_DIR="/data/adb/modules/bszip/scripts/"
BS_FILE="$TARGET_DIR/bs.sh"
BS1_FILE="$TARGET_DIR/bs1.sh"

# 检查并执行切换逻辑
if [ -f "$BS_FILE" ]; then
    mv "$BS_FILE" "$BS1_FILE"
    echo "已关闭自动更新Ts包名功能"
elif [ -f "$BS1_FILE" ]; then
    mv "$BS1_FILE" "$BS_FILE"
    echo "已打开自动更新Ts包名功能"
else
    echo "错误：未找到 bs.sh 或 bs1.sh 文件"
    exit 1
fi