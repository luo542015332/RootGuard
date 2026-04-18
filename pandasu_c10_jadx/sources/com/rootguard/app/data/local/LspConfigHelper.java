package com.rootguard.app.data.local;

import com.rootguard.app.data.model.IsolationConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Iterator;
import java.util.List;

/* compiled from: LspConfigHelper.kt */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class LspConfigHelper {
    private static boolean denyListEnabled;
    private static boolean propSpoofEnabled;

    static {
        try {
            File file = new File("/data/user/0/com.rootguard.app/files/lsp_config.json");
            if (file.exists()) {
                return;
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                } else {
                    sb.append(readLine);
                }
            }
            bufferedReader.close();
            String sb2 = sb.toString();
            if (sb2.contains("denyListEnabled\":true")) {
                denyListEnabled = true;
            }
            if (sb2.contains("propSpoofEnabled\":true")) {
                propSpoofEnabled = true;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.StringBuilder, java.lang.String] */
    public static final void exportConfig(List list) {
        try {
            StringBuilder append = new StringBuilder().append("{\"enabledPackages\":[");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                IsolationConfig isolationConfig = (IsolationConfig) it.next();
                if (append.length() > 18) {
                    append = append.append(",");
                }
                append = append.append("{\"packageName\":\"").append(isolationConfig.getPackageName()).append("\",\"isolateStorage\":").append(isolationConfig.getIsolateStorage() ? "true" : "false").append("}");
            }
            ?? append2 = append.append("],\"denyListEnabled\":").append(denyListEnabled ? "true" : "false").append(",\"propSpoofEnabled\":").append(propSpoofEnabled ? "true" : "false").append("}");
            new File("/data/user/0/com.rootguard.app/files").mkdirs();
            FileWriter fileWriter = new FileWriter(new File("/data/user/0/com.rootguard.app/files/lsp_config.json"));
            fileWriter.write((String) append2);
            fileWriter.close();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.StringBuilder, java.lang.String] */
    public static final void exportSingleConfig(IsolationConfig isolationConfig) {
        try {
            ?? append = new StringBuilder().append("{\"enabledPackages\":[{\"packageName\":\"").append(isolationConfig.getPackageName()).append("\",\"isolateStorage\":").append(isolationConfig.getIsolateStorage() ? "true" : "false").append("],\"denyListEnabled\":").append(denyListEnabled ? "true" : "false").append(",\"propSpoofEnabled\":").append(propSpoofEnabled ? "true" : "false").append("}");
            new File("/data/user/0/com.rootguard.app/files").mkdirs();
            FileWriter fileWriter = new FileWriter(new File("/data/user/0/com.rootguard.app/files/lsp_config.json"));
            fileWriter.write((String) append);
            fileWriter.close();
        } catch (Throwable unused) {
        }
    }

    public static final boolean getDenyListEnabled() {
        return denyListEnabled;
    }

    public static final boolean getPropSpoofEnabled() {
        return propSpoofEnabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.StringBuilder, java.lang.String] */
    public static final void setDenyListEnabled(boolean z) {
        denyListEnabled = z;
        try {
            ?? append = new StringBuilder().append("{\"enabledPackages\":[],\"denyListEnabled\":").append(z ? "true" : "false").append(",\"propSpoofEnabled\":").append(propSpoofEnabled ? "true" : "false").append("}");
            new File("/data/user/0/com.rootguard.app/files").mkdirs();
            FileWriter fileWriter = new FileWriter(new File("/data/user/0/com.rootguard.app/files/lsp_config.json"));
            fileWriter.write((String) append);
            fileWriter.close();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.StringBuilder, java.lang.String] */
    public static final void setPropSpoofEnabled(boolean z) {
        propSpoofEnabled = z;
        try {
            ?? append = new StringBuilder().append("{\"enabledPackages\":[],\"denyListEnabled\":").append(denyListEnabled ? "true" : "false").append(",\"propSpoofEnabled\":").append(z ? "true" : "false").append("}");
            new File("/data/user/0/com.rootguard.app/files").mkdirs();
            FileWriter fileWriter = new FileWriter(new File("/data/user/0/com.rootguard.app/files/lsp_config.json"));
            fileWriter.write((String) append);
            fileWriter.close();
        } catch (Throwable unused) {
        }
    }
}
