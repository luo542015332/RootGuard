package com.pandasu.turbo.widget

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.widget.RemoteViews
import android.app.PendingIntent
import android.content.Intent
import com.pandasu.turbo.GameManager
import com.pandasu.turbo.MainActivity
import com.pandasu.turbo.R

class TurboWidget : AppWidgetProvider() {

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        val gameManager = GameManager(context)
        val turboEnabled = gameManager.isTurboEnabled()

        for (appWidgetId in appWidgetIds) {
            val views = RemoteViews(context.packageName, R.layout.widget_turbo)

            views.setTextViewText(R.id.widget_turbo_text,
                if (turboEnabled) "已开启" else "点击开启"
            )
            views.setInt(R.id.widget_turbo_text, "setTextColor",
                if (turboEnabled) 0xFF00E676.toInt() else 0xFF888888.toInt()
            )

            val intent = Intent(context, MainActivity::class.java)
            val pendingIntent = PendingIntent.getActivity(
                context, 0, intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
            views.setOnClickPendingIntent(R.id.widget_turbo_text, pendingIntent)

            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}