package com.pandasu.turbo.ui.toolkit

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.SearchView
import android.widget.Spinner
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.FileProvider
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.pandasu.turbo.R
import com.pandasu.turbo.util.AppInfoUtil
import kotlinx.coroutines.*
import java.io.File

class AppManagerActivity : AppCompatActivity() {

    private lateinit var recyclerView: RecyclerView
    private lateinit var spinnerFilter: Spinner
    private lateinit var searchView: SearchView
    private lateinit var progressBar: ProgressBar
    private lateinit var tvStats: TextView

    private val allApps = mutableListOf<AppInfoUtil.AppItem>()
    private val displayApps = mutableListOf<AppInfoUtil.AppItem>()
    private lateinit var adapter: AppListAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "应用管理"
            setDisplayHomeAsUpEnabled(true)
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(8), dp(16), dp(8))
            setBackgroundColor(0xFFF5F5F5.toInt())
        }

        // 过滤器
        spinnerFilter = Spinner(this).apply {
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            )
        }
        ArrayAdapter.createFromResource(
            this, R.array.filter_options, android.R.layout.simple_spinner_item
        ).also { adapter ->
            adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
            spinnerFilter.adapter = adapter
        }
        spinnerFilter.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>, view: View?, pos: Int, id: Long) {
                filterApps((searchView.query ?: "").toString())
            }
            override fun onNothingSelected(parent: AdapterView<*>) {}
        }
        root.addView(spinnerFilter)

        // 搜索框
        searchView = SearchView(this).apply {
            setIconifiedByDefault(false)
            queryHint = "搜索应用名或包名"
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            )
            setOnQueryTextListener(object : SearchView.OnQueryTextListener {
                override fun onQueryTextChange(newText: String?): Boolean {
                    filterApps(newText ?: "")
                    return true
                }
                override fun onQueryTextSubmit(query: String?): Boolean {
                    return true
                }
            })
        }
        root.addView(searchView)

        // 进度条
        progressBar = ProgressBar(this).apply {
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { gravity = android.view.Gravity.CENTER }
            visibility = View.GONE
        }
        root.addView(progressBar)

        // 统计信息
        tvStats = TextView(this).apply {
            textSize = 12f
            setTextColor(0xFF757575.toInt())
            setPadding(0, dp(8), 0, dp(8))
        }
        root.addView(tvStats)

        // 列表
        recyclerView = RecyclerView(this).apply {
            layoutManager = LinearLayoutManager(this@AppManagerActivity)
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                0,
                1f
            )
            setHasFixedSize(true)
        }
        root.addView(recyclerView)

        setContentView(root)

        adapter = AppListAdapter(displayApps, onAction = { app, action ->
            when (action) {
                "extract" -> extractApk(app)
                "share" -> shareApk(app)
                "detail" -> showAppActions(app)
            }
        })
        recyclerView.adapter = adapter
        loadApps()
    }

    private fun loadApps() {
        progressBar.visibility = View.VISIBLE
        CoroutineScope(Dispatchers.Main).launch {
            val apps = withContext(Dispatchers.IO) {
                AppInfoUtil.getInstalledApps(this@AppManagerActivity, includeSystem = true)
            }
            allApps.clear()
            allApps.addAll(apps)
            progressBar.visibility = View.GONE
            filterApps("")
            val userCount = allApps.count { !it.isSystemApp }
            val sysCount = allApps.count { it.isSystemApp }
            tvStats.text = "总计：${allApps.size} | 用户：${userCount} | 系统：${sysCount}"
        }
    }

    private fun filterApps(query: String) {
        val filter = spinnerFilter.selectedItem as? String ?: "全部应用"
        displayApps.clear()
        displayApps.addAll(allApps.filter { app ->
            val matchFilter = when (filter) {
                "用户应用" -> !app.isSystemApp
                "系统应用" -> app.isSystemApp
                else -> true
            }
            val matchQuery = query.isBlank() ||
                    app.appName.contains(query, ignoreCase = true) ||
                    app.packageName.contains(query, ignoreCase = true)
            matchFilter && matchQuery
        })
        adapter.notifyDataSetChanged()
    }

    private fun showAppActions(app: AppInfoUtil.AppItem) {
        val options = arrayOf(
            "强制停止",
            "禁用应用",
            "启用应用",
            "复制包名",
            "提取 APK",
            "分享 APK",
            "查看详情"
        )
        AlertDialog.Builder(this)
            .setTitle(app.appName)
            .setItems(options) { _, which ->
                when (which) {
                    0 -> confirmAction("确定强制停止 ${app.appName} 吗？") {
                        AppInfoUtil.forceStopApp(app.packageName, app.isSystemApp) { success, msg ->
                            Toast.makeText(this,
                                if (success) "已停止" else msg,
                                Toast.LENGTH_SHORT).show()
                        }
                    }
                    1 -> confirmAction("确定禁用 ${app.appName} 吗？") {
                        AppInfoUtil.disableApp(app.packageName, app.isSystemApp) { success, msg ->
                            Toast.makeText(this,
                                if (success) "已禁用" else msg,
                                Toast.LENGTH_SHORT).show()
                        }
                    }
                    2 -> AppInfoUtil.enableApp(app.packageName, app.isSystemApp) { success, msg ->
                        Toast.makeText(this,
                            if (success) "已启用" else msg,
                            Toast.LENGTH_SHORT).show()
                    }
                    3 -> {
                        val cm = getSystemService(CLIPBOARD_SERVICE) as ClipboardManager
                        cm.setPrimaryClip(ClipData.newPlainText("package", app.packageName))
                        Toast.makeText(this, "包名已复制", Toast.LENGTH_SHORT).show()
                    }
                    4 -> extractApk(app)
                    5 -> shareApk(app)
                    6 -> showDetail(app)
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun confirmAction(msg: String, action: () -> Unit) {
        AlertDialog.Builder(this)
            .setTitle("确认操作")
            .setMessage(msg)
            .setPositiveButton("确定") { _, _ -> action() }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun showDetail(app: AppInfoUtil.AppItem) {
        val details = AppInfoUtil.getAppDetail(this, app.packageName)
        val text = details.entries.joinToString("\n") { "${it.key}：${it.value}" }
        AlertDialog.Builder(this)
            .setTitle(app.appName)
            .setMessage(text)
            .setPositiveButton("确定", null)
            .show()
    }

    // ==================== APK 提取功能 ====================

    private fun extractApk(app: AppInfoUtil.AppItem) {
        val dialog = AlertDialog.Builder(this)
            .setTitle("提取 ${app.appName}")
            .setMessage("正在提取 APK...\n${app.apkSizeStr}")
            .setNegativeButton("取消") { d, _ -> d.dismiss() }
            .create()
        dialog.show()

        AppInfoUtil.extractApk(this, app,
            onProgress = { progress ->
                Handler(Looper.getMainLooper()).post {
                    if (dialog.isShowing) {
                        dialog.setMessage("正在提取 APK...\n${app.apkSizeStr}\n进度: $progress%")
                    }
                }
            },
            onComplete = { success, result ->
                dialog.dismiss()
                if (success) {
                    showSuccessDialog(app, result)
                } else {
                    Toast.makeText(this, result, Toast.LENGTH_LONG).show()
                }
            }
        )
    }

    private fun showSuccessDialog(app: AppInfoUtil.AppItem, path: String) {
        val file = File(path)
        if (!file.exists()) {
            Toast.makeText(this, "文件不存在: $path", Toast.LENGTH_SHORT).show()
            return
        }
        AlertDialog.Builder(this)
            .setTitle("提取成功")
            .setMessage("${app.appName}\n路径: $path\n大小: ${app.apkSizeStr}")
            .setPositiveButton("安装") { _, _ ->
                try {
                    val uri = FileProvider.getUriForFile(this, "$packageName.fileprovider", file)
                    val intent = Intent(Intent.ACTION_VIEW).apply {
                        setDataAndType(uri, "application/vnd.android.package-archive")
                        addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                    }
                    startActivity(Intent.createChooser(intent, "安装 APK"))
                } catch (e: Exception) {
                    Toast.makeText(this, "打开失败: ${e.message}", Toast.LENGTH_SHORT).show()
                }
            }
            .setNeutralButton("分享") { _, _ -> shareApk(app) }
            .setNegativeButton("关闭", null)
            .show()
    }

    private fun shareApk(app: AppInfoUtil.AppItem) {
        AppInfoUtil.extractApk(this, app,
            onProgress = {},
            onComplete = { success, path ->
                if (!success) {
                    Toast.makeText(this, path, Toast.LENGTH_SHORT).show()
                    return@extractApk
                }
                val file = File(path)
                if (!file.exists()) {
                    Toast.makeText(this, "文件不存在", Toast.LENGTH_SHORT).show()
                    return@extractApk
                }
                try {
                    val uri = FileProvider.getUriForFile(this, "$packageName.fileprovider", file)
                    val intent = Intent(Intent.ACTION_SEND).apply {
                        type = "application/vnd.android.package-archive"
                        putExtra(Intent.EXTRA_STREAM, uri)
                        addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                    }
                    startActivity(Intent.createChooser(intent, "分享 APK"))
                } catch (e: Exception) {
                    Toast.makeText(this, "分享失败: ${e.message}", Toast.LENGTH_SHORT).show()
                }
            }
        )
    }

    private fun batchExtract() {
        val selected = adapter.getSelectedApps()
        if (selected.isEmpty()) {
            Toast.makeText(this, "请先勾选要提取的应用", Toast.LENGTH_SHORT).show()
            return
        }
        var done = 0
        val failed = mutableListOf<String>()
        val total = selected.size

        val dialog = AlertDialog.Builder(this)
            .setTitle("批量提取 APK")
            .setMessage("正在提取 $total 个应用...")
            .setNegativeButton("取消") { d, _ -> d.dismiss() }
            .create()
        dialog.show()

        CoroutineScope(Dispatchers.Main).launch {
            for (app in selected) {
                val result = withContext(Dispatchers.IO) {
                    var resultPath = ""
                    var success = false
                    AppInfoUtil.extractApk(this@AppManagerActivity, app,
                        onProgress = {},
                        onComplete = { s, r -> success = s; resultPath = r }
                    )
                    if (success) resultPath else null
                }
                if (result != null) done++ else failed.add(app.appName)
                if (dialog.isShowing) {
                    dialog.setMessage("正在提取 $total 个应用...\n已完成 $done/$total")
                }
            }
            dialog.dismiss()
            val msg = if (failed.isEmpty()) "提取完成，共 $done 个" else "提取完成 $done 个\n失败: ${failed.joinToString(", ")}"
            AlertDialog.Builder(this@AppManagerActivity)
                .setTitle("提取结果")
                .setMessage(msg)
                .setPositiveButton("确定", null)
                .show()
        }
    }

    private fun batchShare() {
        val selected = adapter.getSelectedApps()
        if (selected.isEmpty()) {
            Toast.makeText(this, "请先勾选要分享的应用", Toast.LENGTH_SHORT).show()
            return
        }
        if (selected.size > 5) {
            Toast.makeText(this, "每次最多分享 5 个应用", Toast.LENGTH_LONG).show()
            return
        }
        // 依次分享（每次一个 URI）
        var idx = 0
        fun shareNext() {
            if (idx >= selected.size) return
            AppInfoUtil.extractApk(this, selected[idx],
                onProgress = {},
                onComplete = { success, path ->
                    if (success) {
                        try {
                            val file = File(path)
                            val uri = FileProvider.getUriForFile(this, "$packageName.fileprovider", file)
                            val intent = Intent(Intent.ACTION_SEND).apply {
                                type = "application/vnd.android.package-archive"
                                putExtra(Intent.EXTRA_STREAM, uri)
                                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                            }
                            startActivity(Intent.createChooser(intent, "分享 ${selected[idx].appName}"))
                        } catch (e: Exception) {
                            Toast.makeText(this, "分享失败: ${e.message}", Toast.LENGTH_SHORT).show()
                        }
                    } else {
                        Toast.makeText(this, "提取失败: $path", Toast.LENGTH_SHORT).show()
                    }
                    idx++
                    if (idx < selected.size) shareNext()
                }
            )
        }
        shareNext()
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }
}
