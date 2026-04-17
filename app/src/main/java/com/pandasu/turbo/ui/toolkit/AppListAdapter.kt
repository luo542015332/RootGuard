package com.pandasu.turbo.ui.toolkit

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.CheckBox
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.pandasu.turbo.R
import com.pandasu.turbo.util.AppInfoUtil

class AppListAdapter(
    private val apps: List<AppInfoUtil.AppItem>,
    private val onAction: (AppInfoUtil.AppItem, String) -> Unit,
    private val onSelectionChanged: ((Set<String>) -> Unit)? = null
) : RecyclerView.Adapter<AppListAdapter.VH>() {

    private val selectedPackages = mutableSetOf<String>()

    class VH(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val checkBox: CheckBox = itemView.findViewById(R.id.cb_selected)
        val icon: ImageView = itemView.findViewById(R.id.app_icon)
        val name: TextView = itemView.findViewById(R.id.app_name)
        val pkg: TextView = itemView.findViewById(R.id.app_pkg)
        val size: TextView = itemView.findViewById(R.id.app_size)
        val badge: TextView = itemView.findViewById(R.id.app_badge)
        val btnExtract: ImageButton = itemView.findViewById(R.id.btn_extract)
        val btnShare: ImageButton = itemView.findViewById(R.id.btn_share)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        val v = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_apk_list, parent, false)
        return VH(v)
    }

    override fun onBindViewHolder(holder: VH, position: Int) {
        val app = apps[position]
        holder.name.text = app.appName
        holder.pkg.text = "${app.packageName}\n${app.versionName}"
        holder.size.text = app.apkSizeStr
        holder.badge.text = if (app.isSystemApp) "系统" else "用户"
        holder.badge.setBackgroundColor(
            if (app.isSystemApp) 0xFF607D8B.toInt() else 0xFF4CAF50.toInt()
        )
        if (app.icon != null) holder.icon.setImageDrawable(app.icon)
        else holder.icon.setImageResource(android.R.drawable.sym_def_app_icon)

        // 多选
        holder.checkBox.isChecked = selectedPackages.contains(app.packageName)
        holder.checkBox.setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) selectedPackages.add(app.packageName)
            else selectedPackages.remove(app.packageName)
            onSelectionChanged?.invoke(selectedPackages.toSet())
        }

        holder.btnExtract.setOnClickListener { onAction(app, "extract") }
        holder.btnShare.setOnClickListener { onAction(app, "share") }
        holder.itemView.setOnClickListener { onAction(app, "detail") }
    }

    override fun getItemCount() = apps.size

    fun getSelectedPackages(): Set<String> = selectedPackages.toSet()

    fun clearSelection() {
        selectedPackages.clear()
        notifyDataSetChanged()
    }

    fun selectAll() {
        selectedPackages.clear()
        selectedPackages.addAll(apps.map { it.packageName })
        notifyDataSetChanged()
    }

    fun getSelectedApps(): List<AppInfoUtil.AppItem> {
        return apps.filter { selectedPackages.contains(it.packageName) }
    }
}
