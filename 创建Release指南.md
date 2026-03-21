# 创建 GitHub Release 指南

## 📥 获取 APK 下载链接

### 当前可用的下载方式

#### 方式 1：GitHub Releases（推荐，永久链接）
访问 Releases 页面：
```
https://github.com/luo542015332/RootGuard/releases
```

如果有 Release，可以直接下载 APK，链接永久有效。

#### 方式 2：GitHub Actions Artifacts（临时链接，30天有效）
访问 Actions 页面：
```
https://github.com/luo542015332/RootGuard/actions
```

点击最新构建 → 滚动到底部 Artifacts → 下载

注意：Artifacts 只保留 30 天，之后会自动删除。

---

## 🚀 如何创建新的 Release

### 方法 1：使用 GitHub Web 界面（最简单）

1. **打开 Releases 页面**
   ```
   https://github.com/luo542015332/RootGuard/releases
   ```

2. **点击 "Create a new release"**
   - 右上角的 "Draft a new release" 按钮

3. **填写 Release 信息**
   - **Tag version**: 输入版本号，例如 `v1.1.1`
   - **Release title**: 例如 `PandaSU v1.1.1`
   - **Description**: 写一些说明，例如：
     ```
     ## PandaSU v1.1.1

     - 修复了图标资源问题
     - GitHub Actions 现在可以正常构建
     - 使用默认橙色图标
     ```

4. **上传 APK 文件**
   - 点击 "Attach binaries by dropping them here or selecting them"
   - 选择本地 APK 文件（如果有的话）
   - 或者在描述中说明从 Actions Artifacts 下载

5. **点击 "Publish release"**
   - 创建后，APK 下载链接就永久可用了

### 方法 2：触发 GitHub Actions 自动创建 Release

GitHub Actions 配置了两种触发方式：

#### 触发方式 1：手动触发
1. 访问 Actions 页面
2. 选择 "Build APK" 工作流
3. 点击 "Run workflow" → 选择分支 → 勾选 "Create a new release" → 运行

#### 触发方式 2：通过提交信息
提交代码时，在 commit message 开头加上 `release:`：
```bash
git commit -m "release: 更新版本到 v1.1.1"
git push
```

这样会自动创建 Release 并上传 APK。

---

## 📦 APK 下载链接格式

### Releases 页面的下载链接
```
https://github.com/luo542015332/RootGuard/releases/download/v1.1.{数字}/PandaSU-v1.1.{数字}.apk
```

例如：
```
https://github.com/luo542015332/RootGuard/releases/download/v1.1.1/PandaSU-v1.1.1.apk
```

### Artifacts 的下载链接
每次构建的链接不同，格式如下：
```
https://github.com/luo542015332/RootGuard/actions/runs/{run_number}/artifacts/{artifact_id}
```

---

## 🎯 快速获取下载链接的步骤

### 如果你现在就想下载：

1. **先检查 Releases**
   - 打开：https://github.com/luo542015332/RootGuard/releases
   - 如果有 Release，直接下载

2. **如果没有 Release，去 Actions**
   - 打开：https://github.com/luo542015332/RootGuard/actions
   - 找到最新的成功构建（绿色 ✅）
   - 点击进入 → 滚动到底部 → 下载 Artifacts

3. **等待当前构建完成**
   - 当前推送的代码正在构建中
   - 大约 2-3 分钟后完成
   - 刷新 Actions 页面查看最新状态

---

## 💡 推荐做法

### 长期使用（推荐）
创建一个 GitHub Release：
- 链接永久有效
- 不会过期
- 适合分享给他人

### 临时测试
使用 GitHub Actions Artifacts：
- 构建快
- 自动生成
- 适合测试版

---

## 📞 需要帮助？

如果找不到下载链接或创建 Release 遇到问题：
- 检查 GitHub Actions 构建是否成功
- 查看构建日志了解错误信息
- 参考 `APK下载指南.md`

---

更新时间：2026-03-21 22:52
