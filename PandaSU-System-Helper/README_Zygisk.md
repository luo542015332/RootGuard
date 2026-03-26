# PandaSU Zygisk 模块 - 多 API 兼容版本

## 支持的 Root 方案
- Magisk (官方 Zygisk)
- ZygiskSU / KernelSU 内置 Zygisk
- ZygiskNext

## 功能特性
1. **文件隐藏** - Hook open/stat/lstat/getdents64 等函数，隐藏 Root 相关路径
2. **属性伪装** - 伪造 ro.debuggable、ro.secure 等系统属性
3. **应用列表过滤** - 过滤 pm list 命令输出中的 Root 相关包名
4. **目录遍历隐藏** - 在 getdents64 中过滤隐藏的目录项

## 编译说明
需要 Android NDK 环境：
```bash
ndk-build
```

## 模块安装
将生成的 `libzygisk_pandasu.so` 放到模块的 `zygisk/` 目录下：
```
/data/adb/modules/zygisk_pandasu/
├── module.prop
├── zygisk/
│   └── libzygisk_pandasu.so
└── ...
```

## 版本历史
- v3.0.0 - 多 API 兼容版本，同时支持 Magisk/ZygiskSU/ZygiskNext
- v2.3.2 - ZygiskNext API 版本