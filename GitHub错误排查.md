# GitHub Actions 错误排查指南

## 🔍 常见错误及解决方案

---

### 错误 1：Gradle 编译错误

**症状：**
```
Task failed with an exception.
BUILD FAILED
```

**可能原因：**
- 代码有编译错误
- 依赖问题
- SDK 版本不匹配

**解决方案：**
1. 检查本地是否能编译成功：
   ```bash
   .\gradlew.bat clean assembleDebug
   ```
2. 查看具体错误信息
3. 修复后重新推送

---

### 错误 2：权限错误

**症状：**
```
Error: Resource not accessible by integration
```

**解决方案：**
1. 进入仓库 Settings → Actions → General
2. 滚动到 "Workflow permissions"
3. 选择 "Read and write permissions"
4. ✅ 勾选 "Allow GitHub Actions to create and approve pull requests"
5. 保存设置
6. 重新运行工作流

---

### 错误 3：Release 创建失败

**症状：**
```
Error: Resource not accessible by integration
Error: Release creation failed
```

**解决方案：**
1. 确保 Workflow permissions 已设置为 "Read and write permissions"
2. 检查是否已经有相同版本的 Release
3. 如果需要，手动删除旧的 Release
4. 重新运行工作流

---

### 错误 4：Android SDK 问题

**症状：**
```
Failed to install Android SDK packages
```

**解决方案：**
这个通常由 GitHub Actions 自动处理，如果持续失败：
1. 检查 `build.gradle` 中的 `compileSdkVersion` 和 `targetSdkVersion`
2. 确保版本号合理（推荐 34）
3. 可能需要更新工作流中的 SDK 设置

---

### 错误 5：缓存问题

**症状：**
```
Cache not found for input keys
```

**解决方案：**
1. 清理缓存：
   - 进入 Actions → Caches
   - 删除相关的缓存
2. 重新运行工作流

---

### 错误 6：Artifact 上传失败

**症状：**
```
Error: Unable to upload artifact
```

**解决方案：**
1. 检查文件大小是否过大（GitHub 限制 2GB）
2. 检查文件路径是否正确
3. 确认 APK 文件确实已生成

---

## 🔧 当前工作流配置

### 检查清单

- [ ] Workflow permissions 已设置为 "Read and write permissions"
- [ ] 代码可以本地编译成功
- [ ] `build.gradle` 配置正确
- [ ] 没有重复的 Release
- [ ] 缓存清理（如有必要）

---

## 🚀 快速修复步骤

### 步骤 1：查看详细错误

1. 打开 GitHub Actions 页面
2. 点击失败的 workflow 运行
3. 查看具体哪一步失败
4. 查看错误日志的详细信息

### 步骤 2：修复本地问题

```bash
# 本地测试编译
.\gradlew.bat clean assembleDebug

# 如果成功，检查文件
dir app\build\outputs\apk\debug\
```

### 步骤 3：更新工作流配置

如果需要，可以修改 `.github/workflows/build.yml`

### 步骤 4：重新运行

在 GitHub Actions 页面：
1. 点击失败的 workflow
2. 点击 "Re-run failed jobs" 或 "Re-run all jobs"

---

## 📋 工作流配置检查

### 当前配置应该包含：

```yaml
permissions:
  contents: write

steps:
  - Checkout code
  - Set up JDK 17
  - Set up Android SDK
  - Grant execute permission for gradlew
  - Cache Gradle packages
  - Clean Gradle Build
  - Build Debug APK
  - Rename APK
  - Upload APK
  - Create Release (可选)
```

---

## 🆘 如果所有方法都失败

### 临时解决方案：仅构建不创建 Release

修改工作流，注释掉 Release 创建部分：

```yaml
# - name: Create Release
#   if: ...
#   uses: softprops/action-gh-release@v1
```

这样至少可以生成 APK 作为 Artifact 下载。

---

## 📞 需要帮助？

1. **查看错误详情**
   - GitHub Actions 页面 → 失败的 workflow → 查看日志

2. **搜索错误信息**
   - 将错误信息复制到 Google 搜索
   - 通常能找到解决方案

3. **检查 GitHub Status**
   - https://www.githubstatus.com/
   - 确认 GitHub 服务是否正常

---

## ✅ 常见成功日志

正常的构建日志应该包含：

```
✓ Checkout code
✓ Set up JDK 17
✓ Set up Android SDK
✓ Grant execute permission for gradlew
✓ Clean Gradle Build
✓ Build Debug APK
✓ Rename APK
✓ Upload APK
✓ Create Release (如果触发)
```

---

## 🔍 调试技巧

### 1. 查看完整日志
- 在 GitHub Actions 页面
- 点击失败的步骤
- 点击 "Show more" 查看完整日志

### 2. 本地模拟
```bash
# 模拟 GitHub Actions 环境
.\gradlew.bat clean assembleDebug --stacktrace --info
```

### 3. 检查构建输出
```bash
# 检查 APK 是否生成
dir app\build\outputs\apk\debug\
```

---

*文档创建时间：2026-03-21 22:19*
