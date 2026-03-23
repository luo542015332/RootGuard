# 应用列表获取方法测试工具

这是一个快速测试工具，用于找出在 Android 16 设备上最可靠的应用列表获取方法。

## 快速使用

### 1. 准备工作

确保满足以下条件：
- 设备已通过 USB 连接到电脑
- 设备已启用 **USB 调试**（开发者选项 → USB 调试）
- 设备已获得 **Root 权限**
- 已授权此计算机进行 **ADB 调试**（设备上点击"允许"）

### 2. 运行测试

直接双击运行：
```
run_test.bat
```

或者在命令行运行：
```bash
python test_applist.py
```

### 3. 查看结果

测试完成后，会：
1. 在命令行中显示所有测试结果
2. 生成结果文件：`app_list_test_results_YYYYMMDD_HHMMSS.txt`

## 测试内容

工具会测试以下 3 种方法：

### 方法 1: pm list packages 命令
```bash
su -c 'pm list packages'
su -c 'pm list packages -3'  # 第三方应用
su -c 'pm list packages -s'  # 系统应用
```

### 方法 2: ksud app-list 命令
```bash
su -c 'ksud app-list'
```
- KernelSU 官方推荐的命令
- 返回 JSON 格式的应用列表

### 方法 3: dumpsys package 命令
```bash
su -c 'dumpsys package'
```
- 系统级命令，通常最可靠
- 输出所有应用的详细信息

## 关键应用检查

所有方法都会检查是否找到以下关键应用：
- **微信**: com.tencent.mm
- **QQ**: com.tencent.mobileqq
- **英雄联盟**: com.tencent.tmgp.sgame

## 预期结果

### 成功的测试输出示例：
```
========== Test 1: pm list packages 命令 ==========
命令: su -c 'pm list packages'
退出码: 0
返回应用数量: 492

关键应用检查 (pm list packages):
----------------------------------------------------------------------
✓ 找到: com.tencent.mm (微信)
✓ 找到: com.tencent.mobileqq (QQ)
✓ 找到: com.tencent.tmgp.sgame (英雄联盟)

找到关键应用: 3/3
----------------------------------------------------------------------
```

### 测试总结示例：
```
=========================================
测试总结
=========================================
推荐方法: 方法 1: pm list packages (返回 492 个应用)

请在 PandaSU 中实现此方法以获取完整的应用列表。
```

## 结果文件格式

生成的结果文件包含：
- 每种方法返回的应用数量
- 是否找到关键应用（微信、QQ、英雄联盟）
- 每种方法的错误信息（如果有）

## 在 PandaSU 中使用最佳方法

测试完成后，根据推荐的方法，更新 PandaSU 的代码：

**如果推荐方法 1 (pm list packages)**：
```kotlin
val process = Runtime.getRuntime().exec(
    arrayOf("su", "-c", "pm", "list", "packages")
)
val output = process.inputStream.bufferedReader().readText()
val packages = output.lines()
    .map { it.substringAfter("package:").trim() }
    .filter { it.isNotEmpty() }
```

**如果推荐方法 2 (ksud app-list)**：
```kotlin
val process = Runtime.getRuntime().exec(
    arrayOf("su", "-c", "ksud", "app-list")
)
val output = process.inputStream.bufferedReader().readText()
// 解析 JSON 输出
```

**如果推荐方法 3 (dumpsys package)**：
```kotlin
val process = Runtime.getRuntime().exec(
    arrayOf("su", "-c", "dumpsys", "package")
)
val output = process.inputStream.bufferedReader().readText()
// 使用正则表达式解析输出
```

## 故障排除

### 问题: 无法连接到设备
**解决方案**:
1. 检查 USB 连接
2. 检查设备是否启用 USB 调试
3. 运行 `adb devices` 确认设备已连接

### 问题: 权限被拒绝
**解决方案**:
1. 确保设备已获得 Root 权限
2. 在设备上授权 ADB 调试

### 问题: ksud 命令不可用
**说明**:
- ksud 命令可能不是所有 KernelSU 版本都包含
- 这是正常的，测试会自动跳过此方法

## 下一步

1. 运行测试工具
2. 查看推荐的最佳方法
3. 告诉我推荐的方法，我会更新 PandaSU 代码
4. 测试更新后的 PandaSU 是否能正确显示所有应用

## 技术细节

- Python 版本：3.x
- 需要的依赖：subprocess, re, json, datetime（都是标准库）
- 不需要安装额外的 Python 包
- 使用 ADB 命令与设备通信
