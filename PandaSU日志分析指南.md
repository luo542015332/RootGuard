# PandaSU 日志分析指南

## 概述

本指南介绍如何提取和分析 PandaSU 应用的日志，用于诊断应用运行时的问题。

## 快速开始

### Windows 用户
```bash
提取PandaSU日志.bat
```

### Linux/Mac 用户
```bash
chmod +x 提取PandaSU日志.sh
./提取PandaSU日志.sh
```

## 提取的日志文件说明

| 文件名 | 说明 | 用途 |
|--------|------|------|
| `pandasu_all.log` | 所有 PandaSU 相关日志 | 全面了解应用运行情况 |
| `pandasu_errors.log` | Error 级别日志 | 快速定位错误 |
| `pandasu_debug.log` | Debug 级别日志 | 详细调试信息 |
| `pandasu_info.log` | Info 级别日志 | 一般运行信息 |
| `pandasu_warning.log` | Warning 级别日志 | 警告信息 |
| `android_runtime.log` | Android Runtime 异常 | 查找应用崩溃 |
| `system_err.log` | 系统标准错误 | 系统级错误信息 |
| `package_info.txt` | 应用包详细信息 | 检查应用配置 |
| `process_info.txt` | 应用进程信息 | 检查进程状态 |
| `root_requests.log` | Root 权限请求日志 | 分析 Root 权限问题 |
| `module_operations.log` | 模块操作日志 | 分析备份/恢复问题 |
| `full_logcat.log` | 完整系统日志 | 深度分析 |

## 日志分析步骤

### 1. 查看 Error 日志（优先）

```bash
# Windows
type logs\PandaSU\pandasu_errors.log

# Linux/Mac
cat logs/PandaSU/pandasu_errors.log
```

**重点关注**：
- 异常堆栈信息
- "Failed to" 或 "Cannot" 开头的消息
- "Exception" 或 "Error" 关键词

### 2. 查看崩溃信息

```bash
# Windows
type logs\PandaSU\android_runtime.log

# Linux/Mac
cat logs/PandaSU/android_runtime.log
```

**常见崩溃类型**：
- `java.lang.NullPointerException`: 空指针异常
- `java.lang.ClassCastException`: 类型转换异常
- `kotlin.UninitializedPropertyAccessException`: 属性未初始化
- `android.database.sqlite.SQLiteException`: 数据库异常

### 3. 查看模块操作日志（备份/恢复问题）

```bash
# Windows
type logs\PandaSU\module_operations.log

# Linux/Mac
cat logs/PandaSU/module_operations.log
```

**关键词搜索**：
- "备份模块失败" - 模块备份失败
- "恢复模块失败" - 模块恢复失败
- "Permission denied" - 权限拒绝
- "No such file or directory" - 文件不存在

### 4. 查看完整日志上下文

如果错误日志信息不足，可以在完整 logcat 中搜索上下文：

```bash
# Windows
findstr /C:"错误消息" logs\PandaSU\full_logcat.log

# Linux/Mac
grep -C 5 "错误消息" logs/PandaSU/full_logcat.log
```

## 常见问题诊断

### 问题1：模块备份失败

**症状**：日志中出现 "备份模块失败" 或 "0 个备份恢复成功"

**排查步骤**：

1. 检查 Root 权限：
```bash
grep "备份模块" logs/PandaSU/pandasu_all.log
```

2. 检查文件权限：
```bash
grep "Permission denied" logs/PandaSU/pandasu_errors.log
```

3. 检查模块目录：
```bash
grep "/data/adb/modules" logs/PandaSU/pandasu_debug.log
```

4. 检查 SELinux：
```bash
grep -i "selinux\|avc" logs/PandaSU/full_logcat.log
```

**常见原因**：
- ✅ 已修复：Java File API 无法访问 `/data/adb/modules`（已使用 `su -c` 命令）
- ❌ 模块目录不存在或权限问题
- ❌ SELinux 策略阻止操作
- ❌ 存储空间不足

### 问题2：应用崩溃

**症状**：应用突然关闭或重启

**排查步骤**：

1. 查看崩溃堆栈：
```bash
# Windows
type logs\PandaSU\android_runtime.log | findstr "FATAL EXCEPTION"

# Linux/Mac
grep "FATAL EXCEPTION" logs/PandaSU/android_runtime.log
```

2. 分析崩溃类型：
```bash
# 查找最近 10 条崩溃
tail -n 10 logs/PandaSU/android_runtime.log
```

**常见崩溃类型**：
- **UI 崩溃**：Compose 相关错误，检查 `HomeScreen`, `ModulesScreen` 等
- **数据库崩溃**：SQLite 错误，检查数据库操作
- **权限崩溃**：权限缺失，检查运行时权限请求
- **OOM（Out of Memory）**：内存不足，检查内存泄漏

### 问题3：Root 权限请求未弹出

**症状**：应用请求 Root 但没有弹窗

**排查步骤**：

1. 检查 Root 请求日志：
```bash
# Windows
type logs\PandaSU\root_requests.log

# Linux/Mac
cat logs/PandaSU/root_requests.log
```

2. 检查 Root 请求服务：
```bash
grep "RootRequestService" logs/PandaSU/pandasu_debug.log
```

3. 检查 Magisk 数据库：
```bash
grep "sqlite3.*policies" logs/PandaSU/pandasu_all.log
```

### 问题4：应用列表显示不全

**症状**：已安装应用数量与实际不符

