# PandaSU System Helper

PandaSU系统级隐藏模块 - 与应用配合使用

## 功能特点

### ✅ 已实现（无需Zygisk）
- **强制DenyList**：自动设置policy=1, enforce=2
- **系统属性伪装**：18+个属性（Shamiko级别）
- **Recovery模式隐藏**：自动隐藏Magisk Recovery痕迹
- **TrickyStore同步**：自动同步PandaSU隔离配置到TrickyStore
- **进程隐藏**：通过mount bind隐藏Root进程名

### 🔄 需Zygisk支持（高级功能）
- **su文件隐藏**：Hook文件系统调用，让检测程序找不到su
- **mount信息过滤**：过滤/proc/self/mounts中的Magisk挂载点
- **应用列表过滤**：隐藏Root相关应用列表

## 安装方式

### 方式1：Magisk Manager
1. 打开Magisk Manager
2. 选择"模块" → "从本地安装"
3. 选择PandaSU-System-Helper-v1.0.0.zip
4. 重启设备

### 方式2：KernelSU/APatch
1. 打开KernelSU/APatch Manager
2. 选择"模块" → "安装本地模块"
3. 选择PandaSU-System-Helper-v1.0.0.zip
4. 重启设备

## 配置说明

模块配置文件：`/data/adb/pandasu/config`

```bash
# 是否隐藏su文件（需要Zygisk支持）
hide_su=0

# 是否隐藏Root进程名
hide_processes=0

# 是否过滤mount信息（需要Zygisk支持）
hide_mounts=0

# 是否强制DenyList
force_denylist=1

# 是否同步PandaSU配置到TrickyStore
sync_tricky=1
```

## 配合PandaSU应用使用

1. **安装模块**：刷入本模块并重启
2. **打开PandaSU应用**：配置应用隔离
3. **自动同步**：模块每60秒自动同步配置到TrickyStore
4. **实时查看**：PandaSU应用的环境检测会显示模块状态

## 日志查看

模块日志：`/data/adb/pandasu/module.log`

```bash
# 查看日志
adb shell cat /data/adb/pandasu/module.log

# 实时查看
adb shell tail -f /data/adb/pandasu/module.log
```

## 文件结构

```
PandaSU-System-Helper/
├── META-INF/
│   └── com/google/android/update-binary
├── module.prop              # 模块信息
├── customize.sh             # 安装脚本
├── service.sh               # 后台服务
├── post-fs-data.sh          # 早期启动脚本
├── system.prop              # 系统属性
├── sepolicy.rule            # SELinux规则
└── zygisk/
    └── arm64-v8a/
        └── libpanda.so      # Zygisk Hook库（可选）
```

## 版本更新

### v1.0.0
- ✨ 初始版本
- ✨ 强制DenyList
- ✨ 系统属性伪装（Shamiko级别）
- ✨ Recovery模式隐藏
- ✨ TrickyStore白名单同步
- ✨ 进程隐藏（mount bind）
- ✨ 完整日志系统

## 注意事项

1. **需要Root环境**：Magisk/KernelSU/APatch
2. **配合PandaSU应用**：单独使用效果有限
3. **TrickyStore可选**：如不使用TrickyStore，可将sync_tricky设为0
4. **Zygisk功能可选**：如不使用高级隐藏，可不编译libpanda.so

## 源码构建

### 构建模块ZIP

```bash
cd PandaSU-System-Helper
zip -r9 PandaSU-System-Helper-v1.0.0.zip .
```

### 编译Zygisk库（可选）

需要Android NDK和C++源码，参考`zygisk/arm64-v8a/libpanda.so`中的说明。

## 问题反馈

- GitHub Issues: https://github.com/PandaSU/PandaSU-System-Helper/issues
- 日志文件: `/data/adb/pandasu/module.log`

## 许可证

MIT License

## 致谢

- Shamiko项目 - 属性伪装灵感
- TrickyStore项目 - 白名单同步参考
- Magisk团队 - 框架支持
