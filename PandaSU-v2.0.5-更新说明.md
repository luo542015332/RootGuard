# PandaSU v2.0.5 更新说明

## 修复问题
用户反馈："一键几个配置都是这个问提" - 一键隔离中多个预设的隔离级别配置不合理

## 问题分析
原来的预设配置存在以下问题：

### 1. 隔离级别不匹配预设名称
- **保守（CONSERVATIVE）**：仅对金融应用启用严格隔离，其他应用虽使用STRICT但缺少关键特性
- **平衡（BALANCED）**：
  - 金融应用：SandboxLevel.STRICT ✅
  - 游戏应用：SandboxLevel.MODERATE ⚠️（应为STRICT）
  - 社交应用：SandboxLevel.PERMISSIVE ❌（应为MODERATE）
  - 其他应用：SandboxLevel.PERMISSIVE ❌（应为MODERATE）
- **激进（AGGRESSIVE）**：已修复，对所有应用使用STRICT ✅
- **宽松（LENIENT）**：金融应用使用MODERATE，其他应用使用PERMISSIVE

### 2. 缺少银行级别特性
只有金融类应用才能获得完整的银行级防护，其他应用即使使用"保守"或"激进"预设也无法获得：
- 存储隔离
- 禁止Root访问
- 完整的系统属性伪装
- Busybox隐藏
- Magisk管理器应用隐藏

## 修复内容

### 1. 更新隔离级别配置
```kotlin
// 原配置：
CONSERVATIVE -> 金融: STRICT, 其他: STRICT
BALANCED -> 金融: STRICT, 游戏: MODERATE, 社交: PERMISSIVE, 其他: PERMISSIVE
AGGRESSIVE -> 金融: STRICT, 其他: MODERATE  // 问题！
LENIENT -> 金融: MODERATE, 其他: PERMISSIVE

// 新配置：
CONSERVATIVE -> 金融: STRICT, 其他: STRICT
BALANCED -> 金融: STRICT, 游戏: STRICT, 社交: MODERATE, 其他: MODERATE  // 强化
AGGRESSIVE -> 所有应用: STRICT  // 修复
LENIENT -> 金融: STRICT, 其他: PERMISSIVE  // 金融应用保持严格
```

### 2. 增强银行级别特性
为"保守"和"激进"预设启用完整的银行级防护特性：
- **存储隔离**：启用
- **禁止Root访问**：启用
- **系统属性伪装**：启用完整的发布版属性（ro.build.tags=release-keys, ro.debuggable=0, ro.secure=1）
- **Busybox隐藏**：启用
- **Magisk管理器隐藏**：启用

### 3. 平衡预设增强
- 游戏应用现在使用STRICT级别（原为MODERATE）
- 社交应用使用MODERATE级别（原为PERMISSIVE）
- 其他应用使用MODERATE级别（原为PERMISSIVE）

## 各个预设的详细配置

### 🏦 银行级别隔离（手动应用）
- 隔离级别：STRICT
- 存储隔离：✓
- Root访问禁止：✓
- 完整系统属性伪装：✓
- 适用：金融、税务等敏感应用

### 🔒 保守预设
- 隔离级别：所有应用 STRICT
- 存储隔离：✓
- Root访问禁止：✓
- 完整系统属性伪装：✓
- 适用：需要最高安全级别的所有应用

### ⚖️ 平衡预设
- 金融应用：STRICT
- 游戏应用：STRICT（强化）
- 社交应用：MODERATE（强化）
- 其他应用：MODERATE（强化）
- 适用：普通用户应用，兼顾安全和性能

### 🔥 激进预设（修复后）
- 隔离级别：所有应用 STRICT
- 存储隔离：✓
- Root访问禁止：✓
- 完整系统属性伪装：✓
- 适用：需要严格隔离但不一定是金融类的应用

### 🔓 宽松预设
- 金融应用：STRICT（强化）
- 其他应用：PERMISSIVE
- 适用：对性能要求高，安全要求较低的场景

## 版本信息
- 版本号：v2.0.5
- VersionCode：79
- 构建时间：2026-03-24
- APK路径：`C:\Users\Administrator\Desktop\PandaSU-v2.0.5-一键隔离修复.apk`

## 测试建议
1. 对不同类型的应用（金融、游戏、社交、工具）分别使用不同预设
2. 检查隔离配置是否正确应用
3. 验证系统属性伪装是否生效
4. 测试Root权限访问是否被正确限制

## 后续优化
- 考虑为每个预设添加详细的说明文档
- 增加用户自定义预设功能
- 优化隔离级别的视觉反馈