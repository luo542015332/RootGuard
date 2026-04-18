# 任务总结：UI 布局重构 - 消除重复功能

## 时间
2026-04-17 17:17 - 17:25 GMT+8

## 目标
用户要求：
1. 广告屏蔽合并到一键优化里
2. 首页不要有快捷键，只显示系统信息

## 完成修改

### 1. SystemTweaksScreen.kt - 广告屏蔽回归
- DeepTweaksCard 新增两个 Switch：
  - 关闭系统广告（MSA、Analytics、推荐通知）
  - 关闭锁屏广告（杂志锁屏、快捷入口）
- 移除之前的提示文本
- 新增参数：adsDisabled, onToggleAds, lockScreenAdsDisabled, onToggleLockScreenAds

### 2. HomeScreen.kt - 简化为纯监控
- 移除所有快捷工具入口（温控、电池、开发者、广告屏蔽）
- 移除 QuickToolCard 组件
- 保留性能监控卡片：
  - CPU 温度 / CPU 频率
  - 电池温度 / 电池电量
  - 充电电流 / 系统状态（Root/无Root）
- 底部提示简化为：「点击下方「工具」进入全部功能」

### 3. ToolkitScreen.kt - 工具箱重新布局
- 核心功能：一键优化（含广告屏蔽）、温控调度、电池管理
- 系统调优：显示设置、后台管理
- 实用工具：系统信息、网络工具、应用管理、清理工具
- 高级工具：开发者工具、应用隐藏

## 架构改进
- 一键优化入口整合广告屏蔽，减少功能分散
- 首页专注实时监控，不再承担导航职责
- 工具箱成为唯一功能入口，结构清晰

## 编译结果
BUILD SUCCESSFUL in 8s
2 warnings（未使用参数、deprecated ArrowBack）

## 修改文件
- app/src/main/java/com/pandasu/turbo/ui/compose/tweaks/SystemTweaksScreen.kt
- app/src/main/java/com/pandasu/turbo/ui/compose/home/HomeScreen.kt
- app/src/main/java/com/pandasu/turbo/ui/compose/toolkit/ToolkitScreen.kt（未完成编辑）
