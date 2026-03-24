#!/system/bin/sh

# ===================== 配置区 =====================
TARGET_DIR="/data/adb/tricky_store"
TARGET_FILE="${TARGET_DIR}/target.txt"
TEMP_FILE="/data/local/tmp/target_temp.txt"

# 配置文件路径
CONFIG_DIR="/storage/emulated/0/Android/bszip"
B_FILE="${CONFIG_DIR}/b.txt"
S_FILE="${CONFIG_DIR}/s.txt"

# ===================== 函数定义 =====================

# 错误退出
error_exit() {
    echo "[ERROR] $1"
    rm -f "$TEMP_FILE"
    exit 1
}

# 信息输出
info_echo() {
    echo "[INFO] $1"
}

# ===================== 主程序 =====================

info_echo "开始执行包名收集脚本..."

# 1. 检查Root权限
if [ "$(id -u)" -ne 0 ]; then
    error_exit "请以Root权限执行此脚本！"
fi

# 2. 创建目标目录
info_echo "检查并创建目标目录..."
mkdir -p "$TARGET_DIR" || error_exit "创建目录 $TARGET_DIR 失败！"
chmod 755 "$TARGET_DIR"

# 3. 创建配置目录（如果不存在）
if [ ! -d "$CONFIG_DIR" ]; then
    info_echo "创建配置目录 $CONFIG_DIR ..."
    mkdir -p "$CONFIG_DIR" || error_exit "创建配置目录失败！"
    chmod 755 "$CONFIG_DIR"
fi

# 4. 获取所有已安装应用的包名（包括系统应用和用户应用）
info_echo "正在获取已安装应用包名..."
pm list packages | sed 's/package://g' | sort > "$TEMP_FILE" || error_exit "获取包名列表失败！"

# 统计获取到的数量
TOTAL_COUNT=$(wc -l < "$TEMP_FILE")
info_echo "共获取到 $TOTAL_COUNT 个应用包名"

# 5. 追加 b.txt 中的包名（如果不存在则创建空文件）
if [ -f "$B_FILE" ]; then
    info_echo "检测到 b.txt，读取追加包名..."
    # 读取非空行且非注释行（以#开头的为注释）
    B_PACKAGES=$(grep -v '^#' "$B_FILE" 2>/dev/null | grep -v '^$')
    if [ -n "$B_PACKAGES" ]; then
        echo "$B_PACKAGES" >> "$TEMP_FILE"
        B_COUNT=$(echo "$B_PACKAGES" | wc -l)
        info_echo "从 b.txt 追加 $B_COUNT 个包名"
    else
        info_echo "b.txt 为空或无非注释内容"
    fi
else
    info_echo "b.txt 不存在，创建空文件..."
    touch "$B_FILE"
    chmod 644 "$B_FILE"
fi

# 6. 去重处理
info_echo "执行去重处理..."
sort -u "$TEMP_FILE" -o "$TEMP_FILE" || error_exit "去重失败！"

# 7. 删除 s.txt 中指定的包名（如果不存在则创建空文件）
if [ -f "$S_FILE" ]; then
    info_echo "检测到 s.txt，执行删除操作..."
    S_PACKAGES=$(grep -v '^#' "$S_FILE" 2>/dev/null | grep -v '^$')
    if [ -n "$S_PACKAGES" ]; then
        # 创建临时过滤文件
        TEMP_FILTERED="/data/local/tmp/target_filtered.txt"
        
        # 逐行检查，不在删除列表中的包名保留
        while IFS= read -r pkg; do
            if [ -n "$pkg" ]; then
                # 检查是否在删除列表中（精确匹配）
                if ! echo "$S_PACKAGES" | grep -qx "$pkg"; then
                    echo "$pkg" >> "$TEMP_FILTERED"
                fi
            fi
        done < "$TEMP_FILE"
        
        mv "$TEMP_FILTERED" "$TEMP_FILE"
        S_COUNT=$(echo "$S_PACKAGES" | wc -l)
        info_echo "已删除 s.txt 中指定的 $S_COUNT 个包名"
    else
        info_echo "s.txt 为空或无非注释内容"
    fi
else
    info_echo "s.txt 不存在，创建空文件..."
    touch "$S_FILE"
    chmod 644 "$S_FILE"
fi

# 8. 写入最终目标文件
info_echo "写入目标文件 $TARGET_FILE ..."
cp -f "$TEMP_FILE" "$TARGET_FILE" || error_exit "写入目标文件失败！"
chmod 644 "$TARGET_FILE"

# 9. 清理临时文件
rm -f "$TEMP_FILE"

# 10. 输出结果
FINAL_COUNT=$(wc -l < "$TARGET_FILE")
echo ""
echo "===== 脚本执行完成 ====="
echo "📌 目标文件：$TARGET_FILE"
echo "📊 最终包名数量：$FINAL_COUNT 个"
echo "📁 配置文件目录：$CONFIG_DIR"
echo "   - b.txt: 追加包名列表"
echo "   - s.txt: 删除包名列表"
exit 0