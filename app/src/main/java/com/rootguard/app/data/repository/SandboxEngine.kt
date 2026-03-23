/*
package com.rootguard.app.data.repository

import com.rootguard.app.data.local.IsolationDataStore
import com.rootguard.app.data.model.*
import com.rootguard.app.utils.Logger
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Sandbox 策略引擎
 * 负责 Root 命令和路径访问的过滤决策
 */
@Singleton
class SandboxEngine @Inject constructor(
    private val isolationDataStore: IsolationDataStore
) {

    /**
     * 检查命令是否允许执行
     * @param packageName 应用包名
     * @param command Root 命令
     * @return 是否允许执行
     */
    suspend fun checkCommand(packageName: String, command: String): CheckResult {
        // 获取应用的隔离配置
        val config = isolationDataStore.getConfigForAppSync(packageName)
        val sandboxRule = config?.sandboxRule

        if (sandboxRule == null || sandboxRule.level == SandboxLevel.DISABLED) {
            Logger.d("Sandbox disabled for $packageName, allowing command")
            logEvent(packageName, IsolationEventType.COMMAND_ALLOWED, command, IsolationAction.ALLOWED)
            return CheckResult(true, "Sandbox 未启用或未配置")
        }

        // 根据隔离级别进行检查
        return when (sandboxRule.level) {
            SandboxLevel.STRICT -> checkStrictMode(sandboxRule, packageName, command)
            SandboxLevel.MODERATE -> checkModerateMode(sandboxRule, packageName, command)
            SandboxLevel.PERMISSIVE -> checkPermissiveMode(sandboxRule, packageName, command)
            SandboxLevel.DISABLED -> CheckResult(true, "已禁用")
        }
    }

    /**
     * 严格模式：仅允许白名单命令
     */
    private suspend fun checkStrictMode(rule: SandboxRule, packageName: String, command: String): CheckResult {
        // 检查是否在白名单中
        val isWhitelisted = rule.commandWhitelist.any { pattern ->
            matchesPattern(command, pattern)
        }

        if (isWhitelisted) {
            Logger.d("Command whitelisted for $packageName: $command")
            logEvent(packageName, IsolationEventType.COMMAND_ALLOWED, command, IsolationAction.ALLOWED)
            return CheckResult(true, "命令在白名单中")
        }

        Logger.d("Command blocked (strict mode) for $packageName: $command")
        logEvent(packageName, IsolationEventType.COMMAND_BLOCKED, command, IsolationAction.BLOCKED)
        return CheckResult(false, "严格模式：命令不在白名单中")
    }

    /**
     * 适中模式：禁止黑名单命令
     */
    private suspend fun checkModerateMode(rule: SandboxRule, packageName: String, command: String): CheckResult {
        // 检查是否在黑名单中
        val isBlacklisted = rule.commandBlacklist.any { pattern ->
            matchesPattern(command, pattern)
        }

        if (isBlacklisted) {
            Logger.d("Command blacklisted for $packageName: $command")
            logEvent(packageName, IsolationEventType.COMMAND_BLOCKED, command, IsolationAction.BLOCKED)
            return CheckResult(false, "适中模式：命令在黑名单中")
        }

        Logger.d("Command allowed (moderate mode) for $packageName: $command")
        logEvent(packageName, IsolationEventType.COMMAND_ALLOWED, command, IsolationAction.ALLOWED)
        return CheckResult(true, "命令未被禁止")
    }

    /**
     * 宽松模式：仅拦截危险命令
     */
    private suspend fun checkPermissiveMode(rule: SandboxRule, packageName: String, command: String): CheckResult {
        // 危险命令列表
        val dangerousCommands = listOf(
            "rm -rf /",
            "rm -rf /system",
            "format",
            "mkfs",
            "dd if=/dev/zero",
            "dd if=/dev/random",
            "chmod 777 /",
            "chown root /"
        )

        val isDangerous = dangerousCommands.any { dangerous ->
            command.contains(dangerous, ignoreCase = true)
        }

        // 检查黑名单
        val isBlacklisted = rule.commandBlacklist.any { pattern ->
            matchesPattern(command, pattern)
        }

        if (isDangerous || isBlacklisted) {
            Logger.d("Dangerous command blocked for $packageName: $command")
            logEvent(packageName, IsolationEventType.COMMAND_BLOCKED, command, IsolationAction.BLOCKED)
            return CheckResult(false, "宽松模式：拦截危险命令")
        }

        Logger.d("Command allowed (permissive mode) for $packageName: $command")
        logEvent(packageName, IsolationEventType.COMMAND_ALLOWED, command, IsolationAction.ALLOWED)
        return CheckResult(true, "命令安全")
    }

    /**
     * 检查路径访问是否允许
     * @param packageName 应用包名
     * @param path 文件路径
     * @return 是否允许访问
     */
    suspend fun checkPathAccess(packageName: String, path: String): CheckResult {
        // 获取应用的隔离配置
        val config = isolationDataStore.getConfigForAppSync(packageName)
        val sandboxRule = config?.sandboxRule

        if (sandboxRule == null || sandboxRule.level == SandboxLevel.DISABLED) {
            Logger.d("Sandbox disabled for $packageName, allowing path access")
            logPathEvent(packageName, IsolationEventType.PATH_ALLOWED, path, IsolationAction.ALLOWED)
            return CheckResult(true, "Sandbox 未启用或未配置")
        }

        // 根据隔离级别进行检查
        return when (sandboxRule.level) {
            SandboxLevel.STRICT -> checkPathStrictMode(sandboxRule, packageName, path)
            SandboxLevel.MODERATE -> checkPathModerateMode(sandboxRule, packageName, path)
            SandboxLevel.PERMISSIVE -> checkPathPermissiveMode(sandboxRule, packageName, path)
            SandboxLevel.DISABLED -> CheckResult(true, "已禁用")
        }
    }

    /**
     * 严格模式路径检查
     */
    private suspend fun checkPathStrictMode(rule: SandboxRule, packageName: String, path: String): CheckResult {
        // 检查是否在白名单中
        val isWhitelisted = rule.pathWhitelist.any { allowedPath ->
            path.startsWith(allowedPath)
        }

        if (isWhitelisted) {
            Logger.d("Path whitelisted for $packageName: $path")
            logPathEvent(packageName, IsolationEventType.PATH_ALLOWED, path, IsolationAction.ALLOWED)
            return CheckResult(true, "路径在白名单中")
        }

        Logger.d("Path blocked (strict mode) for $packageName: $path")
        logPathEvent(packageName, IsolationEventType.PATH_BLOCKED, path, IsolationAction.BLOCKED)
        return CheckResult(false, "严格模式：路径不在白名单中")
    }

    /**
     * 适中模式路径检查
     */
    private suspend fun checkPathModerateMode(rule: SandboxRule, packageName: String, path: String): CheckResult {
        // 检查是否在黑名单中
        val isBlacklisted = rule.pathBlacklist.any { blockedPath ->
            path.startsWith(blockedPath)
        }

        if (isBlacklisted) {
            Logger.d("Path blacklisted for $packageName: $path")
            logPathEvent(packageName, IsolationEventType.PATH_BLOCKED, path, IsolationAction.BLOCKED)
            return CheckResult(false, "适中模式：路径在黑名单中")
        }

        Logger.d("Path allowed (moderate mode) for $packageName: $path")
        logPathEvent(packageName, IsolationEventType.PATH_ALLOWED, path, IsolationAction.ALLOWED)
        return CheckResult(true, "路径未被禁止")
    }

    /**
     * 宽松模式路径检查
     */
    private suspend fun checkPathPermissiveMode(rule: SandboxRule, packageName: String, path: String): CheckResult {
        // 危险路径列表
        val dangerousPaths = listOf(
            "/system/bin",
            "/system/xbin",
            "/system/app",
            "/system/priv-app",
            "/data/adb/magisk"
        )

        val isDangerous = dangerousPaths.any { dangerous ->
            path.startsWith(dangerous)
        }

        if (isDangerous) {
            Logger.d("Dangerous path blocked for $packageName: $path")
            logPathEvent(packageName, IsolationEventType.PATH_BLOCKED, path, IsolationAction.BLOCKED)
            return CheckResult(false, "宽松模式：拦截危险路径")
        }

        Logger.d("Path allowed (permissive mode) for $packageName: $path")
        logPathEvent(packageName, IsolationEventType.PATH_ALLOWED, path, IsolationAction.ALLOWED)
        return CheckResult(true, "路径安全")
    }

    /**
     * 命令匹配
     * 支持简单通配符 * 和 ?
     */
    private fun matchesPattern(command: String, pattern: String): Boolean {
        val regex = pattern
            .replace(".", "\\.")
            .replace("*", ".*")
            .replace("?", ".")
            .toRegex(RegexOption.IGNORE_CASE)

        return regex.containsMatchIn(command)
    }

    /**
     * 记录命令事件
     */
    private suspend fun logEvent(
        packageName: String,
        type: IsolationEventType,
        command: String,
        action: IsolationAction
    ) {
        val event = IsolationEvent(
            packageName = packageName,
            type = type,
            command = command,
            timestamp = System.currentTimeMillis(),
            action = action
        )
        isolationDataStore.logIsolationEvent(event)
    }

    /**
     * 记录路径事件
     */
    private suspend fun logPathEvent(
        packageName: String,
        type: IsolationEventType,
        path: String,
        action: IsolationAction
    ) {
        val event = IsolationEvent(
            packageName = packageName,
            type = type,
            path = path,
            timestamp = System.currentTimeMillis(),
            action = action
        )
        isolationDataStore.logIsolationEvent(event)
    }

    /**
     * 获取隔离统计
     */
    fun getSandboxStats(): Flow<IsolationDataStore.SandboxStats> {
        return isolationDataStore.sandboxStats
    }

    /**
     * 获取隔离事件
     */
    fun getIsolationEvents(): Flow<List<IsolationEvent>> {
        return isolationDataStore.isolationEvents
    }

    /**
     * 检查结果
     */
    data class CheckResult(
        val allowed: Boolean,
        val reason: String
    )
}
*/

