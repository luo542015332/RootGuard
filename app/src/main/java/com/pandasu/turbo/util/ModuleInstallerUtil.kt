package com.pandasu.turbo.util

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.Toast
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream
import java.util.zip.ZipInputStream
import java.util.concurrent.TimeUnit

/**
 * PandaTurbo Magisk Module Installer
 *
 * Installs the bundled battery_spoof module (mount --bind overlay)
 * to enable battery temperature spoofing on HyperOS / MIUI / APatch.
 *
 * User flow:
 *   1. App detects module is not installed → shows "Install Module" button
 *   2. User taps → ModuleInstallerUtil.install() → flash via Magisk app
 *   3. User reboots → module activates → mount --bind runs at boot
 *   4. Battery spoofing works without root sysfs write
 */
object ModuleInstallerUtil {

    // ══════════════════════════════════════════════════════════════
    // Root 执行原语（自包含）
    // ══════════════════════════════════════════════════════════════

    private val SU_TIMEOUT = 20_000L

    /** 同步执行 root 命令，返回 (exitCode, stdout) */
    private fun suExec(cmd: String): Pair<Int, String> {
        val suArgs = detectSuArgs()
        return try {
            val pb = ProcessBuilder(suArgs + cmd)
                .redirectErrorStream(true)
                .start()
            pb.waitFor(SU_TIMEOUT, TimeUnit.MILLISECONDS)
            val out = pb.inputStream.bufferedReader().readText()
            Pair(pb.exitValue().coerceIn(0, 255), out)
        } catch (_: Exception) {
            Pair(255, "")
        }
    }

