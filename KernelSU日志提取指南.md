# KernelSU 日志提取指南

## 概述

KernelSU 的日志系统与 Magisk 不同，本指南提供多种方法来提取 KernelSU 相关的日志。

## 方法一：使用自动化脚本（推荐）

### Windows 用户

直接运行项目根目录的批处理脚本：

```bash
提取KernelSU日志.bat
```

这个脚本会自动执行以下操作：
1. 检查设备连接和 Root 权限
2. 提取 `/data/adb/ksu/log` 目录下的日志文件
3. 获取 KernelSU 版本信息
4. 获取已安装模块列表
5. 提取每个模块的详细信息（module.prop）
6. 从 logcat 提取 KernelSU 相关日志
7. 提取系统日志中的 KernelSU 相关条目

所有日志会保存到 `logs/KernelSU/` 目录。

## 方法二：手动使用 ADB 命令

### 前提条件

1. 设备已安装 KernelSU
2. 设备已授予 ADB Root 权限
3. 电脑已安装 Android SDK Platform Tools

### 检查 KernelSU 是否安装

```bash
adb shell su -c "which ksud"
```

如果返回路径（如 `/data/adb/ksu/bin/ksud`），则表示已安装。

### 1. 提取 KernelSU 日志目录

KernelSU 的日志通常存储在 `/data/adb/ksu/log/` 目录：

```bash
# 检查日志目录是否存在
adb shell su -c "ls -l /data/adb/ksu/log/"

# 提取所有日志文件
adb pull /data/adb/ksu/log/ ./ksu_logs/
```

### 2. 获取 KernelSU 版本信息

```bash
# 获取版本号
adb shell su -c "ksu version"

# 获取详细版本信息（如果支持）
adb shell su -c "ksu --version"
```

### 3. 获取模块列表

```bash
# 列出所有已安装的模块
adb shell su -c "ls -1 /data/adb/modules"

# 查看模块详细信息
adb shell su -c "cat /data/adb/modules/<模块ID>/module.prop"
```

示例：
```bash
adb shell su -c "cat /data/adb/modules/zygisksu/module.prop"
```

### 4. 从 logcat 提取 KernelSU 日志

```bash
# 实时查看 KernelSU 日志
adb logcat -s "KernelSU:*" "ksud:*" "ksumod:*"

# 导出最近的 KernelSU 日志
adb logcat -d -s "KernelSU:*" "ksud:*" "ksumod:*" > ksu_logcat.log

# 导出更详细的系统日志（包含 KernelSU）
adb logcat -d -v time | grep -i "ksu\|kernelsu" > system_ksu.log
```

### 5. 获取内核日志（KernelSU 是内核级 Root）

```bash
# 获取内核日志（需要 Root）
adb shell su -c "dmesg" > kernel.log

# 过滤 KernelSU 相关的内核日志
adb shell su -c "dmesg | grep -i ksu" > kernel_ksu.log
```

### 6. 检查 SELinux 策略

KernelSU 的某些功能与 SELinux 相关：

```bash
# 查看 SELinux 状态
adb shell getenforce

# 查看 SELinux 审计日志
adb logcat -d | grep -i "avc.*ksu" > selinux_ksu.log
```

## 方法三：从应用内提取日志

如果你的 RootGuard 应用已安装并正在运行，可以使用以下方法：

### 1. 使用 Logcat 获取应用日志

```bash
# 获取 PandaSU 应用的所有日志
adb logcat -d | grep "PandaSU" > pandasu_app.log

# 获取 PandaSU 的 Debug 日志
adb logcat -d *:D | grep "PandaSU" > pandasu_debug.log

# 获取 PandaSU 的 Error 日志
adb logcat -d *:E | grep "PandaSU" > pandasu_errors.log
```

### 2. 查看应用的内部日志存储

RootGuard 应用使用内置的 Logger 类记录日志，这些日志可以通过应用的 UI 界面查看：

1. 打开 RootGuard 应用
2. 点击底部的「日志」标签页
3. 查看最近的日志条目
4. 点击右上角的刷新图标更新日志
5. 如需导出，可以手动复制日志内容

## 日志分析要点

### 常见的 KernelSU 日志位置

| 位置 | 说明 |
|------|------|
| `/data/adb/ksu/log/` | KernelSU 主日志目录 |
| `/data/adb/ksu/log/logcat.log` | logcat 日志副本 |
| `/data/adb/ksu/log/kernel.log` | 内核日志副本 |
| `/data/adb/modules/` | 已安装的模块目录 |
| `/proc/kallsyms` | 内核符号表（检查 KSU hook） |

### 日志级别说明

- **DEBUG**: 详细调试信息
- **INFO**: 一般信息
- **WARNING**: 警告信息
- **ERROR**: 错误信息

### 常见问题排查

#### 问题1：无法访问 /data/adb/ksu/log/

**原因**：
- KernelSU 未正确安装
- Root 权限未授予
- 日志目录不存在（某些 KernelSU 版本不存储日志文件）

