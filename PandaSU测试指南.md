# PandaSU v1.3.x 测试指南

## 📋 概述

**版本**: v1.3.x  
**日期**: 2026-03-22  
**更新内容**: 
- 改进系统应用判断
- 添加详细日志
- 添加 KernelSU 支持

---

## 🔧 安装新版本

### 1. 准备工作

确保你的设备：
- ✅ 已通过 USB 连接到电脑
- ✅ 已开启 USB 调试（开发者选项）
- ✅ ADB 已识别设备

### 2. 连接设备

```bash
# 检查设备连接状态
cd C:\Users\Administrator\WorkBuddy\20260321183732
.\platform-tools\adb.exe devices

# 预期输出：
# List of devices attached
# XXXXXXXX    device
```

### 3. 安装 APK

```bash
# 安装（替换现有版本）
.\platform-tools\adb.exe install -r app/build/outputs/apk/debug/app-debug.apk

# 如果需要强制安装（覆盖数据）
.\platform-tools\adb.exe install -r -d app/build/outputs/apk/debug/app-debug.apk
```

### 4. 授予 Root 权限

- 打开 PandaSU 应用
- 会自动请求 Root 权限
- 点击"允许"

---

## 🧪 测试步骤

### 测试 1: 用户数和系统数显示

**目的**: 验证系统应用判断是否改进

**步骤**:
1. 打开 PandaSU 应用
2. 进入"应用"页面
3. 查看统计数据：
   - 用户数
   - 系统数
   - 已授权
   - 已拒绝

**预期结果**:
```
通过 ADB 验证：
- 总应用数：492
- 用户应用：133
- 系统应用：359

PandaSU 应该显示相同的数量（或接近）
```

**验证命令**:
```bash
# 获取实际的应用数量
adb shell pm list packages | wc -l
adb shell pm list packages -3 | wc -l  # 用户应用
adb shell pm list packages -s | wc -l  # 系统应用
```

---

### 测试 2: Root 类型检测

**目的**: 验证应用是否正确识别 KernelSU

**步骤**:
1. 提取 PandaSU 日志
2. 搜索 Root 类型检测日志

**提取日志**:
```bash
# 运行日志提取工具
.\提取PandaSU日志.bat
```

**查看日志**:
```bash
# 搜索 Root 类型检测日志
cd logs
Select-String -Pattern "Detected.*root management" -Path *.txt

# 或使用 findstr
findstr /S /I "Detected.*root management" *.txt
```

**预期日志输出**:
```
D/RootHider: Detected KernelSU root management
```

或者（如果是 Magisk）：
```
D/RootHider: Detected Magisk root management
```

---

### 测试 3: 隔离功能 - 添加应用

**目的**: 验证隔离功能是否正常工作

**步骤**:
1. 打开 PandaSU 应用
2. 进入"隔离"页面
3. 找到一个应用（如 Chrome、微信等）
4. 打开隔离开关

**验证点**:
- ✅ 隔离开关应该成功打开
- ✅ 隔离数应该增加（例如：从 0 变为 1）

**查看日志**:
```bash
# 提取日志
.\提取PandaSU日志.bat

# 搜索隔离配置日志
Select-String -Pattern "Configuring denylist|Added.*denylist" logs\*.txt
```

**预期日志输出**:
```
D/RootHider: Detected KernelSU root management
D/RootHider: Configuring denylist for com.android.chrome (Root type: kernelsu)
D/RootHider: Added com.android.chrome to KernelSU denylist
D/RootHider: KernelSU denylist: 1 apps
```

---

### 测试 4: 隔离功能 - 移除应用

**目的**: 验证移除隔离功能是否正常

**步骤**:
1. 在"隔离"页面
2. 关闭刚才开启的应用的隔离开关

**验证点**:
- ✅ 隔离开关应该成功关闭
- ✅ 隔离数应该减少（例如：从 1 变为 0）

**查看日志**:
```bash
# 搜索移除隔离日志
Select-String -Pattern "Removing isolation|Removed.*denylist" logs\*.txt
```

**预期日志输出**:
```
D/RootHider: Removing isolation for com.android.chrome
D/RootHider: Removed com.android.chrome from KernelSU denylist
D/RootHider: KernelSU denylist: 0 apps
```

---

### 测试 5: 验证 KernelSU 隔离列表

**目的**: 验证应用是否真的添加到 KernelSU 的隔离列表

**步骤**:
1. 在 PandaSU 中添加一个应用到隔离列表
2. 使用 ADB 检查 KernelSU 的隔离列表

**验证命令**:
```bash
# 检查 KernelSU denylist
adb shell su -c "ksu denylist list"

# 或（如果 su 不需要 -c）
adb shell ksu denylist list
```

**预期输出**:
```
com.android.chrome
```

**移除应用后**:
```bash
# 应该为空或只显示其他应用
adb shell ksu denylist list
```

