package com.panda.logextractor;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Button;
import android.view.View;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class MainActivity extends Activity {
    private TextView logView;
    private ScrollView scrollView;
    private StringBuilder fullLog = new StringBuilder();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 创建布局
        android.widget.LinearLayout layout = new android.widget.LinearLayout(this);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setPadding(20, 20, 20, 20);

        // 标题
        TextView title = new TextView(this);
        title.setText("PandaSU 日志提取器 v1.0");
        title.setTextSize(20);
        title.setGravity(android.view.Gravity.CENTER);
        layout.addView(title);

        // 状态
        final TextView status = new TextView(this);
        status.setText("点击按钮提取日志");
        status.setPadding(0, 10, 0, 10);
        layout.addView(status);

        // 日志区域
        scrollView = new ScrollView(this);
        logView = new TextView(this);
        logView.setTextSize(10);
        logView.setHorizontallyScrolling(true);
        scrollView.addView(logView);
        layout.addView(scrollView);

        // 提取按钮
        Button extractBtn = new Button(this);
        extractBtn.setText("提取日志");
        extractBtn.setOnClickListener(v -> {
            status.setText("正在提取...");
            logView.setText("");
            fullLog.setLength(0);
            extractLogs();
            status.setText("提取完成！");
        });
        layout.addView(extractBtn);

        // 修复路径按钮
        Button fixBtn = new Button(this);
        fixBtn.setText("修复模块路径");
        fixBtn.setOnClickListener(v -> {
            status.setText("正在修复路径...");
            String result = fixModulePath();
            logView.setText(result);
            status.setText("修复完成！");
        });
        layout.addView(fixBtn);

        // 保存按钮
        Button saveBtn = new Button(this);
        saveBtn.setText("保存到 Downloads");
        saveBtn.setOnClickListener(v -> saveLog());
        layout.addView(saveBtn);

        setContentView(layout);
    }

    private String fixModulePath() {
        StringBuilder result = new StringBuilder();
        String modulePath = "/data/adb/modules/PandaSU-System-Helper";
        String wrongFile = modulePath + "/zygisk\\arm64-v8a\\libpanda.so";
        String correctDir = modulePath + "/zygisk/arm64-v8a";
        String correctFile = correctDir + "/libpanda.so";

        result.append("========== 修复模块路径 ==========\n");
        result.append("检查错误路径文件...\n");

        // 检查错误路径文件是否存在
        String check = execCommand("ls -la \"" + wrongFile + "\" 2>&1");
        result.append("错误路径检查: ").append(check).append("\n");

        if (!check.contains("No such file") && !check.contains("cannot access")) {
            result.append("找到错误路径文件，开始修复...\n");

            // 创建正确目录
            execCommand("mkdir -p \"" + correctDir + "\"");

            // 复制文件到正确位置
            String copyResult = execCommand("cp \"" + wrongFile + "\" \"" + correctFile + "\" 2>&1");
            result.append("复制结果: ").append(copyResult).append("\n");

            // 删除错误文件
            execCommand("rm -f \"" + wrongFile + "\"");

            // 验证
            String verify = execCommand("ls -la \"" + correctFile + "\" 2>&1");
            result.append("验证: ").append(verify).append("\n");
        } else {
            result.append("错误路径文件不存在，检查正确路径...\n");
            String correctCheck = execCommand("ls -la \"" + correctFile + "\" 2>&1");
            result.append("正确路径检查: ").append(correctCheck).append("\n");
        }

        result.append("========== 修复完成 ==========\n");
        return result.toString();
    }

    private void extractLogs() {
        appendLog("========== PandaSU 日志提取 ==========\n");
        appendLog("时间: " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date()) + "\n\n");

        // 模块状态
        appendLog("[1] 模块状态\n");
        appendLog(execCommand("ls -la /data/adb/modules/ 2>&1"));
        appendLog("\n");

        // 检查可能的 PandaSU 路径
        appendLog("[1.1] PandaSU 模块查找\n");
        appendLog(execCommand("find /data/adb/modules -name '*Panda*' -o -name '*panda*' 2>/dev/null | head -20"));
        appendLog("\n");

        // ZygiskNext
        appendLog("[2] ZygiskNext\n");
        appendLog(execCommand("ls -la /data/adb/modules/zygisksu/ 2>&1 | head -10"));
        appendLog("\n");

        // Logcat
        appendLog("[3] Logcat 日志 (panda/zygisk)\n");
        appendLog(execCommand("logcat -d -t 500 | grep -iE 'panda|zygisk' 2>&1"));
        appendLog("\n");

        // 系统属性
        appendLog("[4] 系统属性\n");
        appendLog("ro.debuggable: " + execCommand("getprop ro.debuggable").trim() + "\n");
        appendLog("ro.secure: " + execCommand("getprop ro.secure").trim() + "\n");
        appendLog("ro.build.tags: " + execCommand("getprop ro.build.tags").trim() + "\n");
        appendLog("\n");

        // AppList Detector 检测结果
        appendLog("[5] AppList Detector 相关\n");
        appendLog(execCommand("logcat -d -t 200 | grep -iE 'applist|detector|AppList' 2>&1"));
        appendLog("\n");

        appendLog("========== 提取完成 ==========");
        logView.setText(fullLog.toString());
        scrollView.post(() -> scrollView.fullScroll(View.FOCUS_DOWN));
    }

    private void saveLog() {
        try {
            File dir = new File("/storage/emulated/0/Download");
            if (!dir.exists()) dir = new File("/sdcard/Download");
            String filename = "panda_log_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()) + ".txt";
            File file = new File(dir, filename);

            FileWriter writer = new FileWriter(file);
            writer.write(fullLog.toString());
            writer.close();

            android.widget.Toast.makeText(this, "已保存: " + filename, android.widget.Toast.LENGTH_LONG).show();
        } catch (Exception e) {
            android.widget.Toast.makeText(this, "保存失败: " + e.getMessage(), android.widget.Toast.LENGTH_LONG).show();
        }
    }

    private void appendLog(String msg) {
        fullLog.append(msg);
    }

    private String execCommand(String cmd) {
        return execCommandSU(cmd);
    }

    private String execCommandSU(String cmd) {
        try {
            Process p = Runtime.getRuntime().exec("su -c " + cmd);
            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            StringBuilder result = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                result.append(line).append("\n");
            }
            p.waitFor();
            String output = result.toString();
            if (output.trim().isEmpty()) {
                // 可能没有root权限，试试不用su
                p = Runtime.getRuntime().exec(cmd);
                reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
                result.setLength(0);
                while ((line = reader.readLine()) != null) {
                    result.append(line).append("\n");
                }
                p.waitFor();
            }
            return result.toString();
        } catch (Exception e) {
            return "Error: " + e.getMessage() + "\n";
        }
    }
}