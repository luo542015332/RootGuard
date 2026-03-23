# PandaSU 独立 Root 管理器方案

## 目标
将 PandaSU 从"Root 管理辅助工具"升级为"独立 Root 管理器"，不再依赖 KernelSU 或 Magisk。

---

## 一、Root 管理器的核心技术架构

### 1.1 当前主流方案对比

| 方案 | 实现层级 | 核心技术 | 优势 | 劣势 |
|------|---------|---------|------|------|
| **Magisk** | 用户空间 | Zygote 注入 + Magic Mount | 兼容性好，模块丰富 | 容易被检测 |
| **KernelSU** | 内核空间 | 内核 Hook + 白名单控制 | 隐蔽性强，权限精细 | 需要修补内核 |
| **APatch** | 内核空间 | 内核补丁 + 模块系统 | 类似 KernelSU | 较新，生态不完善 |

### 1.2 Root 管理器的必备组件

1. **Root 注入层**（最关键）
   - 提供最基本的 Root 权限获取能力
   - 传统方案：通过修改 boot.img 注入 su 二进制文件
   - 内核方案：在内核层面 Hook 系统调用

2. **权限管理层**
   - 控制哪些应用可以获得 Root 权限
   - 数据库存储授权列表
   - 提供授权界面（超级用户列表）

3. **命令执行层**
   - 提供 `su` 命令供应用调用
   - 处理 Root 权限请求
   - 执行特权命令

4. **隐藏与伪装层**
   - 隐藏 Root 痕迹
   - 绕过应用检测
   - 系统属性伪装

---

## 二、PandaSU 独立方案设计

### 方案A：基于 Magisk/libsu 的用户空间方案（快速实现）

**核心思路**：
- PandaSU 自己实现类似 Magisk 的 Root 注入
- 使用 libsu 库管理 Root shell
- 提供独立的授权管理

**实现步骤**：

#### 1. 创建独立的 su 二进制文件
```kotlin
// PandaSU 需要提供自己的 su 命令
// 路径：/system/bin/su 或 /data/local/tmp/su

class PandaSUSuBinary {
    // 检查调用者是否在授权列表中
    fun checkAuthorization(callerUid: Int): Boolean {
        // 查询 PandaSU 自己的数据库
        val db = SQLiteDatabase.openDatabase(
            "/data/data/com.rootguard.app/databases/authorization.db",
            null,
            SQLiteDatabase.OPEN_READONLY
        )
        // 查询授权列表
        val cursor = db.query(
            "authorized_apps",
            arrayOf("uid"),
            "uid = ?",
            arrayOf(callerUid.toString()),
            null, null, null
        )
        return cursor.count > 0
    }
    
    // 如果授权，启动 Root shell
    fun grantRoot() {
        // 执行 /system/bin/su 或创建 Root shell
    }
}
```

#### 2. 实现 Root 注入（关键难点）
```
PandaSU 需要：
1. 修改 boot.img，注入以下内容：
   - PandaSU 的 su 二进制文件
   - PandaSU 的守护进程（pandasud）
   - 启动脚本（init.rc）

2. boot.img 修改流程：
   - 解包 boot.img
   - 修改 ramdisk，添加 PandaSU 文件
   - 添加 init 脚本，开机启动 pandasud
   - 重新打包 boot.img
   - 刷入设备
```

**修改 boot.img 的关键文件**：
```bash
# boot.img 解包后的结构
boot.img/
├── kernel
├── ramdisk/
│   ├── init.rc              # 添加 PandaSU 启动服务
│   ├── system/
│   │   └── bin/
│   │       ├── su           # PandaSU 的 su 命令
│   │       └── pandasud     # PandaSU 守护进程
│   └── data/
│       └── pandasu/
│           └── settings.db  # 授权数据库
```

#### 3. PandaSU init 服务配置
```rc
# init.rc 添加内容
service pandasud /system/bin/pandasud
    class main
    user root
    group root
    disabled
    oneshot

on post-fs-data
    start pandasud
```

#### 4. PandaSU 守护进程实现
```kotlin
class PandaSUDaemon {
    fun main() {
        // 1. 监听 UNIX Socket
        val serverSocket = LocalServerSocket("pandasu")
        
        // 2. 等待应用连接
        while (true) {
            val client = serverSocket.accept()
            
            // 3. 读取请求
            val request = client.inputStream.readObject() as RootRequest
            
            // 4. 检查授权
            if (isAuthorized(request.packageName)) {
                // 5. 授予 Root 权限
                grantRoot(client, request)
            }
        }
    }
}
```

**优势**：
- ✅ 实现相对简单
- ✅ 兼容性好（基于用户空间）
- ✅ 可以快速实现原型

**劣势**：
- ❌ 仍然需要修改 boot.img（类似 Magisk）
- ❌ 容易被应用检测
- ❌ 安全性较低（用户空间）

---

### 方案B：内核级 Root 方案（彻底独立）

**核心思路**：
- PandaSU 实现类似 KernelSU 的内核 Hook
- 在内核层面提供 Root 权限
- 完全不依赖其他 Root 方案

**技术难度**：⭐⭐⭐⭐⭐（非常高）

**实现步骤**：

#### 1. 开发内核模块
```c
// pandasu_kernel.c
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/sched.h>

// Hook execve 系统调用
static asmlinkage long (*original_execve)(const char __user *filename,
                                           const char __user *const __user *argv,
                                           const char __user *const __user *envp);

static asmlinkage long pandasu_execve(const char __user *filename,
                                      const char __user *const __user *argv,
                                      const char __user *const __user *envp) {
    // 检查是否是 su 命令
    if (strcmp(filename, "/system/bin/su") == 0) {
        // 检查调用者是否在授权列表
        if (is_authorized(current->cred->uid)) {
            // 授予 Root 权限
            commit_creds(prepare_kernel_cred(NULL));
        }
    }
    
    return original_execve(filename, argv, envp);
}

// 内核模块初始化
static int __init pandasu_init(void) {
    // Hook 系统调用
    // ...
    return 0;
}

module_init(pandasu_init);
```