---

### 测试 6: 应用数量统计日志

**目的**: 验证应用加载过程日志是否正确

**步骤**:
1. 打开 PandaSU 应用
2. 进入"应用"页面
3. 提取日志并搜索应用数量统计

**查看日志**:
```bash
# 搜索应用数量统计日志
Select-String -Pattern "PackageManager returned|Apps loaded:|Root status:" logs\*.txt
```

**预期日志输出**:
```
D/PandaSU: PackageManager returned 492 packages
D/PandaSU: Added 492 apps to list: 133 user apps, 359 system apps
D/PandaSU: Apps loaded: Total=492, User=133, System=359
D/PandaSU: Root status: Granted=X, Denied=Y, Prompt=Z
```

---

## 📊 测试检查清单

### 功能检查清单

| 测试项 | 预期结果 | 实际结果 | 状态 |
|-------|---------|---------|------|
| APK 构建成功 | ✅ BUILD SUCCESSFUL | | ✅ |
| APK 安装成功 | ✅ Success | | ⏳ |
| Root 权限授予 | ✅ 授予成功 | | ⏳ |
| 用户数显示 | ≈ 133 | | ⏳ |
| 系统数显示 | ≈ 359 | | ⏳ |
| Root 类型检测 | "Detected KernelSU root management" | | ⏳ |
| 添加隔离 | 隔离数增加 | | ⏳ |
| 移除隔离 | 隔离数减少 | | ⏳ |
| KernelSU 隔离列表 | 包含添加的应用 | | ⏳ |
| 应用数量日志 | 正确记录 | | ⏳ |

### 日志检查清单

| 日志类型 | 预期内容 | 实际结果 | 状态 |
|---------|---------|---------|------|
| Root 类型检测 | "Detected KernelSU root management" | | ⏳ |
| 应用数量统计 | "Apps loaded: Total=492, User=133, System=359" | | ⏳ |
| 隔离配置 | "Added [package] to KernelSU denylist" | | ⏳ |
| 隔离移除 | "Removed [package] from KernelSU denylist" | | ⏳ |
| 隔离列表 | "KernelSU denylist: X apps" | | ⏳ |

---

## 🐛 问题排查

### 问题 1: APK 安装失败

**错误**: `adb: failed to install app-debug.apk`

**解决方案**:
```bash
# 卸载旧版本
adb uninstall com.rootguard.app

# 重新安装
adb install app/build/outputs/apk/debug/app-debug.apk
```

### 问题 2: Root 权限未授予

**现象**: 应用启动后没有请求 Root 权限

**解决方案**:
1. 检查设备是否已 Root
2. 检查 Root 管理应用（KernelSU Manager 或 Magisk）
3. 确保应用未被 Root 管理应用禁用

### 问题 3: 隔离数始终为 0

**可能原因**:
- Root 类型检测失败
- KernelSU denylist 命令失败
- 应用列表未刷新

**排查步骤**:
1. 提取日志，搜索 Root 类型检测日志
2. 检查 KernelSU denylist 列表
3. 重启应用

### 问题 4: 用户数或系统数不正确

**可能原因**:
- 系统应用判断逻辑有误
- 某些应用加载失败

**排查步骤**:
1. 对比 ADB 命令结果和应用显示结果
2. 提取日志，查看应用加载过程
3. 搜索应用加载失败的错误日志

---

## 📝 测试报告模板

### 测试结果

**测试日期**:  
**设备型号**:  
**Root 方案**: KernelSU / Magisk  
**APK 版本**: v1.3.x  

### 功能测试结果

| 测试项 | 结果 | 备注 |
|-------|-----|------|
| APK 安装 | ✅ / ❌ | |
| Root 权限授予 | ✅ / ❌ | |
| 用户数显示 | ✅ / ❌ | 实际值: |
| 系统数显示 | ✅ / ❌ | 实际值: |
| Root 类型检测 | ✅ / ❌ | 检测结果: |
| 添加隔离 | ✅ / ❌ | |
| 移除隔离 | ✅ / ❌ | |
| KernelSU 隔离列表 | ✅ / ❌ | |
| 应用数量日志 | ✅ / ❌ | |

### 日志输出

```
[粘贴关键日志输出]
```

### 发现的问题

```
[描述发现的问题]
```

### 建议

```
[提供改进建议]
```

---

## ✅ 完成测试

测试完成后，请：

1. **填写测试报告**
   - 记录所有测试结果
   - 附上关键日志
   - 列出发现的问题

2. **提交反馈**
   - 告诉测试结果
   - 提供日志文件
   - 说明是否需要进一步修复

3. **下一步**
   - 如果测试通过，可以提交代码到 GitHub
   - 如果发现问题，提供详细信息以便修复

---

**测试指南版本**: 1.0  
**最后更新**: 2026-03-22
