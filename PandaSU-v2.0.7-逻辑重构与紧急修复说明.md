# PandaSU v2.0.7 - 逻辑重构与紧急修复说明

## 修复概要
**版本**: v2.0.7 (versionCode: 81)  
**修复日期**: 2026-03-24 08:40  
**问题来源**: 用户反馈"123 都要 保守、激进、平衡是不是对应 银行、游戏、社交 逻辑有点问题"

## 问题分析

### 1. 逻辑混乱问题
- **原始设计**: "保守、激进、平衡"预设与"银行、游戏、社交"应用分类存在逻辑脱节
- **用户困惑**: 预设名称（隔离强度）与应用分类（应用类型）混在一起，造成认知混淆
- **实际需求**: 用户需要"银行、游戏、社交"三类应用都得到适当防护

### 2. Root环境检测问题
- **日志发现**: 所有Root相关命令都失败
  - `magisk: inaccessible or not found`
  - `ksu denylist`命令失败
  - `mount --bind`命令失败
- **根本原因**: 
  - 代码硬编码了Magisk和KernelSU两种命令
  - 没有根据实际检测到的Root环境类型选择命令
  - 设备可能使用KernelSU，但代码尝试执行Magisk命令

## 解决方案

### 第一阶段：重新设计逻辑（方案2）

#### 设计理念
1. **预设对应隔离强度**
   - CONSERVATIVE（保守）：中等强度，银行应用严格，其他中等
   - BALANCED（平衡）：智能强度，根据应用类型调整
   - AGGRESSIVE（激进）：最高强度，所有应用严格
   - LENIENT（宽松）：最低强度，银行严格，其他宽松

2. **应用分类对应默认配置**
   - FINANCE（金融/银行）：总是严格隔离
   - GAME（游戏）：根据预设调整强度
   - SOCIAL（社交）：根据预设调整强度
   - 其他分类：使用预设的基础强度

#### 修改的文件

##### 1. `app/src/main/java/com/rootguard/app/utils/OneClickIsolationHelper.kt`
- **函数**: `generateIsolationConfig()`
- **修改内容**:
  ```kotlin
  // 原始逻辑（混乱）：
  val sandboxLevel = when (preset) {
      CONSERVATIVE -> when (appInfo.category) {
          FINANCE -> STRICT
          else -> STRICT  // 保守预设：所有应用都严格隔离
      }
      // ...
  }
  
  // 新逻辑（清晰）：
  // 第一步：根据预设决定基础隔离强度
  val baseLevel = when (preset) {
      CONSERVATIVE -> MODERATE
      BALANCED -> MODERATE  // 平衡预设由分类微调
      AGGRESSIVE -> STRICT
      LENIENT -> PERMISSIVE
  }
  
  // 第二步：根据应用分类微调隔离强度
  val finalLevel = when (appInfo.category) {
      FINANCE -> SandboxLevel.STRICT  // 银行应用总是严格隔离
      GAME -> when (preset) {
          AGGRESSIVE -> STRICT
          BALANCED -> STRICT      // 平衡预设：游戏严格
          CONSERVATIVE -> MODERATE
          LENIENT -> PERMISSIVE
      }
      // ...
  }
  ```

##### 2. `app/src/main/java/com/rootguard/app/utils/OneClickIsolationHelper.kt`
- **函数**: `generateCustomProps()`
- **修改内容**: 更新函数签名，根据应用分类和隔离级别生成系统属性

### 第二阶段：紧急修复

#### 修复的文件

##### 1. `app/src/main/java/com/rootguard/app/data/magisk/RootHider.kt`

**新增函数**: `checkToolAvailable()`
- **功能**: 检查Root相关工具是否可用
- **实现**: 使用`which`命令检查工具路径

**修复函数**: `configureMagiskHide()`
- **原始问题**: 同时尝试Magisk和KernelSU命令，没有检测工具可用性
- **修复内容**:
  ```kotlin
  // 新逻辑：根据检测到的Root环境类型选择命令
  when (rootType) {
      RootMode.MAGISK -> {
          if (checkToolAvailable("magisk")) {
              runSuCommand("magisk --denylist add $pkg")
          } else {
              // 回退到SQLite直接操作
              runSuCommand("sqlite3 /data/adb/magisk.db ...")
          }
      }
      RootMode.KERNELSU -> {
          if (checkToolAvailable("ksu")) {
              runSuCommand("ksu denylist add $pkg")
          }
      }
      else -> {
          // 不支持的其他Root类型
      }
  }
  ```

