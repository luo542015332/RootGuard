package com.pandasu.turbo.ui.toolkit

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.graphics.Color
import android.os.Build
import android.os.Bundle
import android.view.Gravity
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import com.pandasu.turbo.util.ShizukuHelper
import com.pandasu.turbo.util.SystemInfoUtil
import kotlinx.coroutines.*
import androidx.core.content.FileProvider
import java.io.File
import java.text.SimpleDateFormat
import java.util.*

class DevToolsActivity : AppCompatActivity() {

    private lateinit var etCommand: EditText

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "开发工具"
            setDisplayHomeAsUpEnabled(true)
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }
        setContentView(ScrollView(this).apply { addView(root) })

        buildUI(root)
    }

    private fun buildUI(root: LinearLayout) {
        // Shell 命令执行器
        section(root, "Shell 命令执行器") {
            it.addView(TextView(this).apply {
                text = "在手机上执行 shell 命令（非 adb 命令）"
                textSize = 12f
                setTextColor(0xFF757575.toInt())
                setPadding(0, 0, 0, dp(8))
            })
            val cmdLayout = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
            etCommand = EditText(this).apply {
                hint = "输入命令，如：getprop ro.build.version.sdk"
                textSize = 13f
                layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
            }
            val btnExec = Button(this).apply {
                text = "执行"
                setOnClickListener { execCommand() }
            }
            cmdLayout.addView(etCommand)
            cmdLayout.addView(btnExec)
            it.addView(cmdLayout)

            // 快捷命令
            it.addView(TextView(this).apply {
                text = "快捷命令"
                textSize = 13f
                setTextColor(0xFF757575.toInt())
                setPadding(0, dp(8), 0, dp(4))
            })
            listOf(
                "SDK 版本" to "getprop ro.build.version.sdk",
                "Android 版本" to "getprop ro.build.version.release",
                "设备型号" to "getprop ro.product.model",
                "CPU 信息" to "cat /proc/cpuinfo",
                "内存信息" to "dumpsys meminfo",
                "电池信息" to "dumpsys battery",
                "所有进程" to "ps -A",
                "包列表" to "pm list packages -3"
            ).chunked(2).forEach { row ->
                val rowLayout = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
                row.forEach { (label, cmd) ->
                    val btn = Button(this).apply {
                        text = label
                        textSize = 12f
                        layoutParams = LinearLayout.LayoutParams(0, dp(40), 1f).apply {
                            if (row.size == 2) rightMargin = dp(4) else marginEnd = dp(4)
                        }
                        setOnClickListener {
                            etCommand.setText(cmd)
                            execCommand(cmd)
                        }
                    }
                    rowLayout.addView(btn)
                }
                if (row.size == 1) {
                    rowLayout.addView(View(this).apply {
                        layoutParams = LinearLayout.LayoutParams(0, 1, 1f)
                    })
                }
                it.addView(rowLayout)
            }
        }

        // 日志抓取
        section(root, "日志抓取") {
            actionBtn(it, "最近日志 (1000 行)") {
                captureLogcat(1000)
            }
            actionBtn(it, "崩溃日志 (Error 级别)") {
                captureLogcat(200, filterSpec = "*:E")
            }
            actionBtn(it, "ANR 堆栈") {
                captureAnrLog()
            }
            actionBtn(it, "清空日志缓冲") {
                ShizukuHelper.execCommand("logcat -c", callback = object : ShizukuHelper.CommandResultListener {
                    override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                        runOnUiThread { Toast.makeText(this@DevToolsActivity, "日志已清空", Toast.LENGTH_SHORT).show() }
                    }
                    override fun onError(msg: String) {
                        runOnUiThread { Toast.makeText(this@DevToolsActivity, "需要 Root 权限", Toast.LENGTH_SHORT).show() }
                    }
                })
            }
        }

        // 系统属性
        section(root, "系统属性 (getprop)") {
            actionBtn(it, "列出所有属性") {
                val pd = android.app.ProgressDialog(this).apply { setMessage("加载中..."); show() }
                Thread {
                    val process = Runtime.getRuntime().exec("getprop")
                    val stdout = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    runOnUiThread { pd.dismiss(); showPropList(stdout) }
                }.start()
            }
            actionBtn(it, "搜索属性关键字") {
                showPropSearchDialog()
            }
        }

        // SELinux 控制
        section(root, "SELinux 控制") {
            val status = SystemInfoUtil.getSelinuxStatus()
            val statusText = if (status == "Enforcing") "强制模式" else if (status == "Permissive") "宽容模式" else status
            infoRow(it, "当前状态", statusText)
            if (status == "Enforcing") {
                actionBtn(it, "设为宽容模式 (Permissive)") {
                    confirmSelinuxSwitch(false)
                }
            } else {
                actionBtn(it, "设为强制模式 (Enforcing)") {
                    confirmSelinuxSwitch(true)
                }
            }
        }

        // 系统更新拦截
        section(root, "系统更新拦截") {
            infoRow(it, "说明", "阻止 MIUI / 原生系统自动更新，需要 Root")
            actionBtn(it, "拦截系统更新") {
                disableMiuiUpdate()
            }
            actionBtn(it, "恢复系统更新") {
                enableMiuiUpdate()
            }
        }
    }

    private fun execCommand(cmd: String = etCommand.text.toString()) {
        if (cmd.isBlank()) return
        val pd = android.app.ProgressDialog(this).apply { setMessage("执行中..."); show() }
        
        // 判断是否需要 root 权限
        val needRoot = cmd.startsWith("su ") || cmd.startsWith("setenforce")
            || cmd.startsWith("mount") || cmd.startsWith("remount")
            || cmd.startsWith("chmod") && cmd.contains("/data/")
            || cmd.startsWith("chown")
        
        // 判断是否需要 shell 环境（管道、重定向、通配符等）
        val needShell = cmd.contains("|") || cmd.contains(">") || cmd.contains("<") || cmd.contains("&&") || cmd.contains("||")
        
        if (needRoot) {
            // 需要 root 的命令，通过 Shizuku + su 执行
            ShizukuHelper.execCommand(cmd, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    pd.dismiss()
                    runOnUiThread {
                        val msg = buildString {
                            if (stdout.isNotBlank()) append(stdout)
                            if (stderr.isNotBlank()) append("\n[错误] $stderr")
                            append("\n[退出码: $exitCode]")
                        }
                        showCommandResult(cmd, msg)
                    }
                }
                override fun onError(msg: String) {
                    pd.dismiss()
                    runOnUiThread { Toast.makeText(this@DevToolsActivity, "需要 Root: $msg", Toast.LENGTH_SHORT).show() }
                }
            })
        } else if (needShell) {
            // 需要 shell 环境的命令
            ShizukuHelper.execCommand(cmd, useSu = false, callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    pd.dismiss()
                    runOnUiThread {
                        val msg = buildString {
                            if (stdout.isNotBlank()) append(stdout)
                            if (stderr.isNotBlank()) append("\n[错误] $stderr")
                            append("\n[退出码: $exitCode]")
                        }
                        showCommandResult(cmd, msg)
                    }
                }
                override fun onError(msg: String) {
                    pd.dismiss()
                    // Shizuku 不可用时，尝试直接执行
                    tryShellExec(cmd, pd)
                }
            })
        } else {
            // 普通命令，通过 shell 执行
            tryShellExec(cmd, pd)
        }
    }
    
    private fun tryShellExec(cmd: String, pd: android.app.ProgressDialog) {
        Thread {
            try {
                // 使用 shell 执行命令
                val process = Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd))
                val stdout = process.inputStream.bufferedReader().readText()
                val stderr = process.errorStream.bufferedReader().readText()
                val exitCode = process.waitFor()
                runOnUiThread {
                    pd.dismiss()
                    val msg = buildString {
                        if (stdout.isNotBlank()) append(stdout)
                        if (stderr.isNotBlank()) append("\n[错误] $stderr")
                        append("\n[退出码: $exitCode]")
                    }
                    showCommandResult(cmd, msg)
                }
            } catch (e: Exception) {
                runOnUiThread {
                    pd.dismiss()
                    Toast.makeText(this@DevToolsActivity, "执行失败: ${e.message}", Toast.LENGTH_SHORT).show()
                }
            }
        }.start()
    }

    private fun showCommandResult(cmd: String, result: String) {
        AlertDialog.Builder(this)
            .setTitle("结果：$cmd")
            .setMessage(result.take(3000))
            .setPositiveButton("复制全部") { _, _ ->
                (getSystemService(CLIPBOARD_SERVICE) as ClipboardManager)
                    .setPrimaryClip(ClipData.newPlainText("cmd", result))
                Toast.makeText(this, "已复制", Toast.LENGTH_SHORT).show()
            }
            .setNeutralButton("分享") { _, _ ->
                shareAsFile("cmd_result_${System.currentTimeMillis()}.txt", result)
            }
            .setNegativeButton("关闭", null)
            .show()
    }

    private fun captureLogcat(lines: Int, filterSpec: String = "") {
        val pd = android.app.ProgressDialog(this).apply { setMessage("抓取日志..."); show() }
        
        // 获取当前应用 PID，过滤只显示本应用日志
        val myPid = android.os.Process.myPid()
        
        val cmd = buildList {
            add("logcat")
            add("-d")
            add("-t")
            add(lines.toString())
            // 过滤：只显示本应用 或 系统级日志
            if (filterSpec.isNotBlank()) {
                add(filterSpec)
            } else {
                // 默认过滤：本应用 + 隔离/Root/模块 相关
                add("*:V")
            }
            add(myPid.toString() + ":V")  // 本应用所有日志
            add("pandasu:V")              // pandasu tag
            add("PandaTurbo:V")           // PandaTurbo tag
            add("Turbo:V")                // Turbo tag
            add("Isolation:V")            // 隔离相关
            add("Magisk:V")               // Magisk 相关
            add("Shizuku:V")              // Shizuku 相关
            add("*:" + if (filterSpec.isBlank()) "S" else "V") // 其他静音
        }.toTypedArray()
        
        Runtime.getRuntime().exec(cmd).let { process ->
            Thread {
                val stdout = process.inputStream.bufferedReader().readText()
                process.waitFor()
                runOnUiThread {
                    pd.dismiss()
                    if (stdout.isNotBlank()) showLogOutput(stdout, "PandaTurbo 日志")
                    else Toast.makeText(this@DevToolsActivity, "无日志内容", Toast.LENGTH_SHORT).show()
                }
            }.start()
        }
    }

    private fun captureAnrLog() {
        val pd = android.app.ProgressDialog(this).apply { show() }
        ShizukuHelper.execCommand("cat /data/anr/traces.txt", callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                pd.dismiss()
                runOnUiThread {
                    if (stdout.isNotBlank()) showLogOutput(stdout, "ANR 堆栈")
                    else Toast.makeText(this@DevToolsActivity, "未找到 ANR 堆栈", Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                pd.dismiss()
                runOnUiThread { Toast.makeText(this@DevToolsActivity, "需要 Root 权限", Toast.LENGTH_SHORT).show() }
            }
        })
    }

    private fun showLogOutput(content: String, title: String) {
        val lines = content.split("\n")
        val display = if (lines.size > 200) lines.takeLast(200) else lines
        AlertDialog.Builder(this)
            .setTitle("$title (${display.size} 行)")
            .setMessage(display.joinToString("\n").takeLast(3000))
            .setPositiveButton("复制") { _, _ ->
                (getSystemService(CLIPBOARD_SERVICE) as ClipboardManager)
                    .setPrimaryClip(ClipData.newPlainText("log", content))
                Toast.makeText(this, "已复制", Toast.LENGTH_SHORT).show()
            }
            .setNeutralButton("分享") { _, _ ->
                shareAsFile("logcat_${System.currentTimeMillis()}.txt", content)
            }
            .setNegativeButton("关闭", null)
            .show()
    }

    private fun showPropList(props: String) {
        val lines = props.lines().filter { it.contains("]: [") }
            .map { it.replace("[", "").replace("]: [", " = ").replace("]", "") }
        AlertDialog.Builder(this)
            .setTitle("系统属性 (${lines.size})")
            .setMessage(lines.take(300).joinToString("\n"))
            .setPositiveButton("确定", null)
            .show()
    }

    private fun showPropSearchDialog() {
        val input = EditText(this).apply { hint = "输入关键字，如：gpu" }
        AlertDialog.Builder(this)
            .setTitle("搜索属性")
            .setView(input)
            .setPositiveButton("搜索") { _, _ ->
                val keyword = input.text.toString()
                if (keyword.isBlank()) return@setPositiveButton
                val pd = android.app.ProgressDialog(this).apply { setMessage("搜索中..."); show() }
                Thread {
                    val process = Runtime.getRuntime().exec("getprop")
                    val stdout = process.inputStream.bufferedReader().readText()
                    process.waitFor()
                    val matched = stdout.lines().filter { it.contains(keyword, ignoreCase = true) }.joinToString("\n")
                    runOnUiThread {
                        pd.dismiss()
                        AlertDialog.Builder(this@DevToolsActivity)
                            .setTitle("搜索：$keyword")
                            .setMessage(matched.ifBlank { "无结果" })
                            .setPositiveButton("确定", null)
                            .show()
                    }
                }.start()
            }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun confirmSelinuxSwitch(toEnforcing: Boolean) {
        val action = if (toEnforcing) "Enforcing（强制）" else "Permissive（宽容）"
        AlertDialog.Builder(this)
            .setTitle("SELinux 切换")
            .setMessage("确定将 SELinux 设为 $action 吗？这会影响系统安全。")
            .setPositiveButton("确定") { _, _ -> setSelinux(toEnforcing) }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun setSelinux(enforcing: Boolean) {
        val value = if (enforcing) "1" else "0"
        ShizukuHelper.execCommand("setenforce $value", useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread {
                    val name = if (enforcing) "强制模式 (Enforcing)" else "宽容模式 (Permissive)"
                    Toast.makeText(this@DevToolsActivity,
                        if (exitCode == 0) "SELinux = $name" else "失败：$stderr",
                        Toast.LENGTH_SHORT).show()
                }
            }
            override fun onError(msg: String) {
                runOnUiThread { Toast.makeText(this@DevToolsActivity, "需要 Root: $msg", Toast.LENGTH_SHORT).show() }
            }
        })
    }

    private fun disableMiuiUpdate() {
        val cmds = listOf(
            "mkdir -p /data/system/ota 2>/dev/null || true",
            "touch /data/system/ota/disable_ota 2>/dev/null || true",
            "pm disable-user --user 0 com.xiaomi.miupdaters 2>/dev/null || true",
            "pm disable-user --user 0 com.android.updater 2>/dev/null || true"
        )
        ShizukuHelper.execScript(cmds, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread { Toast.makeText(this@DevToolsActivity, "更新已拦截（需重启生效）", Toast.LENGTH_LONG).show() }
            }
            override fun onError(msg: String) {
                runOnUiThread { Toast.makeText(this@DevToolsActivity, "需要 Root", Toast.LENGTH_SHORT).show() }
            }
        })
    }

    private fun enableMiuiUpdate() {
        val cmds = listOf(
            "rm -f /data/system/ota/disable_ota 2>/dev/null || true",
            "pm enable --user 0 com.xiaomi.miupdaters 2>/dev/null || true",
            "pm enable --user 0 com.android.updater 2>/dev/null || true"
        )
        ShizukuHelper.execScript(cmds, useSu = true, callback = object : ShizukuHelper.CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                runOnUiThread { Toast.makeText(this@DevToolsActivity, "更新已恢复", Toast.LENGTH_SHORT).show() }
            }
            override fun onError(msg: String) {
                runOnUiThread { Toast.makeText(this@DevToolsActivity, "需要 Root", Toast.LENGTH_SHORT).show() }
            }
        })
    }

    private fun section(parent: LinearLayout, title: String, block: (LinearLayout) -> Unit) {
        val sec = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(14), dp(16), dp(14))
            setBackgroundColor(Color.WHITE)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) elevation = 2f
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(12) }
        }
        sec.addView(TextView(this).apply {
            text = title
            textSize = 16f
            setTextColor(0xFF1976D2.toInt())
            paint.isFakeBoldText = true
            setPadding(0, 0, 0, dp(10))
        })
        block(sec)
        parent.addView(sec)
    }

    private fun infoRow(parent: LinearLayout, label: String, value: String) {
        val row = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
        row.addView(TextView(this).apply {
            text = "$label：$value"
            textSize = 14f
            setTextColor(0xFF757575.toInt())
        })
        parent.addView(row)
    }

    private fun actionBtn(parent: LinearLayout, label: String, action: () -> Unit) {
        val btn = Button(this).apply {
            text = label
            textSize = 14f
            gravity = Gravity.START or Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }
            setOnClickListener { action() }
        }
        parent.addView(btn)
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    // 分享内容为 txt 文件
    private fun shareAsFile(fileName: String, content: String) {
        try {
            val cacheDir = cacheDir
            val file = File(cacheDir, fileName)
            file.writeText(content)
            
            val uri = FileProvider.getUriForFile(
                this,
                "${packageName}.fileprovider",
                file
            )
            
            val sendIntent = Intent(Intent.ACTION_SEND).apply {
                type = "application/octet-stream"
                putExtra(Intent.EXTRA_STREAM, uri)
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            }
            startActivity(Intent.createChooser(sendIntent, "分享"))
        } catch (e: Exception) {
            Toast.makeText(this, "分享失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
