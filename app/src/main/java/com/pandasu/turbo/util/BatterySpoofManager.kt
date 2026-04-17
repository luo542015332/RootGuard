package com.pandasu.turbo.util

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Build
import com.pandasu.turbo.util.BackgroundManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.io.File
import java.io.InputStreamReader
import java.util.concurrent.TimeUnit

/**
 * 电池温度伪装管理器
 *
 * 原理：mount --bind 将 fake 文件叠加到 sysfs 温度节点上
 * - 绑定后写 fake 文件 → sysfs 节点读出假值（绕过 SELinux 和内核驱动锁定）
 *
 * APatch 方案：App 启动时执行绑定脚本（boot receiver）
 * Magisk 方案：同上，或刷入 Magisk 模块让 service.sh 自动绑定
 */
@Suppress("unused")
object BatterySpoofManager {

    private const val FAKE_FILE = "/data/local/tmp/batt_fake_temp"
    private const val MODULE_DIR = "/data/local/tmp/panda_module"
    private const val SCRIPT_ASSET = "battery_spoof_service.sh"

    /** 是否已执行过绑定（本次进程内） */
    @Volatile var isBound = false
        private set

    // ══════════════════════════════════════════════════════════════
    // 公开 API
    // ══════════════════════════════════════════════════════════════

    /** 检查绑定是否生效 */
    fun isBindActive(): Boolean {
        return try {
            File(FAKE_FILE).let { it.exists() && it.canWrite() }
        } catch (_: Exception) { false }
    }

    /**
     * 设置假温度（单位：摄氏度，如 25 = 25°C）
     * 同时更新 fake 文件 + cmd battery set temp，确保两种读取方式都生效
     */
    suspend fun setFakeTemp(tempCelsius: Int): Result<Unit> = withContext(Dispatchers.IO) {
        val raw = (tempCelsius * 10).coerceIn(0, 800) // 厘℃，上限 80°C
        
        // 1. 确保 mount --bind 已激活（可选，失败不影响后续）
        if (!isBound) {
            ensureBind() // 忽略失败
        }
        
        // 2. 写 fake 文件（mount --bind 模式）
        writeFakeTemp(tempCelsius)
        
        // 3. 执行 cmd battery set temp（最关键！影响 dumpsys 和 BatteryManager）
        val (code, out) = suExec("cmd battery set temp $raw")
        if (code == 0) {
            Result.success(Unit)
        } else {
            Result.failure(Exception("cmd battery set temp 失败: $out"))
        }
    }

    /** 获取当前 fake 文件的设定值（厘℃，null = 未设置） */
    fun getCurrentFakeTemp(): Int? {
        return try {
            File(FAKE_FILE).readText().trim().toIntOrNull()
        } catch (_: Exception) { null }
    }

    /** 恢复真实温度 */
    suspend fun restoreRealTemp(): Result<Unit> = withContext(Dispatchers.IO) {
        val (_, realTemp) = suExec("cat /sys/class/power_supply/battery/temp 2>/dev/null || echo 344")
        val real = realTemp.trim().toIntOrNull() ?: 344
        writeFakeTemp(real / 10) // sysfs 返回厘℃，转回摄氏度
        Result.success(Unit)
    }

    // ══════════════════════════════════════════════════════════════
    // 核心实现
    // ══════════════════════════════════════════════════════════════

    /** 确保 bind mount 已激活（若未激活则执行一次） */
    private suspend fun ensureBind(): Result<Unit> = withContext(Dispatchers.IO) {
        if (isBound && isBindActive()) return@withContext Result.success(Unit)

        // 直接用 su 执行绑定（不依赖 assets 提取）
        val fakeFile = FAKE_FILE
        val node = "/sys/class/power_supply/battery/temp"
        
        // 1. 创建 fake 文件
        val (code1, _) = suExec("mkdir -p /data/local/tmp && touch '$fakeFile' && chmod 666 '$fakeFile'")
        if (code1 != 0) {
            return@withContext Result.failure(Exception("创建 fake 文件失败"))
        }
        
        // 2. 初始化 fake 文件内容（从真实节点读取）
        val (code2, _) = suExec("cat '$node' > '$fakeFile' 2>/dev/null || echo 344 > '$fakeFile'")
        
        // 3. 执行 mount --bind
        val (code3, output3) = suExec("mount --bind '$fakeFile' '$node' 2>&1")
        if (code3 == 0) {
            isBound = true
            Result.success(Unit)
        } else {
            // mount --bind 可能失败（SELinux 或节点不存在），但不影响后续使用
            // 因为 BatteryUtil.fakeTempInternal 会 fallback 到 cmd battery set temp
            isBound = false
            Result.failure(Exception("mount --bind 失败: $output3"))
        }
    }

    /** 写假温度到 fake 文件（绑定后不需要 root！） */
    private fun writeFakeTemp(tempCelsius: Int) {
        val raw = (tempCelsius * 10).coerceIn(0, 800) // 厘℃，上限 80°C
        try {
            File(FAKE_FILE).writeText(raw.toString())
        } catch (_: Exception) {
            // 降级：走 su 写
            suExec("echo $raw > '$FAKE_FILE'")
        }
    }