**修复函数**: `isolateStorageForPackage()`
- **原始问题**: 硬编码了KernelSU和Magisk命令
- **修复内容**: 根据Root环境类型使用正确的存储隔离方法

**修复函数**: `removeIsolation()`
- **原始问题**: 同时移除Magisk和KernelSU隐藏
- **修复内容**: 根据Root环境类型选择正确的移除方法

**修复函数**: `hideXposedForPackage()`
- **原始问题**: 硬编码了LSPosed路径
- **修复内容**: 检查LSPosed是否安装，使用正确的路径

## 新逻辑的隔离强度配置

### 预设强度定义
| 预设 | 基础强度 | 银行 | 游戏 | 社交 |
|------|----------|------|------|------|
| **保守** | MODERATE | STRICT | MODERATE | MODERATE |
| **平衡** | MODERATE | STRICT | STRICT | MODERATE |
| **激进** | STRICT | STRICT | STRICT | STRICT |
| **宽松** | PERMISSIVE | STRICT | PERMISSIVE | PERMISSIVE |

### 应用分类处理
1. **FINANCE（银行）**: 总是严格隔离，无论预设
2. **GAME（游戏）**: 
   - 保守预设：中等隔离
   - 平衡预设：严格隔离
   - 激进预设：严格隔离
   - 宽松预设：宽松隔离
3. **SOCIAL（社交）**:
   - 保守预设：中等隔离
   - 平衡预设：中等隔离
   - 激进预设：严格隔离
   - 宽松预设：宽松隔离

## 技术改进

### 1. Root环境统一管理
- 所有Root操作都通过`RootEnvironmentDetector.detectRootMode()`获取当前环境
- 根据实际环境类型选择正确的命令路径

### 2. 工具可用性检查
- 新增`checkToolAvailable()`函数
- 在执行命令前检查工具是否存在
- 提供回退方案（如SQLite直接操作）

### 3. 错误处理增强
- 具体错误信息记录
- 非致命错误容忍（如Xposed隐藏失败）
- 详细日志记录Root环境类型和操作结果

## 预期效果

### 1. 解决逻辑混乱
- 预设名称明确对应隔离强度
- 应用分类明确对应应用类型
- 用户界面清晰直观

### 2. 解决Root命令失败
- 正确检测设备Root环境类型
- 使用对应环境的命令
- 提供工具可用性检查和回退方案

### 3. 功能完整性
- 保守预设：银行严格，其他中等
- 平衡预设：银行和游戏严格，社交中等
- 激进预设：所有应用严格
- 宽松预设：银行严格，其他宽松

## 测试验证

### 1. 编译测试
- 确保没有类型错误
- 确保所有函数调用参数正确
- 确保导入依赖完整

### 2. 功能测试
1. **Root环境检测**:
   - 验证`detectRootMode()`返回正确的Root类型
   - 验证工具可用性检查

2. **隔离配置生成**:
   - 测试不同预设和应用分类的组合
   - 验证隔离强度配置正确

3. **命令执行**:
   - 验证根据Root类型选择正确的命令
   - 测试工具不可用时的回退方案

## 后续优化建议

### 1. 用户界面改进
- 更直观的预设选择界面
- 应用分类可视化展示
- 隔离强度预览功能

### 2. 功能扩展
- 自定义预设支持
- 应用分类手动调整
- 隔离效果实时监控

### 3. 兼容性增强
- 更多Root方案支持
- 自动适配不同Android版本
- 更好的错误恢复机制

## 总结

本次修复解决了PandaSU的核心逻辑问题和功能缺陷：

1. **逻辑重构**: 清晰分离预设强度和应用分类，解决用户认知混淆
2. **紧急修复**: 修复Root环境检测与命令执行脱节问题，确保隔离功能正常
3. **技术改进**: 统一Root环境管理，增强错误处理和兼容性

v2.0.7版本为PandaSU提供了更稳定、更直观的隔离防护功能，满足用户对银行、游戏、社交等不同类型应用的安全防护需求。