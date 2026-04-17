package com.pandasu.turbo.ui.toolkit

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.appcompat.app.AlertDialog
import androidx.cardview.widget.CardView
import androidx.fragment.app.Fragment
import com.pandasu.turbo.R
import com.pandasu.turbo.ui.HistoryActivity
import com.pandasu.turbo.ui.InstalledGamesActivity
import com.pandasu.turbo.ui.ProfileListActivity
import com.pandasu.turbo.util.BatteryUtil
import com.pandasu.turbo.util.ShizukuHelper
import com.pandasu.turbo.util.SystemInfoUtil
import kotlinx.coroutines.*
import androidx.lifecycle.lifecycleScope

// ==================== 首页 Fragment ====================

class HomeFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View {
        return ScrollView(requireContext()).apply {
            val ctx = requireContext()
            setPadding(dp(16), dp(16), dp(16), dp(16))

            val layout = LinearLayout(ctx).apply { orientation = android.widget.LinearLayout.VERTICAL }

            // 设备状态卡片
            layout.addView(buildStatusCard(ctx))
            // 快捷工具
            layout.addView(buildQuickToolsSection(ctx))

            addView(layout)
        }
    }

    private fun buildStatusCard(ctx: android.content.Context): View {
        val card = CardView(ctx).apply {
            radius = 12f
            setCardBackgroundColor(0xFFE3F2FD.toInt())
            cardElevation = 4f
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(16) }
        }

        val inner = LinearLayout(ctx).apply {
            orientation = android.widget.LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
        }

        inner.addView(TextView(ctx).apply {
            text = "📊 设备状态"
            textSize = 18f
            paint.isFakeBoldText = true
            setPadding(0, 0, 0, dp(8))
        })

        val memRow = statusRow(ctx, "内存", "加载中...")
        val storageRow = statusRow(ctx, "存储", "加载中...")

        inner.addView(memRow)
        inner.addView(storageRow)
        card.addView(inner)

        // 异步加载（使用 lifecycleScope，Fragment 销毁时自动取消）
        lifecycleScope.launch {
            try {
                val mem = withContext(Dispatchers.IO) {
                    SystemInfoUtil.getMemoryInfo(requireContext())
                }
                val storage = withContext(Dispatchers.IO) {
                    SystemInfoUtil.getStorageInfo()
                }
                if (context != null) {
                    val memText = (memRow as ViewGroup).getChildAt(1) as? TextView
                    memText?.text = mem.usedRamStr + " / " + mem.totalRamStr
                    val storageText = (storageRow as ViewGroup).getChildAt(1) as? TextView
                    storageText?.text = storage.internalUsedStr + " / " + storage.internalTotalStr
                }
            } catch (e: Exception) { }
        }

        return card
    }

    private fun statusRow(ctx: android.content.Context, label: String, value: String): View {
        return LinearLayout(ctx).apply {
            orientation = android.widget.LinearLayout.HORIZONTAL
            setPadding(0, dp(4), 0, dp(4))
            addView(TextView(ctx).apply {
                text = "$label: "
                setTextColor(Color.GRAY)
                layoutParams = LinearLayout.LayoutParams(
                    0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f
                )
            })
            addView(TextView(ctx).apply {
                text = value
                setTextColor(Color.BLACK)
            })
        }
    }

    private fun buildQuickToolsSection(ctx: android.content.Context): View {
        val root = LinearLayout(ctx).apply { orientation = android.widget.LinearLayout.VERTICAL }

        root.addView(TextView(ctx).apply {
            text = "⚡ 快捷工具"
            textSize = 16f
            paint.isFakeBoldText = true
            setPadding(0, 0, 0, dp(8))
        })

        val tools = listOf(
            ToolItem("📱", "系统信息", "设备/CPU/内存/存储/传感器", SystemInfoActivity::class.java),
            ToolItem("🔥", "温控/性能", "CPU调度/频率/动画/预加载", ThermalControlActivity::class.java),
            ToolItem("🔋", "电池健康", "循环次数/容量/充电数据", BatteryInfoActivity::class.java),
            ToolItem("🌐", "网络工具", "WiFi详情/DNS/测速/5G", NetworkToolsActivity::class.java),
            ToolItem("📺", "显示设置", "刷新率/亮度/AOD/DC调光", DisplaySettingsActivity::class.java),
            ToolItem("📦", "应用管理", "强制停止/卸载/禁用/权限", AppManagerActivity::class.java),
            ToolItem("🧹", "清理工具", "缓存分析/大文件/进程", CleanerActivity::class.java),
            ToolItem("🛡️", "广告屏蔽", "系统广告/应用广告/hosts", AdBlockerActivity::class.java),
            ToolItem("🛠️", "开发者工具", "ADB命令/SELinux/getprop", DevToolsActivity::class.java)
        )

        tools.forEach { tool ->
            val card = CardView(ctx).apply {
                radius = 8f
                setCardBackgroundColor(0xFFFFFFFF.toInt())
                cardElevation = 2f
                layoutParams = LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply { bottomMargin = dp(8) }
                isClickable = true
                isFocusable = true
                setOnClickListener {
                    startActivity(Intent(ctx, tool.clazz))
                }
            }

            val inner = LinearLayout(ctx).apply {
                orientation = android.widget.LinearLayout.HORIZONTAL
                setPadding(dp(16), dp(12), dp(16), dp(12))
                gravity = Gravity.CENTER_VERTICAL
            }

            inner.addView(TextView(ctx).apply {
                text = tool.icon
                textSize = 24f
                layoutParams = LinearLayout.LayoutParams(dp(48), dp(48))
            })

            inner.addView(LinearLayout(ctx).apply {
                orientation = android.widget.LinearLayout.VERTICAL
                layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
                addView(TextView(ctx).apply {
                    text = tool.name
                    textSize = 15f
                    paint.isFakeBoldText = true
                })
                addView(TextView(ctx).apply {
                    text = tool.desc
                    textSize = 12f
                    setTextColor(Color.GRAY)
                })
            })

            inner.addView(TextView(ctx).apply {
                text = "›"
                textSize = 24f
                setTextColor(Color.LTGRAY)
            })

            card.addView(inner)
            root.addView(card)
        }

        return root
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()
}

