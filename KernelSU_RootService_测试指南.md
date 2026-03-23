# KernelSU RootService 测试指南

## 测试目的
验证 v1.4.43 版本使用 KernelSU RootService 优化应用列表获取功能，确认在 HyperOS/MIUI 设备上能够获取完整的 493 个应用。

## 前置条件

### 设备要求
- ✅ 已安装 KernelSU 的 Android 设备（HyperOS 或 MIUI）
- ✅ 设备上已安装大量应用（建议超过 300 个）
- ✅ 设备上有关键应用：微信、QQ、王者荣耀

### 环境准备
1. **编译 v1.4.43 版本**：
   ```bash
   cd c:\Users\Administrator\WorkBuddy\20260321183732
   gradlew assembleDebug
   ```

2. **安装到测试设备**：
   ```bash
   adb install -r app/build/outputs/apk/debug/app-debug.apk
   ```

3. **准备日志提取工具**：
   - 使用 ADB logcat 实时查看日志
   - 或使用应用内置的日志查看功能

## 测试步骤

### 1. 启动应用并检查初始化

**操作步骤**：
1. 打开 PandaSU 应用
2. 等待应用完全加载
3. 进入"超级用户"页面查看应用列表

**预期结果**：
- 应用正常启动，无崩溃
- 能够看到应用列表（可能需要几秒钟加载）

### 2. 检查 RootService 是否可用

**操作步骤**：
```bash
adb logcat | grep KernelSUService
```

**预期日志输出**：
```
RootService available: true
Starting to get packages via RootService...
Executing command: pm list packages -a
Command exit code: 0
```

**关键日志标记**：
- `USING KERNELSU ROOTSERVICE` - 表示正在使用 RootService
- `RootService is available` - RootService 可用
- `Found X packages via RootService` - 找到的包名数量

### 3. 验证应用列表完整性

**操作步骤**：
1. 在应用中查看应用列表总数
2. 检查是否有关键应用（微信、QQ、王者荣耀）
3. 查看用户应用和系统应用数量

**预期结果**（HyperOS 设备）：
- 总应用数: **493** 个（±5 个）
- 用户应用: **154** 个（±10 个）
- 系统应用: **265** 个（±10 个）
- 微信: ✅ 存在
- QQ: ✅ 存在
- 王者荣耀: ✅ 存在

### 4. 检查详细日志

**操作步骤**：
```bash
adb logcat -s MagiskProvider:D KernelSUService:D | grep -E "(APP LIST SUMMARY|Found target app)"
```

**预期日志输出**：
```
========== APP LIST SUMMARY (RootService) ==========
Total apps: 493
Successful ApplicationInfo: 493
Failed ApplicationInfo: 0
User apps: 154
System apps: 265
---------- USER APPS LIST (first 30) ----------
User app: com.tencent.mm - 微信
User app: com.tencent.mobileqq - QQ
User app: com.tencent.tmgp.sgame - 王者荣耀
...
Found target app: com.tencent.mm - 微信, isSystem: false
Found target app: com.tencent.mobileqq - QQ, isSystem: false
Found target app: com.tencent.tmgp.sgame - 王者荣耀, isSystem: false
========== END APP LIST SUMMARY ==========
```

### 5. 验证降级策略（可选）

**测试场景**：RootService 不可用的情况

**操作步骤**：
1. 临时禁用 KernelSU（如果支持）
2. 或在 Magisk 设备上测试
3. 查看日志中的降级标记

**预期日志输出**：
```
Current root type: magisk
RootService is not available, falling back to pm list packages
========== FALLBACK TO PM LIST PACKAGES ==========
```

**预期结果**：
- 应用仍然能够显示应用列表（虽然不完整）
- 应用不会崩溃

## 对比测试

### v1.4.42 vs v1.4.43 对比

