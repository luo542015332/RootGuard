# 应用列表测试工具

这是一个独立的测试应用，用于测试不同的获取应用列表方法，找出最可靠的方式。

## 测试方法

此应用会测试以下 5 种获取应用列表的方法：

1. **PackageManager API (默认)** - 使用 `pm.getInstalledApplications(0)`
2. **PackageManager API (带 flags)** - 使用多个 flags 组合
3. **pm list packages 命令** - 使用 Root 命令获取应用列表
4. **ksud app-list 命令** - 使用 KernelSU 官方命令
5. **KernelSU 数据库查询** - 查询 KernelSU 的策略数据库

## 使用方法

### 1. 构建应用

```bash
cd AppListTest
.\build.bat
```

或者手动构建：

```bash
.\gradlew.bat assembleDebug
```

### 2. 安装到设备

```bash
adb install app\build\outputs\apk\debug\app-debug.apk
```

或者直接从桌面安装 `AppListTest.apk`

### 3. 运行并查看日志

安装后打开应用，它会自动运行所有测试并输出详细日志。

**查看日志方法：**

```bash
adb logcat | findstr AppListTest
```

### 4. 分析结果

日志中会包含：

- 每种方法返回的应用数量
- 是否找到微信、QQ、英雄联盟等关键应用
- 用户应用和系统应用的数量统计
- 每种方法执行的时间

**预期结果：**

- 最可靠的方法应该返回 492 个应用
- 所有关键应用（微信、QQ、英雄联盟）都应该被找到
- 用户应用应该有 100+ 个

## 输出示例

```
========== Test 1: PackageManager API (default) ==========
PackageManager API (0) returned 301 apps
Time taken: 1523ms
---------- Key Apps Check: PackageManager API (0) ----------
✗ NOT FOUND: com.tencent.mm
✗ NOT FOUND: com.tencent.mobileqq
✗ NOT FOUND: com.tencent.tmgp.sgame
User apps: 4, System apps: 297
------------------------------------------------

========== Test 3: pm list packages command ==========
pm list packages returned 492 apps
pm list packages -3 returned 133 apps (3rd party)
pm list packages -s returned 359 apps (system)
Total: 492 apps
---------- Key Packages Check: pm list packages ----------
✓ Found: com.tencent.mm
✓ Found: com.tencent.mobileqq
✓ Found: com.tencent.tmgp.sgame
Total packages: 492
------------------------------------------------
```

## 诊断用途

根据测试结果，我们可以：

1. **找出最可靠的方法** - 返回应用数量最多、包含关键应用的方法
2. **识别问题根源** - PackageManager API 是否在 Android 16 上有问题
3. **验证 Root 命令** - `pm list packages` 和 `ksud` 命令是否可用
4. **优化性能** - 比较不同方法的执行时间

## 注意事项

- 此应用需要 Root 权限才能执行所有测试
- 某些方法可能在某些设备上不可用（如 `ksud` 命令）
- 日志使用 Log.e() 确保在 logcat 中可见

## 下一步

根据测试结果，更新 PandaSU 使用最可靠的应用列表获取方法。
