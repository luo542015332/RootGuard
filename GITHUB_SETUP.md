# RootGuard - GitHub 自动构建指南

## 🚀 快速开始

### 步骤 1: 创建 GitHub 仓库

1. 登录 GitHub: https://github.com
2. 点击右上角 **+** → **New repository**
3. 填写信息：
   - Repository name: `RootGuard`
   - 选择 **Public**
   - **不要**勾选 "Add a README file"
4. 点击 **Create repository**

---

### 步骤 2: 上传项目

#### 方式 A: 使用 GitHub Desktop（推荐）

1. 下载安装 [GitHub Desktop](https://desktop.github.com/)
2. 登录你的 GitHub 账号
3. File → Add local repository
4. 选择 `C:\Users\Administrator\.qclaw\workspace\RootGuard`
5. Publish repository → Publish

#### 方式 B: 使用命令行

打开 PowerShell，运行：

```powershell
cd C:\Users\Administrator\.qclaw\workspace\RootGuard

git init
git add .
git commit -m "Initial commit: RootGuard v1.0"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/RootGuard.git
git push -u origin main
```

> 替换 `YOUR_USERNAME` 为你的 GitHub 用户名

#### 方式 C: 直接上传（最简单）

1. 打开 https://github.com/YOUR_USERNAME/RootGuard
2. 点击 **uploading an existing file**
3. 把 RootGuard 文件夹里的所有文件拖进去
4. 点击 **Commit changes**

---

### 步骤 3: 等待自动构建

1. 上传完成后，点击 **Actions** 标签页
2. 会看到一个 "Build APK" 工作流正在运行
3. 等待 3-5 分钟构建完成

---

### 步骤 4: 下载 APK

构建完成后有两种方式下载：

#### 方式 A: 从 Releases 下载
1. 点击 **Releases** 标签
2. 下载 `app-debug.apk`

#### 方式 B: 从 Artifacts 下载
1. 点击 Actions → 选择最新的工作流
2. 在底部 **Artifacts** 区域下载 `RootGuard-APK.zip`
3. 解压得到 `app-debug.apk`

---

## 📁 需要上传的文件

确保这些文件都上传了：

```
RootGuard/
├── .github/workflows/build.yml  ← GitHub Actions 配置
├── app/                         ← 应用源码
├── gradle/                      ← Gradle Wrapper
├── build.gradle
├── settings.gradle
├── gradlew
├── gradlew.bat
└── README.md
```

---

## ❓ 常见问题

### Q: 构建失败怎么办？

检查 Actions 日志，常见问题：
- 缺少文件 → 确保所有文件都上传
- Gradle 错误 → 检查 build.gradle 配置

### Q: 如何更新代码？

修改文件后：
```bash
git add .
git commit -m "Update"
git push
```

GitHub Actions 会自动重新构建。

---

## 🎯 预期结果

成功后你会得到：
- ✅ 一个可安装的 APK 文件
- ✅ 自动版本号（v1.0.1, v1.0.2...）
- ✅ Release 页面展示

---

**项目位置:** `C:\Users\Administrator\.qclaw\workspace\RootGuard`