**解决方案**：
```bash
# 检查 KernelSU 是否运行
adb shell su -c "ls -l /dev/ksu"

# 尝试使用 ksud 命令获取状态
adb shell su -c "ksud status"
```

#### 问题2：模块备份失败

**常见错误日志**：
```
备份模块失败: Permission denied
全部 0 个备份恢复成功
```

**排查步骤**：
1. 检查模块目录权限：
   ```bash
   adb shell su -c "ls -la /data/adb/modules/"
   ```
2. 检查 SELinux 状态：
   ```bash
   adb shell getenforce
   ```
3. 查看相关的 SELinux 审计日志：
   ```bash
   adb logcat -d | grep -i "avc.*module"
   ```

#### 问题3：日志文件为空

**可能原因**：
- KernelSU 日志记录功能未启用
- 日志已轮转（被清理）
- 设备刚重启，日志未生成

**解决方案**：
```bash
# 尝试触发一些 KernelSU 操作（如启用/禁用模块）
adb shell su -c "ksud enable <module_id>"

# 然后立即检查日志
adb shell su -c "ls -lht /data/adb/ksu/log/"
```

## 完整的日志收集脚本示例

如果你想收集完整的诊断信息，可以使用以下脚本：

```bash
#!/bin/bash
# 完整的 KernelSU 诊断信息收集脚本

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DIAG_DIR="ksu_diagnosis_$TIMESTAMP"
mkdir -p $DIAG_DIR

echo "开始收集 KernelSU 诊断信息..."

# 1. 设备信息
adb shell getprop > $DIAG_DIR/device_props.txt
echo "设备信息已保存"

# 2. KernelSU 版本
adb shell su -c "ksu version" > $DIAG_DIR/ksu_version.txt 2>&1
echo "KernelSU 版本已保存"

# 3. 模块列表
adb shell su -c "ls -1 /data/adb/modules" > $DIAG_DIR/modules_list.txt 2>&1
echo "模块列表已保存"

# 4. 模块详细信息
while IFS= read -r module; do
    adb shell su -c "cat /data/adb/modules/$module/module.prop" > $DIAG_DIR/module_$module.txt 2>&1
done < $DIAG_DIR/modules_list.txt
echo "模块详细信息已保存"

# 5. KernelSU 日志
if adb shell su -c "test -d /data/adb/ksu/log && echo 'exists'" | grep -q "exists"; then
    adb pull /data/adb/ksu/log $DIAG_DIR/ksu_log 2>&1
    echo "KernelSU 日志已保存"
else
    echo "KernelSU 日志目录不存在"
fi

# 6. logcat KernelSU 日志
adb logcat -d -s "KernelSU:*" "ksud:*" "ksumod:*" > $DIAG_DIR/logcat_ksu.log 2>&1
echo "logcat KernelSU 日志已保存"

# 7. 系统日志（KernelSU 相关）
adb logcat -d -v time | grep -i "ksu\|kernelsu" > $DIAG_DIR/system_ksu.log 2>&1
echo "系统日志已保存"

# 8. 内核日志
adb shell su -c "dmesg" > $DIAG_DIR/kernel.log 2>&1
echo "内核日志已保存"

# 9. SELinux 状态
adb shell getenforce > $DIAG_DIR/selinux_status.txt
echo "SELinux 状态已保存"

# 10. SELinux 审计日志
adb logcat -d | grep -i "avc.*ksu\|avc.*module" > $DIAG_DIR/selinux_audit.log 2>&1
echo "SELinux 审计日志已保存"

echo "======================================="
echo "诊断信息收集完成！"
echo "保存位置: $DIAG_DIR/"
echo "======================================="
```

## 常用命令速查

| 命令 | 说明 |
|------|------|
| `adb shell su -c "ls -1 /data/adb/modules"` | 列出所有模块 |
| `adb shell su -c "cat /data/adb/modules/<id>/module.prop"` | 查看模块信息 |
| `adb shell su -c "ksu version"` | 获取 KernelSU 版本 |
| `adb logcat -s "KernelSU:*"` | 实时查看 KSU 日志 |
| `adb shell getenforce` | 查看 SELinux 状态 |
| `adb shell su -c "dmesg"` | 查看内核日志 |

## 注意事项

1. **Root 权限**：所有命令都需要 Root 权限，确保设备已授予 ADB Root 权限
2. **敏感信息**：日志可能包含敏感信息，分享前请仔细检查
3. **日志大小**：完整的日志文件可能很大，提取时注意磁盘空间
4. **KernelSU 版本**：不同版本的 KernelSU 日志格式可能不同
5. **隐私保护**：不要在公共场合分享包含个人信息的日志

## 下一步

提取日志后，你可以：
1. 将日志压缩打包发送给开发者
2. 自己分析日志中的错误信息
3. 使用文本编辑器搜索关键词（如 "ERROR", "failed", "denied"）
4. 在 GitHub Issues 中附上相关日志片段

---

**如有问题，请在项目中提 Issue 并附上相关日志。**
