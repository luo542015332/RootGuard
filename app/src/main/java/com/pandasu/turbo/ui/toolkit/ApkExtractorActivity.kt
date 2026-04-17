package com.pandasu.turbo.ui.toolkit

import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
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
import com.pandasu.turbo.util.AppInfoUtil
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File

class ApkExtractorActivity : AppCompatActivity() {

    private lateinit var recyclerView: RecyclerView
    private lateinit var searchView: SearchView
    private lateinit var spinnerFilter: Spinner
    private lateinit var tvStats: TextView
    private lateinit var loadingLayout: LinearLayout
    private lateinit var loadingBar: ProgressBar
    private val allApps = mutableListOf<AppInfoUtil.AppItem>()
    private val displayApps = mutableListOf<AppInfoUtil.AppItem>()
    private lateinit var adapter: AppListAdapter
    private var currentFilter = "全部"
    private var currentQuery = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        supportActionBar?.apply {
            title = "APK 提取器"
            setDisplayHomeAsUpEnabled(true)
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutParams = ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
            )
            setPadding(dp(16), dp(8), dp(16), dp(8))
        }

        // 搜索框
        searchView = SearchView(this).apply {
            queryHint = "搜索应用名称或包名..."
            setOnQueryTextListener(object : SearchView.OnQueryTextListener {
                override fun onQueryTextSubmit(q: String?) = false
                override fun onQueryTextChange(newText: String?): Boolean {
                    currentQuery = newText ?: ""
                    filterApps()
                    return true
                }
            })
        }
        root.addView(searchView)

        // 过滤
        val filterLayout = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
        spinnerFilter = Spinner(this)
        spinnerFilter.adapter = ArrayAdapter(
            this,
            android.R.layout.simple_spinner_dropdown_item,
            arrayOf("全部", "用户应用", "系统应用")
        )
        spinnerFilter.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, v: View?, pos: Int, id: Long) {
                currentFilter = spinnerFilter.getItemAtPosition(pos) as String
                filterApps()
            }
            override fun onNothingSelected(p: AdapterView<*>?) {}
        }
        filterLayout.addView(TextView(this).apply {
            text = "过滤: "
            setPadding(0, 0, dp(8), 0)
        })
        filterLayout.addView(spinnerFilter)
        root.addView(filterLayout)

        // 统计
        tvStats = TextView(this).apply {
            text = "加载中..."
            textSize = 12f
            setTextColor(0xFF757575.toInt())
            setPadding(0, dp(4), 0, dp(4))
        }
        root.addView(tvStats)

        // 列表
        recyclerView = RecyclerView(this).apply {
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f
            )
            layoutManager = LinearLayoutManager(this@ApkExtractorActivity)
        }
        root.addView(recyclerView)

        // 加载中
        loadingLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = android.view.Gravity.CENTER
            visibility = View.GONE
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f
            )
        }
        loadingBar = ProgressBar(this)
        loadingLayout.addView(loadingBar)
        loadingLayout.addView(TextView(this).apply {
            text = "正在扫描已安装应用..."
            setPadding(dp(16), dp(16), dp(16), 0)
        })
        root.addView(loadingLayout)

        setContentView(root)

        adapter = AppListAdapter(displayApps, onAction = { app, action ->
            when (action) {
                "extract" -> extractApk(app)
                "share" -> shareApk(app)
                "detail" -> showAppDetail(app)
            }
        }, onSelectionChanged = null)
        recyclerView.adapter = adapter

        loadApps()
    }

    private fun loadApps() {
        loadingLayout.visibility = View.VISIBLE
        CoroutineScope(Dispatchers.Main).launch {
            val apps = withContext(Dispatchers.IO) {
                AppInfoUtil.getInstalledApps(this@ApkExtractorActivity, includeSystem = true)
            }
            allApps.clear()
            allApps.addAll(apps)
            loadingLayout.visibility = View.GONE
            filterApps()
            tvStats.text = "总计: ${allApps.size} | 用户: ${allApps.count { !it.isSystemApp }} | 系统: ${allApps.count { it.isSystemApp }}"
        }
    }

    private fun filterApps() {
        displayApps.clear()
        displayApps.addAll(allApps.filter { app ->
            val matchFilter = when (currentFilter) {
                "用户应用" -> !app.isSystemApp
                "系统应用" -> app.isSystemApp
                else -> true
            }
            val matchQuery = if (currentQuery.isBlank()) {
                true
            } else {
                app.appName.contains(currentQuery, ignoreCase = true) ||
                app.packageName.contains(currentQuery, ignoreCase = true)
            }
            matchFilter && matchQuery
        })
        adapter.notifyDataSetChanged()
    }

    private fun extractApk(app: AppInfoUtil.AppItem) {
        val dialog = AlertDialog.Builder(this)
            .setTitle("提取 ${app.appName}")
            .setMessage("正在提取 APK...\n${app.apkSizeStr}")
            .setNegativeButton("取消", null)
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

    private fun showAppDetail(app: AppInfoUtil.AppItem) {
        CoroutineScope(Dispatchers.Main).launch {
            val details = withContext(Dispatchers.IO) {
                AppInfoUtil.getAppDetail(this@ApkExtractorActivity, app.packageName)
            }
            val text = details.entries.joinToString("\n") { "${it.key}: ${it.value}" }
            AlertDialog.Builder(this@ApkExtractorActivity)
                .setTitle(app.appName)
                .setMessage(text)
                .setPositiveButton("确定", null)
                .show()
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            android.R.id.home -> { finish(); true }
            else -> super.onOptionsItemSelected(item)
        }
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()
}