    // ══════════════════════════════════════════════════════════════
    // Root 执行原语（自包含，不依赖 ShizukuHelper）
    // ══════════════════════════════════════════════════════════════

    private val TIMEOUT_MS = 15_000L

    /**
     * 同步执行 root 命令，返回 (exitCode, stdout)
     * 优先 su -c（APatch 兼容），其次 su 0
     */
    private fun suExec(cmd: String): Pair<Int, String> {
        // 先探测 su 格式
        val suArgs = detectSuArgs()
        val args = suArgs + cmd
        return try {
            val pb = ProcessBuilder(args.toList())
                .redirectErrorStream(true)
                .start()
            pb.waitFor(TIMEOUT_MS, TimeUnit.MILLISECONDS)
            val out = pb.inputStream.bufferedReader().readText()
            Pair(pb.exitValue().coerceIn(0, 255), out)
        } catch (_: Exception) {
            Pair(255, "")
        }
    }

    /** 探测 su 格式（APatch / Magisk / KernelSU 通用） */
    private fun detectSuArgs(): List<String> {
        // 优先 su -c（APatch）
        try {
            val r = Runtime.getRuntime()
            val pb = ProcessBuilder(listOf("su", "-c", "id"))
            pb.redirectErrorStream(true)
            val p = pb.start()
            if (p.waitFor(3_000, TimeUnit.MILLISECONDS) && p.exitValue() == 0) {
                return listOf("su", "-c")
            }
            p.destroy()
        } catch (_: Exception) { }

        // 其次 su 0（Magisk）
        try {
            val pb = ProcessBuilder(listOf("su", "0", "id"))
            pb.redirectErrorStream(true)
            val p = pb.start()
            if (p.waitFor(3_000, TimeUnit.MILLISECONDS) && p.exitValue() == 0) {
                return listOf("su", "0")
            }
            p.destroy()
        } catch (_: Exception) { }

        return listOf("su", "-c")
    }

    // ══════════════════════════════════════════════════════════════
    // Boot Receiver
    // ══════════════════════════════════════════════════════════════

    private var appContext: Context? = null

    /** 在 Application.onCreate 中调用，注册开机广播 */
    fun registerBootReceiver(context: Context) {
        appContext = context.applicationContext
        val prefs = context.getSharedPreferences("battery_spoof", Context.MODE_PRIVATE)

        val receiver = object : BroadcastReceiver() {
            override fun onReceive(ctx: Context, intent: Intent) {
                val action = intent.action
                if (action != Intent.ACTION_BOOT_COMPLETED &&
                    action != "android.intent.action.QUICKBOOT_POWERON") return

                android.os.Handler(android.os.Looper.getMainLooper()).postDelayed({
                    runBlocking(Dispatchers.IO) {
                        // 电池温度伪装
                        if (prefs.getBoolean("enabled", false)) {
                            ensureBind()
                            val savedTemp = prefs.getInt("saved_temp", 250)
                            setFakeTemp(savedTemp)
                        }

                        // 系统优化设置持久化
                        applySystemTweaksOnBoot(ctx)
                    }
                }, 10_000) // 延迟 10s 等系统服务就绪
            }
        }

        val filter = IntentFilter().apply {
            addAction(Intent.ACTION_BOOT_COMPLETED)
            addAction("android.intent.action.QUICKBOOT_POWERON")
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            context.registerReceiver(receiver, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            context.registerReceiver(receiver, filter)
        }
    }

    /** 保存设定，下次开机自动恢复 */
    fun saveSpoofTemp(context: Context, tempCelsius: Int) {
        context.getSharedPreferences("battery_spoof", Context.MODE_PRIVATE)
            .edit()
            .putInt("saved_temp", tempCelsius)
            .putBoolean("enabled", true)
            .apply()
    }

    /** 禁用伪装 */
    fun disableSpoof(context: Context) {
        context.getSharedPreferences("battery_spoof", Context.MODE_PRIVATE)
            .edit()
            .putBoolean("enabled", false)
            .apply()
    }

    /**
     * 开机时应用保存的系统优化设置
     */
    private suspend fun applySystemTweaksOnBoot(ctx: Context) {
        withContext(Dispatchers.IO) {
            // 动画缩放
            val windowScale = TweakPrefs.getWindowScale(ctx)
            if (windowScale < 1f) {
                SystemTweaksHelper.setAnimationScales(windowScale)
            }

            // 刷新率
            val refreshRate = TweakPrefs.getRefreshRate(ctx)
            if (refreshRate > 0) {
                SystemTweaksHelper.setRefreshRate(ctx, refreshRate)
            }

            // 广告屏蔽
            if (TweakPrefs.isAdsDisabled(ctx)) {
                SystemTweaksHelper.disableSystemAds()
            }
            if (TweakPrefs.isLockScreenAdsDisabled(ctx)) {
                SystemTweaksHelper.disableLockScreenAds()
            }

            // 严格模式（开机自动恢复）
            if (TweakPrefs.isStrictModeEnabled(ctx)) {
                BackgroundManager.enableStrictMode(ctx)
            }
        }
    }
}