#### 2. 修改内核源码
```
需要：
1. 获取设备内核源码
2. 集成 PandaSU 内核模块
3. 编译自定义内核
4. 刷入设备
```

**优势**：
- ✅ 完全独立，不依赖任何方案
- ✅ 最高级别的隐蔽性
- ✅ 精细的权限控制

**劣势**：
- ❌ 技术难度极高
- ❌ 需要为每个设备编译内核
- ❌ 开发周期长（数月到数年）

---

## 三、推荐实现路径

### 阶段1：当前状态（v1.4.58）
- PandaSU 作为 Root 管理辅助工具
- 依赖 KernelSU/Magisk 提供 Root 权限
- 提供应用隔离、Root 隐藏等功能

### 阶段2：混合模式（v2.0）
- 实现方案A（基于 libsu 的用户空间方案）
- PandaSU 可以选择两种模式：
  - **依赖模式**：依赖 KernelSU/Magisk（当前方式）
  - **独立模式**：自己提供 Root 权限（需要刷入 PandaSU 修补的 boot）

**实现步骤**：
1. 开发 boot.img 修补工具（类似 Magisk 的 boot patch）
2. 创建 PandaSU 的 su 二进制文件
3. 实现 PandaSU 守护进程
4. 提供独立的授权管理

**预估时间**：2-3 个月

### 阶段3：完全独立（v3.0）
- 实现方案B（内核级方案）
- PandaSU 完全独立，不依赖任何第三方
- 提供内核模块版本

**预估时间**：6-12 个月

---

## 四、当前可行的快速方案

### 混合授权模式（最快实现）

**思路**：PandaSU 检测设备是否已有 Root，选择不同的工作模式

```kotlin
enum class RootMode {
    KERNELSU,    // 依赖 KernelSU
    MAGISK,      // 依赖 Magisk
    STANDALONE   // 独立模式（未来实现）
}

class PandaSUCore {
    fun detectRootMode(): RootMode {
        return when {
            // 检测 KernelSU
            File("/data/adb/kernelsu.db").exists() -> RootMode.KERNELSU
            
            // 检测 Magisk
            File("/data/adb/magisk.db").exists() -> RootMode.MAGISK
            
            // 检测 PandaSU 独立模式
            File("/data/pandasu/pandasu.db").exists() -> RootMode.STANDALONE
            
            else -> throw Exception("未检测到 Root 环境")
        }
    }
    
    fun requestRoot(): Boolean {
        return when (detectRootMode()) {
            RootMode.KERNELSU -> requestKernelSURoot()
            RootMode.MAGISK -> requestMagiskRoot()
            RootMode.STANDALONE -> requestStandaloneRoot()
        }
    }
}
```

---

## 五、结论与建议

### 当前问题
- PandaSU 依赖 KernelSU 授权才能工作
- 重启后如果未授权，服务无法启动

### 最快解决方案（推荐）
**保持当前架构，优化授权流程**：

1. **首次启动引导**：
   - 检测是否有 Root 环境
   - 提示用户在 KernelSU/Magisk 中授权
   - 提供一键授权按钮（跳转到 KernelSU 管理器）

2. **自动检测授权**：
   - 启动时检查是否有 Root 权限
   - 定期检查授权状态
   - 未授权时显示提示，不启动服务

3. **持久化授权**：
   - KernelSU 的授权是持久化的
   - 只需授权一次，重启后仍然有效
   - 问题在于用户可能忘记了授权

### 长期目标
如果想让 PandaSU 完全独立，需要：
1. 投入大量时间开发（方案A：2-3个月，方案B：6-12个月）
2. 维护多个内核版本
3. 处理各种设备兼容性问题

3. **友好的用户提示**：
   - 未授权时显示明确的引导界面
   - 提供视频教程链接
   - 支持远程协助授权

### 长期目标
**开发独立 Root 方案**（v2.0+）：
- 实现 boot.img 修补功能
- 提供 PandaSU 独立模式
- 逐步摆脱对 KernelSU/Magisk 的依赖

---

## 六、立即可以做的事

### 优化当前版本（v1.4.59）

**添加授权引导界面**：

```kotlin
@Composable
fun RootPermissionGuide() {
    Column {
        Text("PandaSU 需要 Root 权限才能工作")
        
        when (detectRootMode()) {
            RootMode.KERNELSU -> {
                Text("检测到 KernelSU")
                Button(onClick = {
                    // 跳转到 KernelSU 管理器
                    val intent = packageManager.getLaunchIntentForPackage("me.weishu.kernelsu")
                    startActivity(intent)
                }) {
                    Text("打开 KernelSU 授权")
                }
            }
            RootMode.MAGISK -> {
                Text("检测到 Magisk")
                Button(onClick = {
                    // 跳转到 Magisk 管理器
                    val intent = packageManager.getLaunchIntentForPackage("com.topjohnwu.magisk")
                    startActivity(intent)
                }) {
                    Text("打开 Magisk 授权")
                }
            }
            else -> {
                Text("未检测到 Root 环境")
                Button(onClick = {
                    // 显示安装引导
                }) {
                    Text("如何安装 Root")
                }
            }
        }
    }
}
```

---

**最终建议**：
1. **短期**（v1.4.59）：添加授权引导界面，优化用户体验
2. **中期**（v2.0）：实现 boot.img 修补，提供独立模式选项
3. **长期**（v3.0）：开发内核级 Root 方案，完全独立

您希望我先实现哪个阶段？
