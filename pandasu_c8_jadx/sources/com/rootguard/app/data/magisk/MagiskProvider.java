package com.rootguard.app.data.magisk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import com.rootguard.app.data.kernelsu.KernelSUService;
import com.rootguard.app.utils.Logger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: MagiskProvider.kt */
@Singleton
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\b\u0007\u0018\u0000 ;2\u00020\u0001:\u0001;B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u0011H\u0082@¢\u0006\u0002\u0010\u000fJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0086@¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H\u0086@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0019\u001a\u00020\u0011H\u0086@¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0015H\u0086@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u001c\u001a\u00020\u001dH\u0086@¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0015H\u0086@¢\u0006\u0002\u0010\u000fJ\u0016\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0011H\u0082@¢\u0006\u0002\u0010\"J\u0016\u0010#\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0011H\u0082@¢\u0006\u0002\u0010\"J\u0016\u0010$\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0011H\u0086@¢\u0006\u0002\u0010\"J\u0006\u0010%\u001a\u00020\u000eJ\u0010\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020(H\u0002J\u0018\u0010)\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010*\u001a\u00020+H\u0002J \u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u000eH\u0002J\u0018\u00100\u001a\u0004\u0018\u00010\u001f2\u0006\u0010.\u001a\u00020\u0011H\u0082@¢\u0006\u0002\u0010\"J\u0018\u00101\u001a\u00020\u000e2\b\b\u0002\u00102\u001a\u00020\u0011H\u0086@¢\u0006\u0002\u0010\"J\u001e\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u00112\u0006\u00105\u001a\u00020+H\u0086@¢\u0006\u0002\u00106J\u001e\u00107\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u00109J\u0016\u0010:\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u0011H\u0086@¢\u0006\u0002\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006<"}, d2 = {"Lcom/rootguard/app/data/magisk/MagiskProvider;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "kernelSUService", "Lcom/rootguard/app/data/kernelsu/KernelSUService;", "getKernelSUService", "()Lcom/rootguard/app/data/kernelsu/KernelSUService;", "kernelSUService$delegate", "Lkotlin/Lazy;", "clearLogs", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "detectRootType", "", "extractTimestamp", "line", "getAllInstalledApps", "", "Lcom/rootguard/app/data/magisk/InstalledAppInfo;", "getAppPolicies", "Lcom/rootguard/app/data/magisk/AppPolicy;", "getCurrentRootType", "getLogs", "Lcom/rootguard/app/data/magisk/MagiskLog;", "getMagiskVersion", "Lcom/rootguard/app/data/magisk/MagiskVersion;", "getModules", "Lcom/rootguard/app/data/magisk/MagiskModule;", "installKernelSUModule", "zipPath", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "installMagiskModule", "installModule", "isMagiskInstalled", "isSystemApp", "appInfo", "Landroid/content/pm/ApplicationInfo;", "parseLogLine", "id", "", "parseModuleProp", "content", "moduleId", "isEnabled", "readModuleInfo", "reboot", "target", "setAppPolicy", "packageName", "policy", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toggleModule", "enable", "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "uninstallModule", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class MagiskProvider {
    private static final String KERNELSU_DB_TIANN = "/data/data/com.tiann.kernelsu/databases/kernelsu.db";
    private static final String KERNELSU_DB_WEISHU = "/data/data/me.weishu.kernelsu/databases/app.db";
    private static final String KERNELSU_PACKAGE_TIANN = "com.tiann.kernelsu";
    private static final String KERNELSU_PACKAGE_WEISHU = "me.weishu.kernelsu";
    private static final List<String> KERNELSU_PATHS;
    private static final String MAGISK_AUTHORITY = "com.topjohnwu.magisk.provider";
    public static final String MAGISK_DB = "/data/adb/magisk.db";
    private static final Uri MAGISK_FILE_URI;
    private static final String MAGISK_PACKAGE = "com.topjohnwu.magisk";
    private static final Uri MAGISK_URI;
    public static final String MODULES_PATH = "/data/adb/modules";
    public static final String ROOT_TYPE_KERNELSU = "kernelsu";
    public static final String ROOT_TYPE_MAGISK = "magisk";
    private final Context context;

    /* renamed from: kernelSUService$delegate, reason: from kotlin metadata */
    private final Lazy kernelSUService;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault());

    @Inject
    public MagiskProvider(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.kernelSUService = LazyKt.lazy(new Function0<KernelSUService>() { // from class: com.rootguard.app.data.magisk.MagiskProvider$kernelSUService$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* renamed from: invoke, reason: merged with bridge method [inline-methods] */
            public final KernelSUService m0invoke() {
                return new KernelSUService(MagiskProvider.this.getContext());
            }
        });
    }

    public final Context getContext() {
        return this.context;
    }

    /* compiled from: MagiskProvider.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/rootguard/app/data/magisk/MagiskProvider$Companion;", "", "()V", "KERNELSU_DB_TIANN", "", "KERNELSU_DB_WEISHU", "KERNELSU_PACKAGE_TIANN", "KERNELSU_PACKAGE_WEISHU", "KERNELSU_PATHS", "", "MAGISK_AUTHORITY", "MAGISK_DB", "MAGISK_FILE_URI", "Landroid/net/Uri;", "getMAGISK_FILE_URI", "()Landroid/net/Uri;", "MAGISK_PACKAGE", "MAGISK_URI", "getMAGISK_URI", "MODULES_PATH", "ROOT_TYPE_KERNELSU", "ROOT_TYPE_MAGISK", "dateFormat", "Ljava/text/SimpleDateFormat;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Uri getMAGISK_URI() {
            return MagiskProvider.MAGISK_URI;
        }

        public final Uri getMAGISK_FILE_URI() {
            return MagiskProvider.MAGISK_FILE_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KernelSUService getKernelSUService() {
        return (KernelSUService) this.kernelSUService.getValue();
    }

    static {
        Uri parse = Uri.parse("content://com.topjohnwu.magisk.provider");
        Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
        MAGISK_URI = parse;
        Uri parse2 = Uri.parse("content://com.topjohnwu.magisk.provider/file");
        Intrinsics.checkNotNullExpressionValue(parse2, "parse(...)");
        MAGISK_FILE_URI = parse2;
        KERNELSU_PATHS = CollectionsKt.listOf(new String[]{"/data/adb/ksu", MODULES_PATH, "/dev/ksu", "/sys/kernel/ksu"});
    }

    public final boolean isMagiskInstalled() {
        try {
            this.context.getPackageManager().getPackageInfo(MAGISK_PACKAGE, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public final Object getCurrentRootType(Continuation<? super String> continuation) {
        return detectRootType(continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object detectRootType(Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$detectRootType$2(null), continuation);
    }

    public final Object getMagiskVersion(Continuation<? super MagiskVersion> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$getMagiskVersion$2(null), continuation);
    }

    public final Object getModules(Continuation<? super List<MagiskModule>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$getModules$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readModuleInfo(String moduleId, Continuation<? super MagiskModule> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$readModuleInfo$2(moduleId, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MagiskModule parseModuleProp(String content, String moduleId, boolean isEnabled) {
        int i;
        Integer intOrNull;
        String obj;
        Iterable $this$filter$iv = StringsKt.lines(content);
        Collection destination$iv$iv = new ArrayList();
        Iterator it = $this$filter$iv.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            Object element$iv$iv = it.next();
            String it2 = (String) element$iv$iv;
            if (StringsKt.contains$default(it2, "=", false, 2, (Object) null)) {
                destination$iv$iv.add(element$iv$iv);
            }
        }
        Iterable $this$associate$iv = (List) destination$iv$iv;
        int capacity$iv = RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault($this$associate$iv, 10)), 16);
        Map destination$iv$iv2 = new LinkedHashMap(capacity$iv);
        Iterator it3 = $this$associate$iv.iterator();
        while (true) {
            String str = "";
            if (!it3.hasNext()) {
                break;
            }
            String it4 = (String) it3.next();
            List parts = StringsKt.split$default(it4, new String[]{"="}, false, 2, 2, (Object) null);
            String obj2 = StringsKt.trim((String) parts.get(0)).toString();
            String str2 = (String) CollectionsKt.getOrNull(parts, 1);
            if (str2 != null && (obj = StringsKt.trim(str2).toString()) != null) {
                str = obj;
            }
            Pair pair = TuplesKt.to(obj2, str);
            destination$iv$iv2.put(pair.getFirst(), pair.getSecond());
        }
        String str3 = (String) destination$iv$iv2.get("name");
        String str4 = str3 == null ? moduleId : str3;
        String str5 = (String) destination$iv$iv2.get("version");
        String str6 = str5 == null ? "Unknown" : str5;
        String str7 = (String) destination$iv$iv2.get("versionCode");
        if (str7 != null && (intOrNull = StringsKt.toIntOrNull(str7)) != null) {
            i = intOrNull.intValue();
        }
        int i2 = i;
        String str8 = (String) destination$iv$iv2.get("author");
        String str9 = str8 == null ? "Unknown" : str8;
        String str10 = (String) destination$iv$iv2.get("description");
        return new MagiskModule(moduleId, str4, str6, i2, str9, str10 == null ? "" : str10, isEnabled);
    }

    public final Object toggleModule(String moduleId, boolean enable, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$toggleModule$2(moduleId, enable, null), continuation);
    }

    public final Object uninstallModule(String moduleId, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$uninstallModule$2(moduleId, null), continuation);
    }

    public final Object installModule(String zipPath, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$installModule$2(zipPath, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object installMagiskModule(String zipPath, Continuation<? super Boolean> continuation) {
        boolean z = false;
        try {
            Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", ROOT_TYPE_MAGISK, "--install-module", zipPath});
            process.waitFor();
            int exitCode = process.exitValue();
            if (exitCode != 0) {
                InputStream errorStream = process.getErrorStream();
                Intrinsics.checkNotNullExpressionValue(errorStream, "getErrorStream(...)");
                Reader inputStreamReader = new InputStreamReader(errorStream, Charsets.UTF_8);
                String error = TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
                Logger.e$default(Logger.INSTANCE, "Magisk install failed with exit code " + exitCode + ": " + error, (Throwable) null, 2, (Object) null);
            }
            if (exitCode == 0) {
                z = true;
            }
        } catch (Exception e) {
            Logger.INSTANCE.e("Failed to install via Magisk command", e);
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(19:26|(1:28)(1:84)|29|(2:30|(3:32|33|(2:36|37)(1:35))(2:82|83))|38|(2:40|(13:44|45|46|47|48|49|50|51|52|53|54|55|(2:57|58)(14:59|60|61|62|63|64|65|66|67|68|69|70|71|72)))|79|45|46|47|48|49|50|51|52|53|54|55|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0468, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0469, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x046b, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x038c A[Catch: Exception -> 0x02a3, TryCatch #3 {Exception -> 0x02a3, blocks: (B:33:0x0279, B:38:0x02af, B:40:0x02b6, B:42:0x02c2, B:45:0x02e7, B:50:0x0336, B:55:0x035a, B:57:0x038c, B:59:0x03cd, B:63:0x03df, B:67:0x040c, B:79:0x02d0), top: B:32:0x0279 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03cd A[Catch: Exception -> 0x02a3, TRY_LEAVE, TryCatch #3 {Exception -> 0x02a3, blocks: (B:33:0x0279, B:38:0x02af, B:40:0x02b6, B:42:0x02c2, B:45:0x02e7, B:50:0x0336, B:55:0x035a, B:57:0x038c, B:59:0x03cd, B:63:0x03df, B:67:0x040c, B:79:0x02d0), top: B:32:0x0279 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object installKernelSUModule(java.lang.String r27, kotlin.coroutines.Continuation<? super java.lang.Boolean> r28) {
        /*
            Method dump skipped, instructions count: 1151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.MagiskProvider.installKernelSUModule(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object getAppPolicies(Continuation<? super List<AppPolicy>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$getAppPolicies$2(this, null), continuation);
    }

    public final Object getAllInstalledApps(Continuation<? super List<InstalledAppInfo>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$getAllInstalledApps$2(this, null), continuation);
    }

    public final Object setAppPolicy(String packageName, int policy, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$setAppPolicy$2(this, packageName, policy, null), continuation);
    }

    public final Object getLogs(Continuation<? super List<MagiskLog>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$getLogs$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MagiskLog parseLogLine(String line, int id) {
        LogLevel level;
        String str;
        try {
            if (StringsKt.contains$default(line, " E ", false, 2, (Object) null)) {
                level = LogLevel.ERROR;
            } else if (StringsKt.contains$default(line, " W ", false, 2, (Object) null)) {
                level = LogLevel.WARNING;
            } else if (StringsKt.contains$default(line, " I ", false, 2, (Object) null)) {
                level = LogLevel.INFO;
            } else {
                level = StringsKt.contains$default(line, " D ", false, 2, (Object) null) ? LogLevel.DEBUG : LogLevel.INFO;
            }
            try {
                int messageStart = StringsKt.indexOf$default(line, "): ", 0, false, 6, (Object) null);
                if (messageStart != -1 && messageStart + 2 < line.length()) {
                    String substring = line.substring(messageStart + 2);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    str = StringsKt.trim(substring).toString();
                } else {
                    str = line;
                }
            } catch (Exception e) {
                str = line;
            }
            String message = str;
            String valueOf = String.valueOf(id);
            String extractTimestamp = extractTimestamp(line);
            if (extractTimestamp == null) {
                extractTimestamp = dateFormat.format(new Date());
            }
            Intrinsics.checkNotNull(extractTimestamp);
            return new MagiskLog(valueOf, message, level, extractTimestamp);
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(id);
            String take = StringsKt.take(line, 500);
            LogLevel logLevel = LogLevel.INFO;
            String format = dateFormat.format(new Date());
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            return new MagiskLog(valueOf2, take, logLevel, format);
        }
    }

    private final String extractTimestamp(String line) {
        Regex regex = new Regex("\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}");
        MatchResult find$default = Regex.find$default(regex, line, 0, 2, (Object) null);
        if (find$default != null) {
            return find$default.getValue();
        }
        return null;
    }

    public final Object clearLogs(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$clearLogs$2(null), continuation);
    }

    public static /* synthetic */ Object reboot$default(MagiskProvider magiskProvider, String str, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return magiskProvider.reboot(str, continuation);
    }

    public final Object reboot(String target, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MagiskProvider$reboot$2(target, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSystemApp(ApplicationInfo appInfo) {
        String sourceDir = appInfo.sourceDir;
        if (sourceDir == null) {
            sourceDir = "";
        }
        String packageName = appInfo.packageName;
        Intrinsics.checkNotNull(packageName);
        boolean isMiuiSystemApp = StringsKt.startsWith$default(packageName, "com.miui.", false, 2, (Object) null) || StringsKt.startsWith$default(packageName, "com.xiaomi.", false, 2, (Object) null) || StringsKt.startsWith$default(packageName, "com.android.", false, 2, (Object) null) || StringsKt.startsWith$default(packageName, "android.", false, 2, (Object) null) || StringsKt.startsWith$default(packageName, "com.google.android.", false, 2, (Object) null) || StringsKt.startsWith$default(packageName, "com.qualcomm.", false, 2, (Object) null) || StringsKt.startsWith$default(packageName, "com.mediatek.", false, 2, (Object) null) || StringsKt.startsWith$default(packageName, "com.sprd.", false, 2, (Object) null);
        if (isMiuiSystemApp) {
            return true;
        }
        if (StringsKt.startsWith$default(sourceDir, "/data/app/", false, 2, (Object) null)) {
            return false;
        }
        return StringsKt.startsWith$default(sourceDir, "/system/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/vendor/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/product/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/apex/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/oem/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/system_ext/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/system_root/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/data/app-private/", false, 2, (Object) null) || StringsKt.startsWith$default(sourceDir, "/data/app-asec/", false, 2, (Object) null);
    }
}
