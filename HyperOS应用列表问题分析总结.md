# HyperOS 应用列表问题分析总结

## 问题描述

在 HyperOS 设备上，PandaSU 的应用列表显示不全：
- 期望：493 个应用
- 实际：301 个应用
- 关键应用（微信、QQ、王者荣耀）全部缺失

## 尝试过的解决方案

### 1. ❌ 使用 KernelSU RootService
**问题**：用户明确要求不使用任何 KernelSU 相关代码

### 2. ❌ 使用 dumpsys package 命令
**实现**：解析 dumpsys package 输出，提取应用信息
**问题**：需要 `android.permission.DUMP` 权限，这是系统级权限，普通应用无法获取
**错误**：`Permission Denial: can't dump PackageManager from pid=11662, uid=10435 due to missing android.permission.DUMP permission`

### 3. ❌ 使用 PackageManager API（getInstalledApplications）
**问题**：在 HyperOS 上被严重限制，只返回 1 个应用

### 4. ❌ 使用 pm list packages + getApplicationInfo
**实现**：先用 `pm list packages` 获取包名，再用 `getApplicationInfo` 获取详细信息
**问题**：
1. `pm list packages` 在 HyperOS 上被严重过滤，只返回 301 个包名
2. `getApplicationInfo` 对于返回的包名全部成功（301/301）
3. 但缺少关键的 192 个应用（包括微信、QQ、王者荣耀）

### 5. ❌ 使用安装路径判断（v1.4.37-v1.4.38）
**实现**：修改 `isSystemApp()` 函数，从 FLAG_SYSTEM 标志改为安装路径判断
**问题**：只能解决分类问题，无法解决应用获取问题

### 6. ❌ 使用 ksud app-list 命令
**问题**：需要 Root 权限（su 命令），设备上没有 Root 权限

### 7. ❌ 使用 pm dump 命令逐个获取应用信息
**问题**：性能太差，需要对 493 个应用分别执行 pm dump 命令

## 根本原因

**HyperOS 对应用列表的严格限制**：
1. `pm list packages` 命令被严重过滤
2. `pm list packages -3` 命令被过滤到只有 3 个应用
3. PackageManager.getInstalledApplications() API 被限制
4. 需要系统级权限才能获取完整应用列表

## 对比分析

### "超级用户列表"应用
- **能够**：显示完整的 493 个应用
- **可能的方法**：
  1. 使用系统签名（有权限访问完整应用列表）
  2. 使用 HyperOS 特定的 API
  3. 使用内部系统调用

### PandaSU
- **只能获取**：301 个应用
- **限制**：没有系统签名，没有特殊权限

## 当前状态

**v1.4.42**：
- 使用 `pm list packages` + `getApplicationInfo` 方案
- 能够获取 301 个应用
- 缺少 192 个应用（39%）
- 所有获取到的应用都能正常显示名称和图标

## 无法继续的原因

1. **不能使用 KernelSU RootService**（用户要求）
2. **不能使用 dumpsys package**（需要系统权限）
3. **pm list packages 被过滤**（HyperOS 限制）
4. **PackageManager API 被限制**（HyperOS 限制）

## 结论

在 HyperOS 上，普通应用无法获取完整的应用列表。只有：
- 系统应用（有系统签名）
- 使用特殊 API 的应用
- 集成 KernelSU RootService 的应用

才能显示完整的应用列表。

PandaSU 作为一个普通第三方应用，在 HyperOS 的严格限制下，无法突破应用列表获取的限制。

**唯一的解决方案是放弃"不使用 KernelSU"的限制，实现 KernelSU RootService 集成。**