    private fun detectSuArgs(): List<String> {
        try {
            val pb = ProcessBuilder(listOf("su", "-c", "id"))
            pb.redirectErrorStream(true)
            val p = pb.start()
            if (p.waitFor(3_000, TimeUnit.MILLISECONDS) && p.exitValue() == 0) {
                return listOf("su", "-c")
            }
            p.destroy()
        } catch (_: Exception) { }
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

    private const val MODULE_ZIP_ASSET = "battery_turbo_module.zip"
    private const val MODULE_ID = "battery_turbo"
    private const val MODULE_DIR = "/data/adb/modules/$MODULE_ID"

    /**
     * Check if the module is currently installed and active.
     */
    fun isModuleInstalled(): Boolean {
        return File(MODULE_DIR).exists() && File("$MODULE_DIR/module.prop").exists()
    }

    /**
     * Install the module: extract zip to /data/adb/modules/
     * Requires root (su) to write to /data/adb/
     *
     * After install, user must reboot for the module to activate.
     */
    suspend fun install(context: Context, onProgress: (String) -> Unit): Result<Unit> =
        withContext(Dispatchers.IO) {
            try {
                onProgress("Reading module from APK...")
                val zipFile = File(context.cacheDir, "battery_turbo_module.zip")
                context.assets.open(MODULE_ZIP_ASSET).use { input ->
                    FileOutputStream(zipFile).use { output ->
                        input.copyTo(output)
                    }
                }
                onProgress("Module extracted (${zipFile.length()} bytes)")

                // Try flashing via Magisk app intent first (user-friendly)
                // Always install manually via root (KernelSU + Magisk both supported)
                // Direct copy to /data/adb/modules/ is the most reliable method
                onProgress("Installing via root...")
                val result = installManually(zipFile)
                if (result.isSuccess) {
                    onProgress("✓ Module installed! Reboot to activate.")
                } else {
                    onProgress("✗ Installation failed: ${result.exceptionOrNull()?.message}")
                }
                result
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    /**
     * Try to open the module zip with Magisk Manager / KernelSU Manager app.
     * On failure, fall back to manual root installation immediately.
     */
    private fun installManually(zipFile: File): Result<Unit> {
        val stagingDir = File(zipFile.parentFile, "battery_turbo_staging")

        // Step 1: App-side extraction (no root needed)
        try {
            stagingDir.deleteRecursively()
            ZipInputStream(zipFile.inputStream()).use { zis ->
                generateSequence { zis.nextEntry }.forEach { entry ->
                    val outFile = File(stagingDir, entry.name)
                    if (entry.isDirectory) {
                        outFile.mkdirs()
                    } else {
                        outFile.parentFile?.mkdirs()
                        FileOutputStream(outFile).use { fos ->
                            zis.copyTo(fos)
                        }
                    }
                    zis.closeEntry()
                }
            }
        } catch (e: Exception) {
            return Result.failure(Exception("ZIP解压失败: ${e.message}"))
        }

        // Step 2: Write install script to staging dir, then execute it
        // Using script file avoids Android su -c variable assignment loss
        val scriptFile = File(stagingDir, "_install.sh")
        try {
            // Build script with Unix LF (no CRLF)
            val scriptContent = buildString {
                // Use $0 to reference script's own location (avoids variable loss)
                append("#!/system/bin/sh\n")
                append("SCRIPT_DIR=\"${stagingDir.absolutePath.replace("\\", "\\\\")}\"\n")
                append("MODDIR=\"$MODULE_DIR\"\n")
                append("rm -rf \"\$MODDIR\"\n")
                append("mkdir -p \"\$MODDIR\"\n")
                append("for f in \"\$SCRIPT_DIR\"/*; do\n")
                append("  case \"\$f\" in\n")
                append("    *_install.sh) continue ;;\n")
                append("    *.sh)\n")
                append("      cp -a \"\$f\" \"\$MODDIR/\"\n")
                append("      chmod 755 \"\$MODDIR/\$(basename \"\$f\")\"\n")
                append("      ;;\n")
                append("    *) cp -a \"\$f\" \"\$MODDIR/\" ;;\n")
                append("  esac\n")
                append("done\n")
                append("echo 'INSTALL_OK'\n")
            }
            FileOutputStream(scriptFile).use { fos ->
                fos.write(scriptContent.toByteArray(Charsets.UTF_8))
            }
        } catch (e: Exception) {
            return Result.failure(Exception("安装脚本写入失败: ${e.message}"))
        }

        // Step 3: Execute script via su (passes script path as argument, no variable needed)
        val (code, output) = suExec("sh \"${scriptFile.absolutePath}\"")

        // Cleanup staging (keep module installed)
        stagingDir.deleteRecursively()

        return if (code == 0 && output.contains("INSTALL_OK")) {
            Result.success(Unit)
        } else {
            Result.failure(Exception("模块安装失败: exit=$code output=$output"))
        }
    }

    /**
     * Open the Magisk Manager app directly for manual installation.
     * Shows the user how to install the module zip manually.
     */
    fun openMagiskApp(context: Context) {
        try {
            val intent = context.packageManager.getLaunchIntentForPackage("com.topjohnwu.magisk")
                ?: Intent(Intent.ACTION_VIEW, Uri.parse("https://github.com/topjohnwu/Magisk"))
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(intent)
            Toast.makeText(
                context,
                "请在 Magisk 中刷入 battery_turbo_module.zip",
                Toast.LENGTH_LONG
            ).show()
        } catch (e: Exception) {
            Toast.makeText(
                context,
                "请手动在 Magisk 中刷入 battery_turbo_module.zip",
                Toast.LENGTH_LONG
            ).show()
        }
    }

    /**
     * Uninstall the module (remove from /data/adb/modules/)
     */
    suspend fun uninstall(onProgress: (String) -> Unit): Result<Unit> =
        withContext(Dispatchers.IO) {
            val (code, _) = suExec("rm -rf $MODULE_DIR")
            if (code == 0) {
                onProgress("✓ Module uninstalled. Reboot to apply.")
                Result.success(Unit)
            } else {
                Result.failure(Exception("Uninstall failed"))
            }
        }
}
