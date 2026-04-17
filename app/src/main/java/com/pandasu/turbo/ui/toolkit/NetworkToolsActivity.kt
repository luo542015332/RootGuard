package com.pandasu.turbo.ui.toolkit

import android.app.ProgressDialog
import android.content.Context
import android.graphics.Color
import android.graphics.Typeface
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.wifi.WifiManager
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.view.Gravity
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import kotlinx.coroutines.*
import java.net.Inet4Address
import java.net.NetworkInterface
import java.net.URL
import java.text.DecimalFormat

class NetworkToolsActivity : AppCompatActivity() {

    private lateinit var rootLayout: LinearLayout
    private val mainHandler = Handler(Looper.getMainLooper())

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "网络工具"
            setDisplayHomeAsUpEnabled(true)
        }

        rootLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }
        setContentView(rootLayout)

        buildUI()
    }

    private fun buildUI() {
        // 网络概览
        section("🌐 网络概览") { sec ->
            appendInfoRow(sec, "连接类型", getConnectionType())
            val ipLabel = appendInfoRow(sec, "本机 IP", "加载中...")
            CoroutineScope(Dispatchers.Main).launch {
                val ips = getLocalIpAddresses()
                updateValue(ipLabel, ips.values.firstOrNull() ?: "未连接")
            }
        }

        // WiFi 详情
        section("📶 WiFi 详情") { sec ->
            val wifi = getWifiInfo()
            if (wifi != null) {
                appendInfoRow(sec, "SSID", wifi.ssid)
                appendInfoRow(sec, "信号强度", "${wifi.rssi} dBm (${wifi.signalLevel})")
                appendInfoRow(sec, "连接速度", "${wifi.linkSpeed} Mbps")
                appendInfoRow(sec, "频段", wifi.frequencyBand)
                appendInfoRow(sec, "信道", wifi.channel.toString())
                appendInfoRow(sec, "本地 IP", wifi.ipAddress)
                appendInfoRow(sec, "BSSID", wifi.bssid)
            } else {
                appendInfoRow(sec, "状态", "未连接 WiFi")
            }
        }

        // DNS（通过解析 resolv.conf 获取）
        section("🔣 DNS 信息") { sec ->
            val dnsLabel = appendInfoRow(sec, "DNS 服务器", "读取中...")
            CoroutineScope(Dispatchers.Main).launch {
                val dns = getDnsServers()
                updateValue(dnsLabel, dns)
            }
        }

        // 公网 IP
        section("🌍 公网 IP") { sec ->
            val ipLabel = appendInfoRow(sec, "公网 IP", "正在获取...")
            CoroutineScope(Dispatchers.Main).launch {
                val ip = fetchPublicIp()
                updateValue(ipLabel, ip)
            }
        }

        // 网络测速
        section("📡 网络测速") { sec ->
            actionBtn(sec, "🏓 Ping 测试") {
                val pd = progress("Ping 测试中...")
                CoroutineScope(Dispatchers.Main).launch {
                    val result = runPingTest("8.8.8.8", 4)
                    pd.dismiss()
                    alert("Ping 结果", result)
                }
            }
            actionBtn(sec, "📶 下载速度测试") {
                val pd = progress("测速中...")
                CoroutineScope(Dispatchers.Main).launch {
                    val result = runSpeedTest()
                    pd.dismiss()
                    alert("测速结果", result)
                }
            }
        }

        // 通知访问权限（读 Settings.Secure，不需要 root）
        section("🔔 通知访问权限") { sec ->
            actionBtn(sec, "👁 查看权限列表") {
                val listeners = try {
                    Settings.Secure.getString(contentResolver, "enabled_notification_listeners")
                        ?: ""
                } catch (e: Exception) { "" }
                val msg = if (listeners.isBlank()) "无应用获得通知访问权限"
                          else listeners.split(":").joinToString("\n") { it.trim() }
                alert("通知监听器", msg)
            }
        }
    }

    // ====== 通用工具方法 ======

    private fun section(title: String, block: (LinearLayout) -> Unit) {
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
            typeface = Typeface.DEFAULT_BOLD
            setPadding(0, 0, 0, dp(10))
        })
        block(sec)
        rootLayout.addView(sec)
    }

    private fun appendInfoRow(parent: LinearLayout, label: String, value: String): TextView {
        val row = LinearLayout(parent.context).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, dp(5), 0, dp(5))
        }
        row.addView(TextView(parent.context).apply {
            text = label
            textSize = 14f
            setTextColor(0xFF757575.toInt())
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
        })
        val tv = TextView(parent.context).apply {
            text = value
            textSize = 14f
            setTextColor(0xFF212121.toInt())
            gravity = Gravity.END
        }
        row.addView(tv)
        parent.addView(row)
        return tv
    }

    private fun updateValue(tv: TextView, text: String) { tv.text = text }

    private fun actionBtn(parent: LinearLayout, text: String, action: () -> Unit) {
        val btn = Button(this).apply {
            this.text = text
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

    private fun progress(msg: String) = ProgressDialog(this).also { it.setMessage(msg); it.show() }
    private fun toast(msg: String) = Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
    private fun alert(title: String, msg: String) {
        AlertDialog.Builder(this)
            .setTitle(title)
            .setMessage(msg)
            .setPositiveButton("确定", null)
            .show()
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    /** 非阻塞异步执行命令，callback 在主线程回调 */
    private fun asyncExec(cmd: String, callback: (Int, String, String) -> Unit) {
        Thread {
            try {
                val process = Runtime.getRuntime().exec(cmd)
                val stdout = process.inputStream.bufferedReader().readText()
                val stderr = process.errorStream.bufferedReader().readText()
                val exitCode = process.waitFor()
                mainHandler.post { callback(exitCode, stdout, stderr) }
            } catch (e: Exception) {
                mainHandler.post { callback(-1, "", e.message ?: "执行出错") }
            }
        }.start()
    }

    // ====== 网络数据 ======

    private fun getConnectionType(): String {
        val cm = getSystemService(CONNECTIVITY_SERVICE) as ConnectivityManager
        val net = cm.activeNetwork ?: return "无网络"
        val caps = cm.getNetworkCapabilities(net) ?: return "未知"
        return when {
            caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) -> "WiFi"
            caps.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR) -> "移动数据"
            caps.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET) -> "以太网"
            else -> "其他"
        }
    }

    private fun getLocalIpAddresses(): Map<String, String> {
        val result = mutableMapOf<String, String>()
        try {
            NetworkInterface.getNetworkInterfaces().toList().forEach { iface ->
                if (!iface.isLoopback && iface.isUp) {
                    iface.inetAddresses.toList().forEach { addr ->
                        if (addr is Inet4Address) {
                            result[iface.displayName] = addr.hostAddress ?: ""
                        }
                    }
                }
            }
        } catch (e: Exception) { }
        return result
    }

    @Suppress("DEPRECATION")
    private fun getWifiInfo(): WifiInfoData? {
        return try {
            val wm = applicationContext.getSystemService(WIFI_SERVICE) as WifiManager
            val info = wm.connectionInfo ?: return null
            val freq = info.frequency
            val channel = when {
                freq in 2412..2484 -> (freq - 2412) / 5 + 1
                freq in 5170..5825 -> (freq - 5170) / 5 + 34
                else -> 0
            }
            val ipInt = info.ipAddress
            WifiInfoData(
                ssid = info.ssid?.removeSurrounding("\"") ?: "未知",
                bssid = info.bssid ?: "N/A",
                rssi = info.rssi,
                linkSpeed = info.linkSpeed,
                frequency = freq,
                ipAddress = "%d.%d.%d.%d".format(
                    ipInt and 0xff, ipInt shr 8 and 0xff,
                    ipInt shr 16 and 0xff, ipInt shr 24 and 0xff),
                channel = channel
            )
        } catch (e: Exception) { null }
    }

    private data class WifiInfoData(
        val ssid: String, val bssid: String, val rssi: Int,
        val linkSpeed: Int, val frequency: Int, val ipAddress: String, val channel: Int
    ) {
        val signalLevel: String get() = when {
            rssi >= -50 -> "极强"; rssi >= -60 -> "强"; rssi >= -70 -> "中"; rssi >= -80 -> "弱"; else -> "极弱"
        }
        val frequencyBand: String get() = if (frequency > 4000) "5 GHz" else "2.4 GHz"
    }

    private suspend fun fetchPublicIp(): String = withContext(Dispatchers.IO) {
        try { URL("https://api.ipify.org").readText(Charsets.UTF_8).trim() }
        catch (e: Exception) { try { URL("https://ifconfig.me/ip").readText(Charsets.UTF_8).trim() }
        catch (e2: Exception) { "获取失败" } }
    }

    private suspend fun runSpeedTest(): String = withContext(Dispatchers.IO) {
        try {
            val url = URL("https://speed.cloudflare.com/__down?bytes=1000000")
            val start = System.currentTimeMillis()
            val bytes = url.openStream().use { it.readBytes() }
            val elapsed = System.currentTimeMillis() - start
            val speedMbps = DecimalFormat("#.##").format(bytes.size * 8.0 / elapsed / 1000)
            "下载速度: $speedMbps Mbps\n(${bytes.size / 1024} KB / ${elapsed}ms)"
        } catch (e: Exception) { "测速失败: ${e.message}" }
    }

    private fun parsePing(output: String): String {
        if (output.isBlank()) return "无响应"
        val rtt = Regex("rtt|round-trip.*?=\\s*([\\d.]+)/([\\d.]+)/([\\d.]+)").find(output)
        val loss = Regex("(\\d+)% packet loss").find(output)
        val received = Regex("(\\d+) received").find(output)
        return buildString {
            rtt?.let {
                val (min, avg, max) = it.destructured
                append("延迟: 最低 ${min}ms / 平均 ${avg}ms / 最高 ${max}ms\n")
            }
            loss?.let { append("丢包率: ${it.groupValues[1]}%\n") }
            received?.let { append("收到: ${it.groupValues[1]} 包") }
            if (isEmpty()) append(output)
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }

    // ====== DNS 获取 ======

    private suspend fun getDnsServers(): String = withContext(Dispatchers.IO) {
        try {
            // 方法1：读取 /etc/resolv.conf（最可靠）
            val resolvFile = java.io.File("/system/etc/resolv.conf")
            if (resolvFile.exists()) {
                val lines = resolvFile.readText()
                    .lines()
                    .filter { it.trimStart().startsWith("nameserver") }
                if (lines.isNotEmpty()) {
                    return@withContext lines.joinToString("\n") { it.trim() }
                }
            }
            // 方法2：NetworkInterface 获取
            val interfaces = NetworkInterface.getNetworkInterfaces().toList()
            val dnsList = mutableListOf<String>()
            interfaces.forEach { iface ->
                iface.inetAddresses.toList().forEach { addr ->
                    // 过滤掉 link-local 和 loopback
                    val host = addr.hostAddress ?: return@forEach
                    if (!host.contains(":") && host != "127.0.0.1") {
                        // 这是 IP，不是 DNS
                    }
                }
            }
            // 方法3：通过 Java 网络属性
            val props = java.net.InetAddress.getAllByName("www.google.com")
            if (props.isNotEmpty()) {
                return@withContext "DNS 解析正常（${props[0].hostAddress}）"
            }
            "无法获取 DNS 信息"
        } catch (e: Exception) {
            "获取失败: ${e.message}"
        }
    }

    // ====== Ping 测试（纯 Java，无需 shell） ======

    private suspend fun runPingTest(host: String, count: Int): String = withContext(Dispatchers.IO) {
        try {
            val times = mutableListOf<Long>()
            var success = 0
            for (i in 1..count) {
                val start = System.currentTimeMillis()
                val reachable = java.net.InetAddress.getByName(host).isReachable(3000)
                val elapsed = System.currentTimeMillis() - start
                if (reachable) {
                    times.add(elapsed)
                    success++
                }
            }
            val loss = ((count - success) * 100 / count)
            if (times.isEmpty()) {
                "❌ 无法连接到 $host\n丢包率: $loss%\n（网络可能不可达或被防火墙拦截）"
            } else {
                val avg = times.average()
                val min = times.minOrNull() ?: 0
                val max = times.maxOrNull() ?: 0
                "✅ 连接到 $host\n延迟: 最低 ${min}ms / 平均 ${avg.toLong()}ms / 最高 ${max}ms\n丢包率: $loss%\n\n注: 此测试使用 Java 网络 API，与系统 ping 可能略有差异"
            }
        } catch (e: Exception) {
            "Ping 测试失败: ${e.message}"
        }
    }
}
