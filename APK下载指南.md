# APK 下载指南

## 📥 方式一：GitHub Actions 下载（推荐）

### 1. 访问 GitHub Actions 页面
直接点击以下链接或复制到浏览器：

```
https://github.com/luo542015332/RootGuard/actions
```

### 2. 查找最新构建
- 找到最新的一次工作流运行
- 状态显示为 ✅ 绿色勾号表示成功
- 通常需要 2-5 分钟完成构建

### 3. 下载 APK
1. 点击最新的工作流运行进入详情页
2. 向下滚动到底部
3. 找到 **Artifacts** 区域
4. 点击 `PandaSU-APK-{数字}` 下载
5. 下载后会得到一个 ZIP 文件
6. 解压 ZIP 文件，里面就是 `PandaSU-v1.1.{数字}.apk`

### 示例流程
```
GitHub Actions 页面
  ↓
点击 "Build APK" 最新运行
  ↓
滚动到底部 "Artifacts"
  ↓
点击 "PandaSU-APK-123"
  ↓
下载 ZIP 文件
  ↓
解压获取 APK
```

---

## 📱 方式二：本地构建（需要完整 Android SDK）

当前本地 Android SDK 不完整，需要先安装以下组件：
- Android SDK Platform 34
- Android SDK Build-Tools 34.0.0

### 快速安装（使用 Android Studio）
1. 打开 Android Studio
2. 进入 Tools → SDK Manager
3. 安装：
   - Android 13.0 (API 34)
   - Android SDK Build-Tools 34.0.0
4. 接受所有许可证

### 手动接受许可证（如果已安装 SDK）
```bash
cd C:\Android\Sdk\cmdline-tools\latest\bin
sdkmanager.bat --licenses
# 按 y 接受所有许可证
```

### 本地构建命令
```bash
cd c:/Users/Administrator/WorkBuddy/20260321183732
./gradlew.bat assembleDebug
```

构建成功后，APK 位于：
```
app/build/outputs/apk/debug/app-debug.apk
```

---

## 🔗 快速访问链接

### GitHub Actions
```
https://github.com/luo542015332/RootGuard/actions
```

### Releases 页面（如果创建了 Release）
```
https://github.com/luo542015332/RootGuard/releases
```

### 项目主页
```
https://github.com/luo542015332/RootGuard
```

---

## ⏱️ 构建时间预估

- **首次构建**: 约 5-8 分钟
- **缓存命中**: 约 2-3 分钟
- **当前构建**: 应该在 2-3 分钟内完成（已优化缓存）

---

## 📦 APK 信息

- **应用名称**: PandaSU (RootGuard)
- **版本**: v1.1.{build_number}
- **类型**: Debug 版本
- **大小**: 约 5-8 MB（取决于资源）
- **签名**: Debug 签名（不可用于正式发布）

---

## 💡 提示

1. **使用 GitHub Actions 最简单**：无需本地配置，直接下载即可
2. **首次下载可能慢**：GitHub 服务器在中国速度可能较慢
3. **使用 VPN/代理**：如果下载慢，可以尝试使用网络加速工具
4. **APK 命名**: `PandaSU-v1.1.{run_number}.apk`

---

## 🔧 故障排除

### 问题：看不到 Artifacts
**原因**: 构建还在进行中或失败
**解决**: 等待几分钟，然后刷新页面

### 问题：下载失败
**原因**: 网络问题或构建失败
**解决**: 
- 检查网络连接
- 查看构建日志是否成功
- 重新触发构建（推送任意更改）

### 问题：APK 无法安装
**原因**: 系统权限或签名问题
**解决**:
- 允许安装未知来源应用
- 检查 Android 版本兼容性
- 使用 adb 安装：`adb install PandaSU-v1.1.xxx.apk`

---

## 📞 需要帮助？

如果遇到问题，可以：
- 查看构建日志了解错误详情
- 检查 `GitHub错误排查.md`
- 提交 Issue 到 GitHub

---

生成时间：2026-03-21 22:50
