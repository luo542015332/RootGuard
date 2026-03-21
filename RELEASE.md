# RootGuard 发布包制作指南

## 📦 制作发布包

### 方式一：完整源码包（适合开发者）

```bash
# 创建源码压缩包
cd RootGuard
zip -r RootGuard-v1.0.0-source.zip . \
  -x "*.git*" \
  -x "*.gradle*" \
  -x "*/build/*" \
  -x "*.idea*" \
  -x "*.iml"
```

### 方式二：用户安装包（适合普通用户）

包含：
- APK 文件
- 安装脚本
- 使用文档

```bash
# 创建发布目录
mkdir -p RootGuard-v1.0.0

# 复制文件
cp app/build/outputs/apk/debug/app-debug.apk RootGuard-v1.0.0/
cp app/build/outputs/apk/release/app-release-unsigned.apk RootGuard-v1.0.0/ 2>/dev/null || true
cp install.ps1 RootGuard-v1.0.0/ 2>/dev/null || true
cp install.sh RootGuard-v1.0.0/ 2>/dev/null || true
cp QUICKSTART.md RootGuard-v1.0.0/
cp INSTALL.md RootGuard-v1.0.0/

# 创建压缩包
zip -r RootGuard-v1.0.0.zip RootGuard-v1.0.0/
```

---

## 📂 发布包结构

```
RootGuard-v1.0.0/
├── 📱 app-debug.apk              # Debug 版本
├── 📱 app-release-unsigned.apk   # Release 版本（未签名）
├── 🪟 install.ps1                # Windows 安装脚本
├── 🐧 install.sh                 # Linux/Mac 安装脚本
├── 📖 QUICKSTART.md              # 快速开始指南
├── 📖 INSTALL.md                 # 安装指南
└── 📄 README.md                  # 项目说明
```

---

## 🚀 发布步骤

### 1. 构建 APK

```bash
# 构建所有版本
./gradlew assembleDebug assembleRelease
```

### 2. 测试 APK

- 在多台设备上测试
- 检查所有功能是否正常
- 验证主题切换

### 3. 创建发布

**GitHub Releases:**
1. 访问 GitHub 仓库
2. 点击 Releases → Create a new release
3. 填写版本号（如 v1.0.0）
4. 上传 APK 文件
5. 发布

**其他渠道:**
- 酷安
- XDA Developers
- 4PDA

### 4. 更新文档

- 更新版本号
- 添加更新日志
- 更新截图

---

## 📝 版本号规范

使用语义化版本控制（Semantic Versioning）：

```
版本格式：主版本号.次版本号.修订号

示例：
- 1.0.0 - 初始发布
- 1.1.0 - 新增功能
- 1.1.1 - 修复 bug
- 2.0.0 - 重大更新
```

---

## 🔐 签名 Release APK

### 生成密钥库

```bash
keytool -genkey -v \
  -keystore rootguard.keystore \
  -alias rootguard \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000
```

### 签名 APK

```bash
# 使用 apksigner（推荐）
apksigner sign \
  --ks rootguard.keystore \
  --ks-key-alias rootguard \
  --out app-release-signed.apk \
  app-release-unsigned.apk

# 或使用 jarsigner
jarsigner -verbose \
  -sigalg SHA1withRSA \
  -digestalg SHA1 \
  -keystore rootguard.keystore \
  app-release-unsigned.apk \
  rootguard
```

### 验证签名

```bash
apksigner verify -v app-release-signed.apk
```

---

## 📊 发布检查清单

### 功能测试
- [ ] Root 状态检测正常
- [ ] 模块管理功能正常
- [ ] 应用管理功能正常
- [ ] Root 请求弹窗正常
- [ ] 重启功能正常
- [ ] 主题切换正常

### 兼容性测试
- [ ] Android 8.0 (API 26)
- [ ] Android 10 (API 29)
- [ ] Android 12 (API 31)
- [ ] Android 14 (API 34)

### 文档检查
- [ ] README.md 已更新
- [ ] 版本号已更新
- [ ] 更新日志已添加
- [ ] 截图已更新

### 发布准备
- [ ] Debug APK 已构建
- [ ] Release APK 已签名
- [ ] 安装脚本已测试
- [ ] GitHub Release 已创建

---

## 🎯 发布渠道

| 渠道 | 说明 | 链接 |
|------|------|------|
| GitHub Releases | 主要发布渠道 | github.com/xxx/RootGuard/releases |
| 酷安 | 国内安卓社区 | coolapk.com |
| XDA | 国际开发者社区 | forum.xda-developers.com |
| Telegram | 即时通讯群组 | t.me/RootGuard |

---

## 📞 用户支持

提供以下支持渠道：

1. **GitHub Issues** - Bug 报告和功能请求
2. **Telegram 群组** - 用户交流和帮助
3. **邮件支持** - rootguard@example.com

---

## 🎉 发布成功

恭喜你！RootGuard 已成功发布 🐼

记得：
- 感谢贡献者
- 收集用户反馈
- 持续改进