| 指标 | v1.4.42（降级方案） | v1.4.43（RootService） | 改进 |
|------|-------------------|---------------------|------|
| 总应用数 | 301 | 493 | +64% |
| 用户应用 | 3 | 154 | +5033% |
| 微信 | ❌ | ✅ | ✅ |
| QQ | ❌ | ✅ | ✅ |
| 王者荣耀 | ❌ | ✅ | ✅ |

## 常见问题排查

### 问题 1：应用列表仍然不完整

**检查项**：
1. 确认设备是否使用 KernelSU：
   ```bash
   adb shell su -c "ksu -v"
   ```

2. 检查 RootService 是否可用：
   ```bash
   adb logcat | grep "RootService available"
   ```

3. 查看是否有错误日志：
   ```bash
   adb logcat | grep -E "(Failed to|Error)"
   ```

**可能原因**：
- 设备使用的是 Magisk 而非 KernelSU
- RootService 不可用
- 应用列表获取过程中出现异常

### 问题 2：应用崩溃

**检查项**：
1. 查看崩溃日志：
   ```bash
   adb logcat | grep -E "(FATAL|AndroidRuntime)"
   ```

2. 检查是否有内存不足警告：
   ```bash
   adb logcat | grep "Memory"
   ```

**可能原因**：
- 应用列表过大导致内存不足
- RootService 连接失败
- 其他未知异常

### 问题 3：图标加载失败

**预期行为**：
- 图标使用延迟加载，可能在列表显示后才加载
- 某些系统应用可能无法获取图标

**检查项**：
1. 查看图标加载日志：
   ```bash
   adb logcat | grep -i icon
   ```

2. 等待几秒钟让图标加载完成

## 性能测试

### 应用列表加载时间

**测试步骤**：
1. 清空日志：`adb logcat -c`
2. 打开应用并进入超级用户页面
3. 查看加载时间：
   ```bash
   adb logcat | grep "Found.*packages via RootService"
   ```

**预期结果**：
- 加载时间 < 5 秒
- 应用总数: 493 个

### 内存占用

**测试步骤**：
1. 查看应用内存使用：
   ```bash
   adb shell dumpsys meminfo com.rootguard.app
   ```

**预期结果**：
- 总内存占用 < 150 MB
- 应用列表加载后内存稳定

## 测试报告模板

### 测试环境
- 设备型号：___________
- 系统/ROM：___________
- Root 方案：KernelSU / Magisk
- KernelSU 版本：___________
- 设备应用总数：___________

### 测试结果
- ✅ 应用正常启动
- ✅ RootService 可用
- ✅ 应用列表完整：
  - 总应用数：________（预期 493）
  - 用户应用：________（预期 154）
  - 系统应用：________（预期 265）
- ✅ 关键应用存在：
  - 微信：✅ / ❌
  - QQ：✅ / ❌
  - 王者荣耀：✅ / ❌
- ✅ 应用列表加载时间：________ 秒
- ✅ 无崩溃

### 附加日志
（粘贴关键日志片段）

### 备注
（记录任何特殊情况或异常）

## 回归测试

### 在其他设备上测试

**设备类型**：
1. 标准 Android 设备（无 HyperOS/MIUI）
2. Magisk 设备
3. 无 Root 设备

**预期结果**：
- 所有设备都能正常显示应用列表
- 无崩溃
- RootService 不可用时自动降级

## 测试完成检查清单

- [ ] v1.4.43 成功编译
- [ ] 应用成功安装到设备
- [ ] 应用正常启动
- [ ] RootService 可用（KernelSU 设备）
- [ ] 应用列表完整（493 个）
- [ ] 用户应用完整（154 个）
- [ ] 关键应用存在（微信、QQ、王者荣耀）
- [ ] 应用无崩溃
- [ ] 日志正常（包含 "USING KERNELSU ROOTSERVICE"）
- [ ] 降级策略正常工作（Magisk/无 Root）
- [ ] 性能可接受（加载时间 < 5 秒）
