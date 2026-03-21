package com.rootguard.app.ui.dialog

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog

/**
 * 重启选项对话框
 */
@Composable
fun RestartDialog(
    onDismiss: () -> Unit,
    onReboot: () -> Unit,
    onRebootRecovery: () -> Unit,
    onRebootBootloader: () -> Unit,
    onShutdown: () -> Unit
) {
    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            elevation = CardDefaults.cardElevation(defaultElevation = 8.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(20.dp)
            ) {
                // 标题
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        imageVector = Icons.Default.RestartAlt,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary
                    )
                    Spacer(modifier = Modifier.width(12.dp))
                    Text(
                        text = "重启选项",
                        style = MaterialTheme.typography.titleLarge
                    )
                }
                
                Spacer(modifier = Modifier.height(20.dp))
                
                // 重启选项
                RestartOptionItem(
                    icon = Icons.Default.RestartAlt,
                    title = "重启",
                    subtitle = "正常重启设备",
                    onClick = {
                        onReboot()
                        onDismiss()
                    }
                )
                
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                
                RestartOptionItem(
                    icon = Icons.Default.Settings,
                    title = "重启到 Recovery",
                    subtitle = "进入 Recovery 模式",
                    onClick = {
                        onRebootRecovery()
                        onDismiss()
                    }
                )
                
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                
                RestartOptionItem(
                    icon = Icons.Default.DeveloperMode,
                    title = "重启到 Bootloader",
                    subtitle = "进入 Bootloader 模式",
                    onClick = {
                        onRebootBootloader()
                        onDismiss()
                    }
                )
                
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                
                RestartOptionItem(
                    icon = Icons.Default.PowerSettingsNew,
                    title = "关机",
                    subtitle = "关闭设备",
                    onClick = {
                        onShutdown()
                        onDismiss()
                    },
                    isDestructive = true
                )
                
                Spacer(modifier = Modifier.height(16.dp))
                
                // 取消按钮
                OutlinedButton(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text("取消")
                }
            }
        }
    }
}

@Composable
private fun RestartOptionItem(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    subtitle: String,
    onClick: () -> Unit,
    isDestructive: Boolean = false
) {
    Surface(
        onClick = onClick,
        color = MaterialTheme.colorScheme.surface
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = if (isDestructive) MaterialTheme.colorScheme.error 
                       else MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(28.dp)
            )
            Spacer(modifier = Modifier.width(16.dp))
            Column {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium,
                    color = if (isDestructive) MaterialTheme.colorScheme.error 
                            else MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = subtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                )
            }
        }
    }
}

/**
 * 确认重启对话框
 */
@Composable
fun ConfirmRestartDialog(
    title: String,
    message: String,
    onConfirm: () -> Unit,
    onDismiss: () -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        icon = {
            Icon(
                imageVector = Icons.Default.RestartAlt,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary
            )
        },
        title = { Text(title) },
        text = { Text(message) },
        confirmButton = {
            Button(onClick = {
                onConfirm()
                onDismiss()
            }) {
                Text("确认")
            }
        },
        dismissButton = {
            OutlinedButton(onClick = onDismiss) {
                Text("取消")
            }
        }
    )
}

/**
 * 关机确认对话框
 */
@Composable
fun ConfirmShutdownDialog(
    onConfirm: () -> Unit,
    onDismiss: () -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        icon = {
            Icon(
                imageVector = Icons.Default.PowerSettingsNew,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.error
            )
        },
        title = { Text("确认关机") },
        text = { Text("确定要关闭设备吗？") },
        confirmButton = {
            Button(
                onClick = {
                    onConfirm()
                    onDismiss()
                },
                colors = ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.error
                )
            ) {
                Text("关机")
            }
        },
        dismissButton = {
            OutlinedButton(onClick = onDismiss) {
                Text("取消")
            }
        }
    )
}