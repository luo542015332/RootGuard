# PandaSU ADB 手动安装指南

## 📋 准备工作

### 1. 电脑端准备
- [ ] 安装 [Android SDK Platform-Tools](https://developer.android.com/studio/releases/platform-tools)
- [ ] 解压到 `C:\adb` 或添加 PATH 环境变量
- [ ] 打开命令提示符或 PowerShell

### 2. 手机端准备
- [ ] 开启开发者选项
- [ ] 开启 USB 调试
- [ ] 开启 USB 安装
- [ ] 手机已 Root（Magisk/KernelSU）
- [ ] 连接 USB 线到电脑

### 3. 文件准备
确保以下文件在 `dist/` 目录中：
- `ZygiskNext-v1.3.3.zip` 或 `ZygiskNext-框架.zip`
- `PandaSU-System-Helper-v2.3.0-upload.zip` 或 `PandaSU-模块.zip`
- `PandaSU-v2.3.0.apk` 或 `PandaSU-应用.apk`

## 🔧 安装步骤

### 步骤 1：检查设备连接
```bash
adb devices
# 应该显示：List of devices attached
#           xxxxxxxx    device
```

### 步骤 2：检查 Root 权限
```bash
adb shell su -c "id"
# 应该显示：uid=0(root) gid=0(root) groups=0(root)
```

### 步骤 3：创建临时目录
```bash
adb shell mkdir -p /data/local/tmp/pandasu_install
```

### 步骤 4：推送文件到手机
```bash
# 推送框架
adb push dist/ZygiskNext-v1.3.3.zip /data/local/tmp/pandasu_install/zygisknext.zip

# 推送模块
adb push dist/PandaSU-System-Helper-v2.3.0-upload.zip /data/local/tmp/pandasu_install/pandasu_module.zip

# 推送应用
adb push dist/PandaSU-v2.3.0.apk /data/local/tmp/pandasu_install/pandasu_app.apk
```

### 步骤 5：刷入 ZygiskNext 框架
```bash
# Magisk 方式
adb shell su -c "magisk --install-module /data/local/tmp/pandasu_install/zygisknext.zip"

# 或 KernelSU 方式
adb shell su -c "ksu install-module /data/local/tmp/pandasu_install/zygisknext.zip"
```

### 步骤 6：第一次重启
```bash
adb reboot
# 等待30秒
timeout 30
```

### 步骤 7：等待设备重新连接
```bash
adb wait-for-device
```

### 步骤 8：刷入 PandaSU 模块
```bash
# Magisk 方式
adb shell su -c "magisk --install-module /data/local/tmp/pandasu_install/pandasu_module.zip"

# 或 KernelSU 方式
adb shell su -c "ksu install-module /data/local/tmp/pandasu_install/pandasu_module.zip"
```

### 步骤 9：第二次重启
```bash
adb reboot
# 等待30秒
timeout 30
```

### 步骤 10：等待设备重新连接
```bash
adb wait-for-device
```

### 步骤 11：安装 PandaSU 应用
```bash
# 常规安装
adb install -r /data/local/tmp/pandasu_install/pandasu_app.apk

# 如果失败，尝试无签名安装
adb shell pm install -r /data/local/tmp/pandasu_install/pandasu_app.apk
```

### 步骤 12：清理临时文件
```bash
adb shell rm -rf /data/local/tmp/pandasu_install
```

## 🚀 一键脚本

### Windows 批处理
```bash
安装到手机_ADB.bat
```

### PowerShell 脚本
```powershell
.\安装到手机_ADB.ps1
```

## 🔍 验证安装

### 1. 检查模块状态
```bash
# 检查 Magisk 模块
adb shell su -c "ls /data/adb/modules"

# 检查 KernelSU 模块
adb shell su -c "ls /data/adb/ksu/modules"
```

### 2. 检查应用安装
```bash
adb shell pm list packages | grep rootguard
# 应该显示：package:com.rootguard.app
```

### 3. 检查 Zygisk 状态
```bash
adb shell su -c "cat /data/adb/zygisksu/modules_info" | grep zygisk
```

## ❗ 常见问题

### 问题 1：ADB 找不到设备
**解决方案**：
1. 检查 USB 线是否连接正常
2. 检查手机是否开启 USB 调试
3. 检查电脑是否安装手机驱动
4. 尝试不同的 USB 口

### 问题 2：Root 权限不足
**解决方案**：
1. 手机打开 Magisk/KernelSU 应用
2. 授予 ADB Root 权限
3. 重新执行命令

### 问题 3：安装失败
**解决方案**：
```bash
# 查看安装日志
adb shell cat /data/local/tmp/pandasu_install/install_log.txt

# 查看模块日志
adb shell cat /data/local/tmp/pandasu_install/module_log.txt
```

### 问题 4：应用闪退
**解决方案**：
```bash
# 清除应用数据
adb shell pm clear com.rootguard.app

# 重新安装
adb install -r dist/PandaSU-v2.3.0.apk
```

## 📞 技术支持

如果遇到无法解决的问题：
1. 查看 `安装到手机_ADB.bat` 生成的日志
2. 检查手机上的 Magisk/KernelSU 日志
3. 在项目 Issues 页面反馈问题

## ⚠️ 注意事项

1. **安全第一**：刷机有风险，请备份重要数据
2. **保持连接**：安装过程中不要断开 USB
3. **耐心等待**：重启过程可能需要较长时间
4. **验证结果**：安装完成后验证所有组件
5. **及时更新**：关注项目更新，及时升级版本

## 🎉 安装完成

安装完成后：
1. 打开手机上的 PandaSU 应用
2. 授予 Root 权限
3. 按照应用指引完成初始配置
4. 重启手机让所有配置生效
5. 使用 Root 检测功能验证效果

祝安装顺利！