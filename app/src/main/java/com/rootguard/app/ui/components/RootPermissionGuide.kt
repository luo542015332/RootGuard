package com.rootguard.app.ui.components

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.rootguard.app.ui.theme.RootGuardTheme
import com.rootguard.app.util.RootEnvironmentDetector
import com.rootguard.app.util.RootEnvironmentDetector.AuthorizationStatus
import com.rootguard.app.util.RootEnvironmentDetector.RootMode
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * Root 权限引导界面
 * 显示授权状态并引导用户完成授权
 */
@Composable
fun RootPermissionGuide(
    onAuthorized: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val scrollState = rememberScrollState()
    
    // 授权状态
    var status by remember { mutableStateOf<AuthorizationStatus?>(null) }
    var isChecking by remember { mutableStateOf(true) }
    
    // 定期检查授权状态
    LaunchedEffect(Unit) {
        while (true) {
            status = RootEnvironmentDetector.getAuthorizationStatus(context)
            isChecking = false
            
            // 如果已授权，延迟 1 秒后回调
            if (status?.hasPermission == true) {
                delay(1000)
                onAuthorized()
                break
            }
            
            // 每 3 秒检查一次
            delay(3000)
        }
    }
    
    RootGuardTheme {
        Box(
            modifier = modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            status?.let { authStatus ->
                Card(
                    modifier = Modifier
                        .fillMaxWidth(0.9f)
                        .verticalScroll(scrollState),
                    elevation = CardDefaults.cardElevation(defaultElevation = 8.dp)
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(24.dp),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        // 图标
                        Icon(
                            imageVector = when {
                                authStatus.hasPermission -> Icons.Default.CheckCircle
                                authStatus.rootMode == RootMode.UNKNOWN -> Icons.Default.Error
                                else -> Icons.Default.Lock
                            },
                            contentDescription = null,
                            modifier = Modifier.size(72.dp),
                            tint = when {
                                authStatus.hasPermission -> MaterialTheme.colorScheme.primary
                                authStatus.rootMode == RootMode.UNKNOWN -> MaterialTheme.colorScheme.error
                                else -> MaterialTheme.colorScheme.secondary
                            }
                        )
                        
                        // 标题
                        Text(
                            text = when {
                                authStatus.hasPermission -> "权限已授权"
                                authStatus.rootMode == RootMode.UNKNOWN -> "未检测到 Root 环境"
                                else -> "需要 Root 权限"
                            },
                            style = MaterialTheme.typography.headlineMedium,
                            textAlign = TextAlign.Center
                        )
                        
                        // 状态信息
                        Text(
                            text = authStatus.message,
                            style = MaterialTheme.typography.bodyLarge,
                            textAlign = TextAlign.Center,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        
                        // Root 环境信息
                        if (authStatus.rootMode != RootMode.UNKNOWN) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.Center,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Info,
                                    contentDescription = null,
                                    modifier = Modifier.size(20.dp),
                                    tint = MaterialTheme.colorScheme.primary
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = "Root 方案: ${RootEnvironmentDetector.getRootManagerName(authStatus.rootMode)}",
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }
                        }
                        
                        Divider(modifier = Modifier.fillMaxWidth())
                        
                        // 操作按钮
                        when {
                            authStatus.hasPermission -> {
                                // 已授权
                                Row(
                                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(20.dp),
                                        strokeWidth = 2.dp
                                    )
                                    Text("正在启动 PandaSU...")
                                }
                            }
                            authStatus.canOpenManager -> {
                                // 可以打开管理器
                                Button(
                                    onClick = {
                                        RootEnvironmentDetector.openRootManager(
                                            context,
                                            authStatus.rootMode
                                        )
                                    },
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(12.dp)
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.OpenInNew,
                                        contentDescription = null,
                                        modifier = Modifier.size(20.dp)
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text("打开 ${RootEnvironmentDetector.getRootManagerName(authStatus.rootMode)} 管理器")
                                }
                                
                                // 手动刷新按钮
                                OutlinedButton(
                                    onClick = {
                                        scope.launch {
                                            isChecking = true
                                            status = RootEnvironmentDetector.getAuthorizationStatus(context)
                                            isChecking = false
                                        }
                                    },
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(12.dp)
                                ) {
                                    if (isChecking) {
                                        CircularProgressIndicator(
                                            modifier = Modifier.size(20.dp),
                                            strokeWidth = 2.dp
                                        )
                                        Spacer(modifier = Modifier.width(8.dp))
                                    }
                                    Text(if (isChecking) "正在检查..." else "我已经授权，刷新状态")
                                }
                            }
                            else -> {
                                // 未检测到 Root 环境
                                OutlinedButton(
                                    onClick = {
                                        // TODO: 打开安装引导页面
                                    },
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(12.dp)
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.Help,
                                        contentDescription = null,
                                        modifier = Modifier.size(20.dp)
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text("如何安装 Root 环境")
                                }
                            }
                        }
                        
                        // 帮助信息
                        if (!authStatus.hasPermission && authStatus.canOpenManager) {
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                colors = CardDefaults.cardColors(
                                    containerColor = MaterialTheme.colorScheme.primaryContainer
                                )
                            ) {
                                Column(
                                    modifier = Modifier.padding(16.dp),
                                    verticalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    Row(
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Icon(
                                            imageVector = Icons.Default.Help,
                                            contentDescription = null,
                                            tint = MaterialTheme.colorScheme.onPrimaryContainer
                                        )
                                        Spacer(modifier = Modifier.width(8.dp))
                                        Text(
                                            text = "授权步骤",
                                            style = MaterialTheme.typography.titleMedium,
                                            color = MaterialTheme.colorScheme.onPrimaryContainer
                                        )
                                    }
                                    
                                    val steps = listOf(
                                        "1. 点击上方按钮打开 Root 管理器",
                                        "2. 在超级用户列表中找到 PandaSU",
                                        "3. 点击开关授予 Root 权限",
                                        "4. 返回此页面，点击刷新按钮"
                                    )
                                    
                                    steps.forEach { step ->
                                        Text(
                                            text = step,
                                            style = MaterialTheme.typography.bodyMedium,
                                            color = MaterialTheme.colorScheme.onPrimaryContainer
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            } ?: run {
                // 加载中
                CircularProgressIndicator()
            }
        }
    }
}
