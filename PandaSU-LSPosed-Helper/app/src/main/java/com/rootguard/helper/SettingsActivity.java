package com.rootguard.helper;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.LinearLayout;
import android.view.Gravity;

public class SettingsActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setGravity(Gravity.CENTER);
        layout.setPadding(50, 50, 50, 50);

        TextView title = new TextView(this);
        title.setText("PandaSU LSPosed Helper");
        title.setTextSize(24);
        title.setGravity(Gravity.CENTER);
        layout.addView(title);

        TextView desc = new TextView(this);
        desc.setText("\n此模块由 LSPosed 管理器控制\n\n功能：\n• 隐藏 Root/Magisk 相关包名\n• Hook PackageManager API\n• 过滤敏感应用列表\n\n在 LSPosed 管理器中启用并设置作用域");
        desc.setTextSize(16);
        desc.setGravity(Gravity.LEFT);
        layout.addView(desc);

        setContentView(layout);
    }
}
