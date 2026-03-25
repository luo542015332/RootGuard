# PandaSU v2.0.1 - 评分刷新修复版

## 版本信息
- **版本号**: v2.0.1
- **版本代码**: 75 (versionCode 75)
- **构建时间**: 2026年3月24日 00:51
- **APK 文件**: `PandaSU-v2.0.1-评分刷新修复.apk` (15.6 MB)

## 修复内容

### 1. 评分刷新日志记录
- 在 `RootHider.runEnvironmentCheck()` 中添加了详细日志记录
- 在 `IsolationViewModel.runEnvironmentCheck()` 中添加了详细日志记录
- 改进了 `runSuCommand` 和 `runSuCommandOutput` 的错误日志记录

### 2. 具体修复点
- **su 二进制检测** - 添加日志记录
- **Root 应用检测** - 添加日志记录
- **Shamiko 检测** - 添加日志记录
- **Tricky Store 检测** - 添加日志记录
- **环境检查开始/结束** - 添加详细日志

### 3. 错误处理改进
- `runSuCommand` 现在会记录 `su` 命令的退出码和错误输出
- `runSuCommandOutput` 现在会记录 `su` 命令的退出码和错误输出
- 修复了 Kotlin 语法错误（`return` 在 `withContext` 块中的使用）

## 测试步骤

### 1. 安装步骤
1. **卸载旧版本**（如果已安装）
2. **安装新版本**: `PandaSU-v2.0.1-评分刷新修复.apk`
3. **授予 Root 权限**（重要！）：
   - 打开 KernelSU 管理器
   - 找到 PandaSU (com.rootguard.app)
   - 确保已授予 Root 权限

### 2. 测试评分刷新功能
1. **打开 PandaSU**
2. **进入"隔离"页面**
3. **点击刷新按钮**（评分卡片右上角的刷新图标）
4. **查看日志**：
   - 进入"日志"页面
   - 应该能看到类似以下的日志：
     ```
     IsolationViewModel: 开始环境检查
     RootHider: 开始环境安全检查...
     su cmd failed: getprop ro.debuggable, exitCode=13, error=Permission denied
     ```

### 3. 预期结果
1. **评分应该变化** - 点击刷新后，安全评分应该重新计算
2. **应该有日志记录** - 刷新时应该有详细的日志记录
3. **日志应该显示错误** - 如果没有 Root 权限，日志会显示具体的错误信息

## 问题诊断

### 如果评分还是不刷新
1. **检查 Root 权限**：
   - 确认 PandaSU 在 KernelSU 中已被授予 Root 权限
   - 重启 PandaSU 应用

2. **查看日志信息**：
   - 在日志页面寻找权限错误信息
   - 如果看到 `exitCode=13, error=Permission denied`，说明没有 Root 权限

3. **手动测试 Root 权限**：
   - 打开终端或 ADB
   - 执行 `su -c id` 命令，查看是否返回 `uid=0(root)`

## 文件位置
- 主 APK: `PandaSU-v2.0.1-评分刷新修复.apk`
- 原始构建: `app/build/outputs/apk/debug/app-debug.apk`

## 注意事项
- 此版本主要是测试修复，如果问题解决，可以考虑发布正式版
- 如果仍有问题，请查看日志并记录具体的错误信息
- 建议在测试前备份当前版本的 PandaSU