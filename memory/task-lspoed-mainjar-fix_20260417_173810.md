# 任务总结：LSP 模块 main.jar 生成修复

## 时间
2026-04-17 17:32 - 17:37 GMT+8

## 问题
用户报告 LSP 模块仍被检测到。检查发现：
- assets/main.jar 是旧的 smali 版本（9385 bytes）
- 包含 [HM] 字符串而非 TurboX
- 不包含 XposedEntry 和 HMAService Kotlin 类

## 根因
Kotlin 源码存在且编译成功，但：
1. 编译后的 DEX 文件在 uild/intermediates/project_dex_archive/debug/out/com/pandasu/turbo/lspoed/
2. 没有被合并进 ssets/main.jar
3. build.gradle 缺少将 lspoed DEX 打包进 main.jar 的 task

## 解决方案

### 1. 创建 generateLspoedDex task
在 build.gradle 添加新 task：
- 依赖 compileDebugKotlin
- 从 project_dex_archive 目录收集所有 lspoed .dex 文件
- 合并成 main.jar（JAR 格式，包含 classes.dex, classes2.dex, ...）
- 输出到 src/main/assets/main.jar

### 2. 更新依赖配置
让 mergeDebugAssets 依赖 generateLspoedDex，确保 main.jar 在打包前生成

## 验证结果
`
main.jar size: 21175 bytes (was 9385)
classes.dex: TurboX=4, XposedEntry=4, HMAService=3
xposed_init: com.pandasu.turbo.lspoed.XposedEntry
`

## 修改文件
- app/build.gradle（添加 generateLspoedDex task）
- app/src/main/assets/main.jar（自动生成）

## 下一步
用户需要安装新 APK 并测试 LSP 模块是否正常工作