data class ToolItem(
    val icon: String,
    val name: String,
    val desc: String,
    val clazz: Class<*>
)

// ==================== 工具箱 Fragment ====================

class ToolsFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View {
        return ScrollView(requireContext()).apply {
            val ctx = requireContext()
            setPadding(dp(16), dp(16), dp(16), dp(16))

            val layout = LinearLayout(ctx).apply { orientation = android.widget.LinearLayout.VERTICAL }

            val categories = listOf(
                CategoryItem("⚡ 性能 / 温控", listOf(
                    ToolItem("🔥", "温控管理", "解除温控墙 / 极致性能模式 / CPU调频 / 动画", ThermalControlActivity::class.java),
                    ToolItem("🖥️", "显示设置", "刷新率 / 亮度 / AOD / DC调光 / 锁屏时间", DisplaySettingsActivity::class.java)
                )),
                CategoryItem("🔋 电池 / 充电", listOf(
                    ToolItem("🔋", "电池信息", "循环次数 / 健康度 / 充电电流 / 快充控制", BatteryInfoActivity::class.java)
                )),
                CategoryItem("🌐 网络 / 通知", listOf(
                    ToolItem("🌐", "网络工具", "WiFi详情 / DNS / 公网IP / 5G开关 / 测速", NetworkToolsActivity::class.java)
                )),
                CategoryItem("📱 系统信息", listOf(
                    ToolItem("📱", "系统信息", "设备 / CPU / 内存 / 存储 / 屏幕 / 传感器 / SELinux", SystemInfoActivity::class.java)
                )),
                CategoryItem("📦 应用管理", listOf(
                    ToolItem("📦", "应用管理", "强制停止 / 卸载 / 禁用 / 应用详情 / 权限审计", AppManagerActivity::class.java)
                )),
                CategoryItem("🧹 清理工具", listOf(
                    ToolItem("🧹", "清理工具", "缓存分析 / 全局清理 / 大文件扫描 / 后台进程清理", CleanerActivity::class.java)
                )),
                CategoryItem("🛠️ 开发者工具", listOf(
                    ToolItem("🛠️", "开发者工具", "ADB命令执行 / logcat日志 / SELinux / getprop / 系统更新阻止", DevToolsActivity::class.java)
                ))
            )

            categories.forEach { cat ->
                layout.addView(TextView(ctx).apply {
                    text = cat.title
                    textSize = 15f
                    paint.isFakeBoldText = true
                    setPadding(0, dp(12), 0, dp(4))
                    setTextColor(0xFF1976D2.toInt())
                })

                cat.tools.forEach { tool ->
                    val card = CardView(ctx).apply {
                        radius = 8f
                        setCardBackgroundColor(0xFFFFFFFF.toInt())
                        cardElevation = 2f
                        layoutParams = LinearLayout.LayoutParams(
                            ViewGroup.LayoutParams.MATCH_PARENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT
                        ).apply { bottomMargin = dp(8) }
                        isClickable = true
                        isFocusable = true
                        setOnClickListener { startActivity(Intent(ctx, tool.clazz)) }
                    }

                    val inner = LinearLayout(ctx).apply {
                        orientation = android.widget.LinearLayout.HORIZONTAL
                        setPadding(dp(16), dp(12), dp(16), dp(12))
                        gravity = Gravity.CENTER_VERTICAL
                    }

                    inner.addView(TextView(ctx).apply {
                        text = tool.icon
                        textSize = 24f
                        layoutParams = LinearLayout.LayoutParams(dp(48), dp(48))
                    })

                    inner.addView(LinearLayout(ctx).apply {
                        orientation = android.widget.LinearLayout.VERTICAL
                        layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
                        addView(TextView(ctx).apply {
                            text = tool.name
                            textSize = 15f
                            paint.isFakeBoldText = true
                        })
                        addView(TextView(ctx).apply {
                            text = tool.desc
                            textSize = 12f
                            setTextColor(Color.GRAY)
                        })
                    })

                    inner.addView(TextView(ctx).apply {
                        text = "›"
                        textSize = 24f
                        setTextColor(Color.LTGRAY)
                    })

                    card.addView(inner)
                    layout.addView(card)
                }
            }

            addView(layout)
        }
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()
}

