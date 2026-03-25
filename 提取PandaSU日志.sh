#!/system/bin/sh
# PandaSU 日志提取脚本 - 自动提取所有关键信息

OUTPUT_DIR="/sdcard/PandaSU_Logs"
mkdir -p "$OUTPUT_DIR"

echo "=== PandaSU 日志提取开始 ===" > "$OUTPUT_DIR/extract_log.txt"
date >> "$OUTPUT_DIR/extract_log.txt"
echo "" >> "$OUTPUT_DIR/extract_log.txt"

# 1. ZygiskNext 模块信息
echo "【1/6】提取 ZygiskNext 模块信息..." | tee -a "$OUTPUT_DIR/extract_log.txt"
if [ -f /data/adb/zygisksu/modules_info ]; then
    echo "=== modules_info ===" > "$OUTPUT_DIR/zygisksu_info.txt"
    cat /data/adb/zygisksu/modules_info >> "$OUTPUT_DIR/zygisksu_info.txt"
else
    echo "modules_info 不存在" > "$OUTPUT_DIR/zygisksu_info.txt"
fi

# 2. ZygiskNext 目录结构
echo "" >> "$OUTPUT_DIR/zygisksu_info.txt"
echo "=== ZygiskNext 目录结构 ===" >> "$OUTPUT_DIR/zygisksu_info.txt"
ls -laR /data/adb/zygisksu/ 2>&1 >> "$OUTPUT_DIR/zygisksu_info.txt"

# 3. 已安装模块列表
echo "【2/6】提取已安装模块列表..." | tee -a "$OUTPUT_DIR/extract_log.txt"
echo "=== 已安装模块 ===" > "$OUTPUT_DIR/modules_list.txt"
ls -la /data/adb/modules/ >> "$OUTPUT_DIR/modules_list.txt"

# 4. PandaSU 模块详情
echo "【3/6】提取 PandaSU 模块详情..." | tee -a "$OUTPUT_DIR/extract_log.txt"
if [ -d /data/adb/modules/zygisk_pandasu ]; then
    echo "=== zygisk_pandasu 目录结构 ===" > "$OUTPUT_DIR/pandasu_module.txt"
    ls -laR /data/adb/modules/zygisk_pandasu/ >> "$OUTPUT_DIR/pandasu_module.txt"
    
    echo "" >> "$OUTPUT_DIR/pandasu_module.txt"
    echo "=== module.prop ===" >> "$OUTPUT_DIR/pandasu_module.txt"
    cat /data/adb/modules/zygisk_pandasu/module.prop 2>&1 >> "$OUTPUT_DIR/pandasu_module.txt"
    
    echo "" >> "$OUTPUT_DIR/pandasu_module.txt"
    echo "=== SO 文件信息 ===" >> "$OUTPUT_DIR/pandasu_module.txt"
    ls -la /data/adb/modules/zygisk_pandasu/zygisk/ 2>&1 >> "$OUTPUT_DIR/pandasu_module.txt"
    file /data/adb/modules/zygisk_pandasu/zygisk/*.so 2>&1 >> "$OUTPUT_DIR/pandasu_module.txt" || true
else
    echo "zygisk_pandasu 模块不存在！" > "$OUTPUT_DIR/pandasu_module.txt"
fi

# 5. 系统属性
echo "【4/6】提取系统属性..." | tee -a "$OUTPUT_DIR/extract_log.txt"
echo "=== 关键系统属性 ===" > "$OUTPUT_DIR/system_props.txt"
getprop ro.build.tags >> "$OUTPUT_DIR/system_props.txt"
getprop ro.secure >> "$OUTPUT_DIR/system_props.txt"
getprop ro.debuggable >> "$OUTPUT_DIR/system_props.txt"
getprop ro.build.type >> "$OUTPUT_DIR/system_props.txt"
getprop ro.build.selinux >> "$OUTPUT_DIR/system_props.txt"

# 6. 最近 Zygisk 相关日志
echo "【5/6】提取 Zygisk 相关日志..." | tee -a "$OUTPUT_DIR/extract_log.txt"
logcat -d -b all | grep -iE "zygisk|panda|ZN-|zygisksu" 2>&1 | tail -100 > "$OUTPUT_DIR/zygisk_log.txt"

# 7. 进程信息
echo "【6/6】提取进程信息..." | tee -a "$OUTPUT_DIR/extract_log.txt"
echo "=== Zygote 进程 ===" > "$OUTPUT_DIR/process_info.txt"
ps -A | grep -E "zygote|init" >> "$OUTPUT_DIR/process_info.txt"

echo "" >> "$OUTPUT_DIR/extract_log.txt"
echo "=== 提取完成 ===" >> "$OUTPUT_DIR/extract_log.txt"
echo "日志位置: $OUTPUT_DIR" >> "$OUTPUT_DIR/extract_log.txt"
ls -la "$OUTPUT_DIR/" >> "$OUTPUT_DIR/extract_log.txt"

echo ""
echo "✅ 提取完成！"
echo "日志位置: $OUTPUT_DIR"
echo ""
echo "文件列表:"
ls -la "$OUTPUT_DIR/"
