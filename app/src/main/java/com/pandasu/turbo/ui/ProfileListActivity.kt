package com.pandasu.turbo.ui

import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.pandasu.turbo.R
import com.pandasu.turbo.data.GameProfile
import com.pandasu.turbo.data.GameProfileStore
import com.pandasu.turbo.databinding.ActivityProfileListBinding
import com.pandasu.turbo.util.ImportExportUtil

class ProfileListActivity : AppCompatActivity() {

    private lateinit var binding: ActivityProfileListBinding
    private lateinit var store: GameProfileStore

    private val importLauncher = registerForActivityResult(
        ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri ?: return@registerForActivityResult
        val count = ImportExportUtil.importFromUri(this, uri)
        if (count > 0) {
            Toast.makeText(this, "导入 $count 个配置", Toast.LENGTH_SHORT).show()
            loadProfiles()
        } else {
            Toast.makeText(this, getString(R.string.import_error), Toast.LENGTH_SHORT).show()
        }
    }

    private val exportLauncher = registerForActivityResult(
        ActivityResultContracts.CreateDocument("application/json")
    ) { uri: Uri? ->
        uri ?: return@registerForActivityResult
        val ok = ImportExportUtil.exportToUri(this, uri)
        Toast.makeText(this, if (ok) getString(R.string.export_success) else getString(R.string.import_error), Toast.LENGTH_SHORT).show()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityProfileListBinding.inflate(layoutInflater)
        setContentView(binding.root)
        store = GameProfileStore(this)
        setupUI()
        loadProfiles()
    }

    private fun setupUI() {
        binding.toolbar.title = "游戏配置"
        binding.toolbar.setNavigationOnClickListener { finish() }
        binding.recyclerView.layoutManager = LinearLayoutManager(this)

        // 添加游戏按钮 - 弹出选择对话框
        binding.btnAddInstalled.setOnClickListener {
            showAddGameDialog()
        }
        binding.btnImport.setOnClickListener {
            importLauncher.launch("application/json")
        }
        binding.btnExport.setOnClickListener {
            exportLauncher.launch("panda_turbo_profiles.json")
        }
    }

    private fun showAddGameDialog() {
        val installedApps = getInstalledUserApps()
        if (installedApps.isEmpty()) {
            Toast.makeText(this, "没有找到可添加的应用", Toast.LENGTH_SHORT).show()
            return
        }

        val names = installedApps.map { it.displayName }.toTypedArray()
        AlertDialog.Builder(this)
            .setTitle("添加游戏")
            .setItems(names) { _, which ->
                val app = installedApps[which]
                val profile = GameProfile(packageName = app.packageName, displayName = app.displayName)
                if (store.saveProfile(profile)) {
                    Toast.makeText(this, "已添加: ${app.displayName}", Toast.LENGTH_SHORT).show()
                    loadProfiles()
                } else {
                    Toast.makeText(this, "添加失败", Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton("取消", null)
            .show()
    }

    private fun getInstalledUserApps(): List<AppInfo> {
        val pm = packageManager
        val apps = mutableListOf<AppInfo>()
        val profiles = store.allProfiles
        val addedPackages = profiles.map { it.packageName }.toSet()

        pm.getInstalledApplications(PackageManager.GET_META_DATA)?.forEach { appInfo ->
            // 过滤：用户应用 + 非系统应用 + 未添加
            if ((appInfo.flags and ApplicationInfo.FLAG_SYSTEM) == 0 && !addedPackages.contains(appInfo.packageName)) {
                try {
                    val name = pm.getApplicationLabel(appInfo).toString()
                    apps.add(AppInfo(appInfo.packageName, name, appInfo))
                } catch (e: Exception) { }
            }
        }
        return apps.sortedBy { it.displayName }
    }

    data class AppInfo(val packageName: String, val displayName: String, val info: ApplicationInfo)

    private fun loadProfiles() {
        val profiles = store.allProfiles
        binding.recyclerView.adapter = ProfileAdapter(profiles, store, this) { loadProfiles() }
        binding.tvEmpty.visibility = if (profiles.isEmpty()) View.VISIBLE else View.GONE
    }

    override fun onResume() {
        super.onResume()
        loadProfiles()
    }
}

class ProfileAdapter(
    private val profiles: List<GameProfile>,
    private val store: GameProfileStore,
    private val activity: ProfileListActivity,
    private val onDeleted: () -> Unit
) : RecyclerView.Adapter<ProfileAdapter.VH>() {

    class VH(view: View) : RecyclerView.ViewHolder(view) {
        val ivIcon: ImageView = view.findViewById(R.id.ivProfileIcon)
        val tvName: TextView = view.findViewById(R.id.tvProfileName)
        val tvInfo: TextView = view.findViewById(R.id.tvProfileInfo)
        val btnEdit: Button = view.findViewById(R.id.btnEdit)
        val btnDelete: Button = view.findViewById(R.id.btnDelete)
    }

    override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): VH {
        val v = android.view.LayoutInflater.from(parent.context)
            .inflate(R.layout.item_profile, parent, false)
        return VH(v)
    }

    override fun onBindViewHolder(holder: VH, pos: Int) {
        val p = profiles[pos]
        try {
            val icon = activity.packageManager.getApplicationIcon(p.packageName)
            holder.ivIcon.setImageDrawable(icon)
        } catch (e: Exception) {
            holder.ivIcon.setImageResource(android.R.drawable.sym_def_app_icon)
        }
        holder.tvName.text = p.displayName
        holder.tvInfo.text = buildString {
            append(if (p.customBrightness >= 0) "亮度 ${p.customBrightness}" else "亮度: 自动")
            append(" | ${p.performanceMode}")
            if (p.autoTurbo) append(" | Turbo")
            if (p.autoDnd) append(" | 勿扰")
        }
        holder.btnEdit.setOnClickListener {
            activity.startActivity(Intent(activity, ProfileEditActivity::class.java).apply {
                putExtra("packageName", p.packageName)
            })
        }
        holder.btnDelete.setOnClickListener {
            store.removeProfile(p.packageName)
            onDeleted()
        }
    }

    override fun getItemCount() = profiles.size
}