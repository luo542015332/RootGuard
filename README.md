# PandaTurbo - 免Root游戏优化工具

## 功能特点

### ✅ 已实现功能
1. **游戏自动检测** - 通过无障碍服务自动识别游戏启动
2. **后台清理** - 游戏时自动清理后台应用
3. **性能监控** - 实时显示温度、FPS、网络延迟
4. **显示优化** - 自动调整屏幕亮度和刷新率
5. **网络优化** - 启用游戏网络模式

### ⚠️ 免Root限制
- 无法修改内核温控参数
- 无法实现真正的CPU/GPU超频
- 无法修改系统分区
- 温度控制仅为显示层面的优化

## 技术架构

```
PandaTurbo/
├── app/src/main/java/com/pandasu/turbo/
│   ├── MainActivity.kt           # 主界面
│   ├── GameManager.kt           # 核心优化引擎
│   ├── GameDetectionService.kt  # 游戏检测服务
│   ├── GameAccessibilityService.kt # 无障碍服务
│   └── PerformanceMonitorService.kt # 性能监控服务
├── app/src/main/res/
│   ├── layout/activity_main.xml  # 主界面布局
│   └── xml/accessibility_service_config.xml # 无障碍配置
└── build.gradle                   # 项目配置
```

## 权限说明

```xml
<!-- 需要申请的权限 -->
<uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
<uses-permission android:name="android.permission.WAKE_LOCK" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.PACKAGE_USAGE_STATS" />
<uses-permission android:name="android.permission.BIND_ACCESSIBILITY_SERVICE" />
```

## 使用方法

1. 安装APK
2. 开启无障碍服务（设置 → 无障碍 → PandaTurbo）
3. 开启使用情况统计权限（设置 → 使用情况统计）
4. 启动游戏，应用自动优化

## 编译方法

```bash
cd PandaTurbo
./gradlew assembleDebug
```

APK输出位置: `app/build/outputs/apk/debug/app-debug.apk`

## 适用场景

- 🎮 手游玩家
- 📱 普通Android用户
- 🔒 不想解锁BL/ROOT的用户
- ⚡ 需要简单游戏优化的用户

## 注意事项

- 部分功能需要Android 12+
- 免Root环境功能有限
- 效果因设备而异
- 数据安全，不影响系统稳定性