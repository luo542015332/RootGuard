# GitHub 修复指南

## ✅ 已修复的问题

### 1. GitHub Actions 工作流优化

**改进内容：**

- ✅ 添加了 Gradle 缓存，加快构建速度
- ✅ 改进了 Release 创建逻辑，不会每次 push 都创建 Release
- ✅ 添加了手动触发选项
- ✅ 使用 `--no-daemon` 参数避免 Gradle daemon 问题
- ✅ 添加了详细的 Release 说明模板
- ✅ 改进了 Artifact 命名和保留期（30天）

**新的触发方式：**

1. **自动构建（不创建 Release）**
   - 每次推送到 main 分支都会构建 APK
   - APK 作为 Artifact 保存 30 天
   - 可以在 Actions 页面下载

2. **手动触发创建 Release**
   - 进入 GitHub 仓库
   - 点击 "Actions" 标签
   - 选择 "Build APK" 工作流
   - 点击 "Run workflow"
   - 勾选 "Create a new release"
   - 点击 "Run workflow" 按钮

3. **提交信息触发**
   - 如果提交信息以 `release:` 开头，会自动创建 Release
   - 例如：`git commit -m "release: 发布 v1.1 版本"`

---

## 🔧 GitHub 设置

### 检查必要的设置

1. **检查 Actions 权限**
   - 进入仓库 Settings
   - 点击 "Actions" → "General"
   - 确保选择了 "Allow all actions and reusable workflows"

2. **检查权限设置**
   - 进入 Settings → "Actions" → "General"
   - 滚动到 "Workflow permissions"
   - 选择 "Read and write permissions"
   - ✅ 勾选 "Allow GitHub Actions to create and approve pull requests"

3. **检查 Secrets**
   - 进入 Settings → "Secrets and variables" → "Actions"
   - 应该有 `GITHUB_TOKEN`（自动提供）
   - 不需要手动添加

---

## 🚀 使用指南

### 方式一：自动构建（推荐用于开发）

1. **提交代码**
   ```bash
   git add .
   git commit -m "fix: 修复某个问题"
   git push origin main
   ```

2. **查看构建状态**
   - 进入 GitHub 仓库
   - 点击 "Actions" 标签
   - 查看最新的工作流运行

3. **下载 APK**
   - 在成功的 workflow 运行页面
   - 滚动到底部 "Artifacts"
   - 点击下载 `PandaSU-APK-xxx.apk`

### 方式二：手动创建 Release

1. **触发工作流**
   - 进入仓库 → Actions
   - 选择 "Build APK"
   - 点击 "Run workflow"
   - ✅ 勾选 "Create a new release"
   - 点击 "Run workflow"

2. **下载 Release**
   - 构建成功后，进入 "Releases" 页面
   - 下载对应的版本

### 方式三：提交触发 Release

1. **创建特殊提交**
   ```bash
   git commit -m "release: 发布 v1.1.5 版本"
   git push origin main
   ```

2. **自动创建 Release**
   - 工作流会检测到 `release:` 前缀
   - 自动创建 Release 并上传 APK

---

## 🐛 常见问题

### 问题 1：构建失败

**检查：**
- 查看 Actions 日志中的错误信息
- 确保所有文件都已提交
- 检查 `build.gradle` 配置是否正确

**解决：**
- 在 Actions 运行页面点击 "Re-run failed jobs"
- 或者推送新的代码触发重新构建

### 问题 2：Release 没有创建

**原因：**
- 提交信息没有 `release:` 前缀
- 手动触发时没有勾选创建 Release

**解决：**
- 检查提交信息格式
- 手动触发时确保勾选了选项

### 问题 3：Artifact 下载失败

**原因：**
- Artifact 保留期已过（30天）
- 网络问题

**解决：**
- 查看新的构建结果
- 或重新触发构建

### 问题 4：Actions 权限错误

**检查：**
- Settings → Actions → General
- Workflow permissions 是否设置为 "Read and write permissions"

---

## 📊 当前配置

### 构建配置
- **JDK 版本**：17 (Temurin)
- **Gradle 缓存**：启用
- **构建模式**：Debug
- **Artifact 保留**：30 天

### Release 配置
- **版本号**：v1.1.{run_number}
- **触发条件**：
  - 手动触发（勾选创建 Release）
  - 提交信息包含 `release:` 前缀
- **自动生成**：Release 说明和更新日志

---

## 🔗 快速链接

- **仓库地址**：https://github.com/luo542015332/RootGuard
- **Actions 页面**：https://github.com/luo542015332/RootGuard/actions
- **Releases 页面**：https://github.com/luo542015332/RootGuard/releases

---

## ✨ 最佳实践

1. **开发阶段**
   - 使用普通提交（不包含 `release:`）
   - 自动构建 APK 作为 Artifact 下载测试

2. **发布阶段**
   - 使用 `release:` 前缀的提交
   - 或手动触发并勾选创建 Release
   - Release 会永久保存

3. **版本管理**
   - 使用语义化版本号
   - 在 Release 说明中记录详细变更
   - 保持版本号与实际功能对应

---

*最后更新：2026-03-21*