data class CategoryItem(val title: String, val tools: List<ToolItem>)

// ==================== 游戏 Fragment ====================

class GamesFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View {
        return ScrollView(requireContext()).apply {
            val ctx = requireContext()
            setPadding(dp(16), dp(16), dp(16), dp(16))

            val layout = LinearLayout(ctx).apply { orientation = android.widget.LinearLayout.VERTICAL }

            // 游戏优化大卡片
            val turboCard = CardView(ctx).apply {
                radius = 16f
                setCardBackgroundColor(0xFFFF5722.toInt())
                cardElevation = 8f
                layoutParams = LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply { bottomMargin = dp(16) }
                isClickable = true
                setOnClickListener {
                    startActivity(Intent(ctx, InstalledGamesActivity::class.java))
                }
            }

            val turboInner = LinearLayout(ctx).apply {
                orientation = android.widget.LinearLayout.VERTICAL
                gravity = Gravity.CENTER
                setPadding(dp(24), dp(24), dp(24), dp(24))
            }

            turboInner.addView(TextView(ctx).apply {
                text = "🎮 游戏优化"
                textSize = 24f
                paint.isFakeBoldText = true
                setTextColor(0xFFFFFFFF.toInt())
                gravity = Gravity.CENTER
            })
            turboInner.addView(TextView(ctx).apply {
                text = "自动检测游戏 / 一键优化 / 性能监控"
                textSize = 14f
                setTextColor(0xCCFFFFFF.toInt())
                gravity = Gravity.CENTER
                setPadding(0, dp(8), 0, dp(8))
            })
            turboInner.addView(TextView(ctx).apply {
                text = "点击进入 →"
                textSize = 16f
                setTextColor(0xFFFFFFFF.toInt())
                gravity = Gravity.CENTER
            })

            turboCard.addView(turboInner)
            layout.addView(turboCard)

            // 其他游戏相关入口
            layout.addView(TextView(ctx).apply {
                text = "📋 游戏配置"
                textSize = 15f
                paint.isFakeBoldText = true
                setPadding(0, 0, 0, dp(8))
            })

            val gameLinks = listOf(
                Pair("📁 配置文件列表", ProfileListActivity::class.java),
                Pair("📱 已装游戏列表", InstalledGamesActivity::class.java),
                Pair("📜 使用历史记录", HistoryActivity::class.java)
            )

            gameLinks.forEach { (title, clazz) ->
                layout.addView(CardView(ctx).apply {
                    radius = 8f
                    setCardBackgroundColor(0xFFFFFFFF.toInt())
                    cardElevation = 2f
                    layoutParams = LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT
                    ).apply { bottomMargin = dp(8) }
                    isClickable = true
                    isFocusable = true
                    setOnClickListener { startActivity(Intent(ctx, clazz)) }

                    addView(LinearLayout(ctx).apply {
                        orientation = android.widget.LinearLayout.HORIZONTAL
                        setPadding(dp(16), dp(14), dp(16), dp(14))
                        gravity = Gravity.CENTER_VERTICAL
                        addView(TextView(ctx).apply {
                            text = title
                            textSize = 15f
                            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
                        })
                        addView(TextView(ctx).apply {
                            text = "›"
                            textSize = 24f
                            setTextColor(Color.LTGRAY)
                        })
                    })
                })
            }