**排查步骤**：

1. 查看应用获取日志：
```bash
grep "getApps\|getAllInstalledApps" logs/PandaSU/pandasu_debug.log
```

2. 检查错误统计：
```bash
grep "Failed to.*app" logs/PandaSU/pandasu_errors.log
```

3. 检查应用数量统计：
```bash
grep "Added.*apps" logs/PandaSU/pandasu_debug.log
```

**常见原因**：
- 图标加载失败导致应用被跳过
- 应用名称获取失败
- 权限不足无法读取某些应用信息

## 日志级别说明

| 级别 | 符号 | 说明 | 优先级 |
|------|------|------|--------|
| **ERROR** | E | 错误信息，应用无法继续正常工作 | 最高 |
| **WARNING** | W | 警告信息，可能有问题但可以继续 | 高 |
| **INFO** | I | 一般信息，应用正常运行日志 | 中 |
| **DEBUG** | D | 调试信息，详细的开发调试信息 | 低 |

## 手动提取特定日志

### 提取最近 N 条日志

```bash
# 最近 100 条日志
adb logcat -d -t 100 | grep "PandaSU"

# 最近 5 分钟的日志
adb logcat -d -t 300 | grep "PandaSU"
```

### 实时查看日志

```bash
# 实时查看所有 PandaSU 日志
adb logcat *:S PandaSU:V

# 实时查看 Error 日志
adb logcat *:S PandaSU:E

# 实时查看特定功能的日志
adb logcat *:S | grep "backup\|restore"
```

### 过滤特定关键词

```bash
# 查找包含 "模块" 的日志
adb logcat -d | grep "模块"

# 查找包含 "Error" 的日志（不区分大小写）
adb logcat -d | grep -i "error"

# 查找包含多个关键词的日志
adb logcat -d | grep -E "备份|恢复|module"
```

### 导出特定时间段日志

```bash
# 导出最近 1 小时的日志
adb logcat -d -t 3600 > last_hour.log

# 导出今天上午的日志（假设）
adb logcat -d -v time | grep "03-2[0-3]:" > morning.log
```

## 日志分析工具推荐

### Windows

1. **Notepad++**
   - 支持语法高亮
   - 强大的搜索和替换功能
   - 支持多文件比较

2. **VS Code**
   - 内置终端，方便运行命令
   - 强大的搜索功能（支持正则表达式）
   - 日志文件自动高亮

3. **Logcat Viewer for Windows**
   - 专为 Android 日志设计
   - 彩色显示不同级别日志
   - 支持过滤和搜索

### Linux/Mac

1. **less**
```bash
less logs/PandaSU/pandasu_errors.log
# 使用 / 搜索，n 下一个，N 上一个，q 退出
```

2. **grep**
```bash
# 查找包含错误的行
grep -i "error" logs/PandaSU/pandasu_all.log

# 显示上下文（前后 3 行）
grep -C 3 "备份失败" logs/PandaSU/pandasu_all.log
```

3. **tail**
```bash
# 实时查看日志
tail -f logs/PandaSU/pandasu_errors.log

# 查看最后 20 行
tail -n 20 logs/PandaSU/pandasu_errors.log
```

## 日志分享指南

### 提交 Issue 时的最佳实践

1. **不要分享完整日志**：只分享相关的部分
2. **脱敏处理**：删除敏感信息（如 IP、设备 ID、包名等）
3. **提供上下文**：说明问题发生时你在做什么
4. **清晰描述**：说明期望行为和实际行为的差异

### 日志分享格式

```
## 问题描述
[简要描述问题]

## 重现步骤
1. ...
2. ...

## 日志片段
```
[相关日志片段，包含时间戳]
```

## 设备信息
- Android 版本：[版本]
- 设备型号：[型号]
- PandaSU 版本：[版本]
```

## 常用搜索关键词

| 关键词 | 说明 |
|--------|------|
| `备份模块` | 模块备份相关 |
| `恢复模块` | 模块恢复相关 |
| `Permission denied` | 权限被拒绝 |
| `Failed to` | 操作失败 |
| `Exception` | 异常信息 |
| `NullPointerException` | 空指针异常 |
| `FATAL EXCEPTION` | 致命异常（崩溃） |
| `SQLiteException` | 数据库异常 |
| `OutOfMemoryError` | 内存不足 |
| `ModuleBackupManager` | 模块备份管理器 |
| `MagiskProvider` | Magisk 提供者 |
| `RootRequestService` | Root 请求服务 |

## 性能分析

### 查找耗时操作

```bash
# 查找包含时间信息的日志
grep -E "[0-9]+ms|[0-9]+s" logs/PandaSU/pandasu_debug.log
```

### 查找内存问题

```bash
# 查找内存相关异常
grep -i "outofmemory\|gc_" logs/PandaSU/android_runtime.log
```

## 网络相关

### 查找网络请求

```bash
# 查找 HTTP 相关日志
grep -i "http\|network\|request" logs/PandaSU/pandasu_all.log
```

### 查找更新检查

```bash
# 查找版本更新相关日志
grep -i "update\|version\|release" logs/PandaSU/pandasu_info.log
```

## 总结

1. **优先看 Error 日志**：快速定位问题
2. **使用关键词搜索**：缩小范围
3. **查看上下文**：理解错误原因
4. **定期清理日志**：避免文件过大
5. **保护隐私**：分享日志前脱敏

---

**如有问题，请在项目中提 Issue 并附上相关日志片段。**
