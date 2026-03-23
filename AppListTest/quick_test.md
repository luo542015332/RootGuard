# 快速应用列表测试 APK

由于创建完整 Android 项目比较复杂，这里提供两个更简单的方案：

## 方案 1: 直接在现有 PandaSU 上测试

我已经创建了 PandaSU v1.4.37，它已经集成了多种方法。你可以：

1. **安装 PandaSU v1.4.37**
   - 位置: `C:\Users\Administrator\Desktop\PandaSU-v1.4.37.apk`

2. **提取日志**
   ```bash
   adb logcat | findstr "PandaSU" > logcat.txt
   ```

3. **打开 PandaSU 并刷新应用列表**

4. **查看日志，找到使用的方法**
   - 搜索 "ksud app-list" - 如果成功，会显示返回的应用数量
   - 搜索 "pm list packages" - 如果 ksud 失败，会使用此方法
   - 搜索 "Falling back to PackageManager API" - 如果所有命令都失败

5. **告诉我日志中的关键信息**
   - 哪种方法被使用了
   - 返回了多少个应用
   - 是否找到微信、QQ

## 方案 2: 使用 ADB 直接测试命令

你可以直接在命令行测试这 3 个命令：

### 测试 1: pm list packages
```bash
adb shell su -c "pm list packages" | find /c "package:"
```

### 测试 2: pm list packages -3 和 -s
```bash
adb shell su -c "pm list packages -3" | find /c "package:"
adb shell su -c "pm list packages -s" | find /c "package:"
```

### 测试 3: ksud app-list
```bash
adb shell su -c "ksud app-list"
```

### 测试 4: dumpsys package
```bash
adb shell su -c "dumpsys package" | findstr "Package \[" | find /c "Package"
```

### 检查关键应用
```bash
adb shell su -c "pm list packages" | findstr "tencent"
```

## 预期结果

如果某个命令返回 492 个应用，并且包含腾讯应用（微信、QQ），那就是正确的方法！

## 快速测试脚本

运行这个批处理文件会测试所有命令：

```batch
@echo off
echo 测试应用列表获取方法
echo.

echo [1] 测试 pm list packages...
adb shell su -c "pm list packages" | find /c "package:"
echo.

echo [2] 测试 pm list packages -3 (第三方)...
adb shell su -c "pm list packages -3" | find /c "package:"
echo.

echo [3] 测试 pm list packages -s (系统)...
adb shell su -c "pm list packages -s" | find /c "package:"
echo.

echo [4] 检查微信、QQ 是否在列表中...
adb shell su -c "pm list packages" | findstr "tencent"
echo.

echo [5] 测试 ksud app-list...
adb shell su -c "ksud app-list"
echo.

echo 测试完成！
pause
```

## 推荐

**最快的方法**：
直接运行上面的批处理脚本，看哪个命令返回 492 个应用。

**最准确的方法**：
使用 PandaSU v1.4.37，查看它的日志，它会自动尝试所有方法并记录结果。