            addView(layout)
        }
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()
}

// ==================== 设置 Fragment ====================

class SettingsFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View {
        return ScrollView(requireContext()).apply {
            val ctx = requireContext()
            setPadding(dp(16), dp(16), dp(16), dp(16))

            val layout = LinearLayout(ctx).apply { orientation = android.widget.LinearLayout.VERTICAL }

            // Shizuku 状态卡片
            val shizukuStatus = when (ShizukuHelper.checkStatus()) {
                ShizukuHelper.STATUS_SHIZUKU_READY -> "✅ 已授权"
                ShizukuHelper.STATUS_SHIZUKU_NEED_PERMISSION -> "⚠️ 需授权"
                else -> "❌ 未安装"
            }
            val shizukuColor = when (ShizukuHelper.checkStatus()) {
                ShizukuHelper.STATUS_SHIZUKU_READY -> 0xFF4CAF50.toInt()
                ShizukuHelper.STATUS_SHIZUKU_NEED_PERMISSION -> 0xFFFF9800.toInt()
                else -> 0xFFE53935.toInt()
            }
            val needsAuth = ShizukuHelper.checkStatus() != ShizukuHelper.STATUS_SHIZUKU_READY

            layout.addView(CardView(ctx).apply {
                radius = 8f
                setCardBackgroundColor(0xFFFFFFFF.toInt())
                cardElevation = 2f
                layoutParams = LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply { bottomMargin = dp(12) }

                addView(LinearLayout(ctx).apply {
                    orientation = android.widget.LinearLayout.VERTICAL
                    setPadding(dp(16), dp(12), dp(16), dp(12))

                    addView(TextView(ctx).apply {
                        text = "Shizuku 授权状态"
                        textSize = 15f
                        paint.isFakeBoldText = true
                    })
                    addView(TextView(ctx).apply {
                        text = shizukuStatus
                        textSize = 13f
                        setTextColor(shizukuColor)
                        setPadding(0, dp(4), 0, dp(8))
                    })

                    if (needsAuth) {
                        addView(Button(ctx).apply {
                            text = "请求 Shizuku 授权"
                            setOnClickListener {
                                try {
                                    ShizukuHelper.requestShizukuPermission(1001)
                                } catch (e: Exception) {
                                    Toast.makeText(ctx, "请先安装 Shizuku", Toast.LENGTH_SHORT).show()
                                }
                            }
                        })
                    }
                })
            })

            // 语言设置
            layout.addView(CardView(ctx).apply {
                radius = 8f
                setCardBackgroundColor(0xFFFFFFFF.toInt())
                cardElevation = 2f
                layoutParams = LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply { bottomMargin = dp(12) }

                addView(LinearLayout(ctx).apply {
                    orientation = android.widget.LinearLayout.VERTICAL
                    setPadding(dp(16), dp(12), dp(16), dp(12))

                    addView(TextView(ctx).apply {
                        text = "语言设置"
                        textSize = 15f
                        paint.isFakeBoldText = true
                    })
                    addView(Spinner(ctx).apply {
                        adapter = android.widget.ArrayAdapter(
                            ctx,
                            android.R.layout.simple_spinner_dropdown_item,
                            arrayOf("跟随系统", "简体中文", "English")
                        )
                        onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
                            override fun onItemSelected(p: AdapterView<*>?, v: View?, pos: Int, id: Long) {
                                val prefs = ctx.getSharedPreferences("toolkit_prefs", android.content.Context.MODE_PRIVATE)
                                prefs.edit().putInt("language", pos).apply()
                                Toast.makeText(ctx, "语言已切换，重启应用后生效", Toast.LENGTH_SHORT).show()
                            }
                            override fun onNothingSelected(p: AdapterView<*>?) {}
                        }
                    })
                })
            })

