# KernelSU 安装功能分析

## 安装页面功能分析

### 当前状态
1. **UI界面完成**：InstallScreen.kt 界面已实现
2. **ViewModel框架完成**：InstallViewModel.kt 框架已存在
3. **功能缺失**：安装逻辑未实现

### 三个安装选项
1. **选择一个文件**：选择 init_boot 或 boot 分区镜像
2. **直接安装（推荐）**：自动修补并安装
3. **安装到未使用的槽位（OTA后）**：适用于 A/B 分区设备

## KernelSU 安装原理

### 安装流程
1. **获取引导镜像**：init_boot.img 或 boot.img
2. **修补镜像**：使用 KernelSU 修补工具
3. **刷入镜像**：通过 fastboot 或 dd 命令
4. **重启设备**：应用更改

### 常用命令
```bash
# 自动修补并安装（KernelSU Manager）
ksud -o install

# 手动安装
fastboot flash init_boot patched_init_boot.img
fastboot flash boot patched_boot.img
```

## 需要实现的功能

### 1. 文件选择功能
- 使用 Android 文件选择器
- 支持选择 .img 文件
- 验证文件类型（init_boot.img, boot.img）

### 2. 自动安装功能
- 检测设备分区类型（A/B 分区）
- 下载 KernelSU 内核模块
- 自动修补镜像
- 刷入设备

### 3. 安装到未使用槽位
- 检测当前活动槽位
- 安装到非活动槽位
- OTA 后可以切换槽位

## 实现方案

### 步骤1：扩展 InstallViewModel
```kotlin
class InstallViewModel : ViewModel() {
    // 添加安装状态
    private val _installStatus = MutableStateFlow<InstallStatus>(InstallStatus.Idle)
    val installStatus: StateFlow<InstallStatus> = _installStatus.asStateFlow()
    
    // 添加文件选择逻辑
    suspend fun selectFile(context: Context, uri: Uri) {
        // 复制文件到临时目录
        // 验证文件类型
        // 更新 UI 状态
    }
    
    // 添加安装逻辑
    suspend fun installKernelSU(context: Context, filePath: String?) {
        // 根据选择的安装方法执行不同逻辑
        // 显示安装进度
        // 处理安装结果
    }
}
```

### 步骤2：添加文件选择器
```kotlin
// 在 InstallScreen 中添加
val filePickerLauncher = rememberLauncherForActivityResult(
    contract = ActivityResultContracts.GetContent()
) { uri: Uri? ->
    uri?.let {
        viewModelScope.launch {
            viewModel.selectFile(context, it)
        }
    }
}

// 触发文件选择
LaunchedEffect(uiState.installMethod) {
    if (uiState.installMethod == InstallMethod.SELECT_FILE && uiState.selectedFile == null) {
        // 自动打开文件选择器
        filePickerLauncher.launch("*/*")
    }
}
```

### 步骤3：实现安装逻辑
```kotlin
suspend fun installKernelSU(context: Context, filePath: String?): Boolean {
    return withContext(Dispatchers.IO) {
        try {
            // 1. 准备安装环境
            _installStatus.value = InstallStatus.Preparing
            
            // 2. 根据安装方法执行不同操作
            when (uiState.value.installMethod) {
                InstallMethod.SELECT_FILE -> {
                    // 使用用户选择的文件
                    if (filePath == null) return@withContext false
                    installFromFile(filePath)
                }
                InstallMethod.DIRECT -> {
                    // 自动下载并安装
                    installDirectly()
                }
                InstallMethod.OTHER_SLOT -> {
                    // 安装到未使用槽位
                    installToOtherSlot()
                }
            }
            
            true
        } catch (e: Exception) {
            _installStatus.value = InstallStatus.Error(e.message ?: "安装失败")
            false
        }
    }
}
```

## 参考实现

### KernelSU Manager 源码分析
- 安装页面：`com.github.kernelsu.ksu.install.InstallActivity`
- 安装逻辑：`com.github.kernelsu.ksu.install.InstallManager`
- 文件处理：`com.github.kernelsu.ksu.utils.FileUtils`

### 关键代码片段
```java
// KernelSU Manager 中的安装方法
public static void install(Context context, Uri uri) {
    // 1. 复制文件
    // 2. 验证签名
    // 3. 解压文件
    // 4. 执行安装脚本
    // 5. 清理临时文件
}
```

## 安全注意事项
1. **文件验证**：验证镜像文件签名和完整性
2. **权限检查**：确保有 root 权限
3. **错误处理**：提供详细的错误信息
4. **用户确认**：重要操作需要用户确认

## 优先级
1. ✅ 修复 UI 响应问题（点击无反应）
2. ✅ 实现文件选择功能
3. ⚠️ 实现基本安装逻辑
4. ⚠️ 实现自动安装功能
5. ⚠️ 实现槽位安装功能