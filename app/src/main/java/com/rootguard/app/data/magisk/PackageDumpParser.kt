package com.rootguard.app.data.magisk

/**
 * 从 dumpsys package 输出中解析应用信息
 *
 * 用于绕过 PackageManager API 的权限限制，直接从系统 dump 中获取应用列表
 */
object PackageDumpParser {

    /**
     * 解析 dumpsys package 输出
     * @param dumpsysOutput dumpsys package 命令的完整输出
     * @return 解析出的应用信息列表
     */
    fun parseDumpsysOutput(dumpsysOutput: String): List<DumpsysPackageInfo> {
        val packages = mutableListOf<DumpsysPackageInfo>()
        val lines = dumpsysOutput.lines()

        var currentPackage: DumpsysPackageInfo? = null
        var inPackageSection = false

        for (line in lines) {
            // 检测新的包开始
            // 格式: Package [com.miui.screenrecorder] (425de27):
            val packageMatch = Regex("""Package \[([^\]]+)\] \((\w+)\):""").find(line)
            if (packageMatch != null) {
                // 保存上一个包
                currentPackage?.let {
                    if (it.packageName.isNotEmpty()) {
                        packages.add(it)
                    }
                }

                // 创建新的包信息
                currentPackage = DumpsysPackageInfo(
                    packageName = packageMatch.groupValues[1],
                    appId = packageMatch.groupValues[2]
                )
                inPackageSection = true
                continue
            }

            // 解析包详细信息
            if (inPackageSection && currentPackage != null) {
                // codePath - 应用安装路径
                val codePathMatch = Regex("""codePath=([^\s]+)""").find(line)
                if (codePathMatch != null) {
                    currentPackage.codePath = codePathMatch.groupValues[1]
                }

                // versionCode - 版本号
                val versionCodeMatch = Regex("""versionCode=(\d+)""").find(line)
                if (versionCodeMatch != null) {
                    currentPackage.versionCode = versionCodeMatch.groupValues[1].toIntOrNull() ?: 0
                }

                // versionName - 版本名称
                val versionNameMatch = Regex("""versionName=([^\s]+)""").find(line)
                if (versionNameMatch != null) {
                    currentPackage.versionName = versionNameMatch.groupValues[1]
                }

                // flags - 包标志位
                val flagsMatch = Regex("""flags=\[ ([^\]]+) \]""").find(line)
                if (flagsMatch != null) {
                    currentPackage.flags = flagsMatch.groupValues[1].split(" ")
                }

                // isMiuiPreinstall - MIUI 预装应用
                val miuiMatch = Regex("""isMiuiPreinstall=(\w+)""").find(line)
                if (miuiMatch != null) {
                    currentPackage.isMiuiPreinstall = miuiMatch.groupValues[1] == "true"
                }

                // scannedAsStoppedSystemApp - 扫描为已停止的系统应用
                val stoppedSystemMatch = Regex("""scannedAsStoppedSystemApp=(\w+)""").find(line)
                if (stoppedSystemMatch != null) {
                    currentPackage.scannedAsStoppedSystemApp = stoppedSystemMatch.groupValues[1] == "true"
                }

                // installerPackageName - 安装来源
                val installerMatch = Regex("""installerPackageName=([^\s]+)""").find(line)
                if (installerMatch != null) {
                    currentPackage.installerPackageName = installerMatch.groupValues[1]
                }

                // appId 行
                val appIdMatch = Regex("""appId=(\d+)""").find(line)
                if (appIdMatch != null) {
                    currentPackage.uid = appIdMatch.groupValues[1].toIntOrNull() ?: 0
                }
            }

            // 检测包结束（遇到空行或下一个 Package 标记）
            if (inPackageSection && line.trim().isEmpty() && currentPackage != null) {
                // 保存当前包
                if (currentPackage!!.packageName.isNotEmpty()) {
                    packages.add(currentPackage!!)
                }
                currentPackage = null
                inPackageSection = false
            }
        }

        // 保存最后一个包
        currentPackage?.let {
            if (it.packageName.isNotEmpty()) {
                packages.add(it)
            }
        }

        return packages
    }
}

/**
 * 从 dumpsys package 解析出的应用信息
 */
data class DumpsysPackageInfo(
    var packageName: String = "",
    var appId: String = "",
    var codePath: String = "",
    var versionCode: Int = 0,
    var versionName: String = "",
    var flags: List<String> = emptyList(),
    var isMiuiPreinstall: Boolean = false,
    var scannedAsStoppedSystemApp: Boolean = false,
    var installerPackageName: String = "",
    var uid: Int = 0
) {
    /**
     * 判断是否为用户应用
     * 使用安装路径判断，比 FLAG_SYSTEM 标志更可靠
     */
    fun isUserApp(): Boolean {
        return codePath.startsWith("/data/app/")
    }

    /**
     * 判断是否为系统应用
     */
    fun isSystemApp(): Boolean {
        return !isUserApp() || isMiuiPreinstall
    }
}