            // 使用历史
            layout.addView(CardView(ctx).apply {
                radius = 8f
                setCardBackgroundColor(0xFFFFFFFF.toInt())
                cardElevation = 2f
                layoutParams = LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply { bottomMargin = dp(12) }
                isClickable = true
                isFocusable = true
                setOnClickListener {
                    startActivity(Intent(ctx, HistoryActivity::class.java))
                }

                addView(LinearLayout(ctx).apply {
                    orientation = android.widget.LinearLayout.HORIZONTAL
                    setPadding(dp(16), dp(14), dp(16), dp(14))
                    gravity = Gravity.CENTER_VERTICAL
                    addView(TextView(ctx).apply {
                        text = "📜 使用历史记录"
                        textSize = 15f
                        layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
                    })
                    addView(TextView(ctx).apply {
                        text = "›"
                        textSize = 24f
                        setTextColor(Color.LTGRAY)
                    })
                })
            })

            // 关于
            layout.addView(CardView(ctx).apply {
                radius = 8f
                setCardBackgroundColor(0xFFFFFFFF.toInt())
                cardElevation = 2f

                addView(LinearLayout(ctx).apply {
                    orientation = android.widget.LinearLayout.VERTICAL
                    setPadding(dp(16), dp(12), dp(16), dp(12))

                    addView(TextView(ctx).apply {
                        text = "关于澎湃工具箱"
                        textSize = 15f
                        paint.isFakeBoldText = true
                    })
                    addView(TextView(ctx).apply {
                        text = "版本: 3.2.2\n" +
                                "基于 Shizuku 的免 Root 安卓工具箱\n" +
                                "支持: Android 9+\n\n" +
                                "本工具仅供学习和个人使用。"
                        textSize = 12f
                        setTextColor(Color.GRAY)
                        setPadding(0, dp(4), 0, 0)
                    })
                })
            })

            addView(layout)
        }
    }

    private fun dp(v: Int) = (v * resources.displayMetrics.density).toInt()
}
