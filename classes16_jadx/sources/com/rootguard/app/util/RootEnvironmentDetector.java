package com.rootguard.app.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.rootguard.app.utils.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: RootEnvironmentDetector.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0002 !B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0006\u0010\f\u001a\u00020\u0006J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u0004H\u0086@¢\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0004J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\u0006\u0010\u0019\u001a\u00020\u0004J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\u0016\u0010\u001d\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\""}, d2 = {"Lcom/rootguard/app/util/RootEnvironmentDetector;", "", "()V", "checkUpdateRelatedFailure", "", "rootMode", "Lcom/rootguard/app/util/RootEnvironmentDetector$RootMode;", "hasPermission", "managerPackage", "", "context", "Landroid/content/Context;", "detectRootMode", "execAsRoot", "command", "fixAuthorizationIssue", "getAuthorizationStatus", "Lcom/rootguard/app/util/RootEnvironmentDetector$AuthorizationStatus;", "getRootManagerName", "getRootManagerPackage", "hasRootPermission", "hasRootPermissionAsync", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasRootPermissionFast", "isKernelSUAvailable", "isLSPosedModuleActive", "isMagiskAvailable", "isPandaSUStandalone", "isZygiskModeAvailable", "openRootManager", "showAuthorizationFixGuide", "", "AuthorizationStatus", "RootMode", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class RootEnvironmentDetector {
    public static final int $stable = 0;
    public static final RootEnvironmentDetector INSTANCE = new RootEnvironmentDetector();

    /* compiled from: RootEnvironmentDetector.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RootMode.values().length];
            try {
                iArr[RootMode.KERNELSU.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[RootMode.MAGISK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[RootMode.STANDALONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[RootMode.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private RootEnvironmentDetector() {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: RootEnvironmentDetector.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/rootguard/app/util/RootEnvironmentDetector$RootMode;", "", "(Ljava/lang/String;I)V", "KERNELSU", "MAGISK", "STANDALONE", "UNKNOWN", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final class RootMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RootMode[] $VALUES;
        public static final RootMode KERNELSU = new RootMode("KERNELSU", 0);
        public static final RootMode MAGISK = new RootMode("MAGISK", 1);
        public static final RootMode STANDALONE = new RootMode("STANDALONE", 2);
        public static final RootMode UNKNOWN = new RootMode("UNKNOWN", 3);

        private static final /* synthetic */ RootMode[] $values() {
            return new RootMode[]{KERNELSU, MAGISK, STANDALONE, UNKNOWN};
        }

        public static EnumEntries<RootMode> getEntries() {
            return $ENTRIES;
        }

        public static RootMode valueOf(String str) {
            return (RootMode) Enum.valueOf(RootMode.class, str);
        }

        public static RootMode[] values() {
            return (RootMode[]) $VALUES.clone();
        }

        private RootMode(String $enum$name, int $enum$ordinal) {
        }

        static {
            RootMode[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }
    }

    public final RootMode detectRootMode() {
        try {
            if (!hasRootPermission()) {
                Logger.INSTANCE.d("No root permission detected");
                return RootMode.UNKNOWN;
            }
            boolean isKernelSU = isKernelSUAvailable();
            boolean isMagisk = isMagiskAvailable();
            Logger.INSTANCE.d("Root detection results: KernelSU=" + isKernelSU + ", Magisk=" + isMagisk);
            if (isKernelSU && isMagisk) {
                Logger.INSTANCE.d("Both KernelSU and Magisk detected, using KernelSU mode");
                return RootMode.KERNELSU;
            }
            if (isKernelSU) {
                Logger.INSTANCE.d("KernelSU detected");
                return RootMode.KERNELSU;
            }
            if (isMagisk) {
                Logger.INSTANCE.d("Magisk detected");
                return RootMode.MAGISK;
            }
            if (isPandaSUStandalone()) {
                Logger.INSTANCE.d("PandaSU standalone mode detected");
                return RootMode.STANDALONE;
            }
            Logger.INSTANCE.d("Root permission exists but no manager detected. Checking for special cases...");
            if (isLSPosedModuleActive()) {
                Logger.INSTANCE.d("LSPosed module active, using LSPosed mode");
                return RootMode.STANDALONE;
            }
            if (isZygiskModeAvailable()) {
                Logger.INSTANCE.d("Zygisk mode detected");
                return RootMode.STANDALONE;
            }
            Logger.INSTANCE.d("Using standalone mode as fallback");
            return RootMode.STANDALONE;
        } catch (Exception e) {
            Logger.INSTANCE.e("Failed to detect root mode", e);
            if (hasRootPermission()) {
                Logger.INSTANCE.d("Exception occurred but root permission exists, using standalone mode as safe fallback");
                return RootMode.STANDALONE;
            }
            return RootMode.UNKNOWN;
        }
    }

    private final String execAsRoot(String command) {
        try {
            Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", command});
            InputStream inputStream = process.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
            String obj = StringsKt.trim(TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192))).toString();
            process.waitFor();
            return obj;
        } catch (Exception e) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0119 A[LOOP:3: B:150:0x00c0->B:167:0x0119, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0227 A[Catch: Exception -> 0x0244, TryCatch #9 {Exception -> 0x0244, blocks: (B:40:0x021b, B:42:0x0227, B:44:0x022f), top: B:39:0x021b }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x032d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x033c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0347 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x024e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean isKernelSUAvailable() {
        /*
            Method dump skipped, instructions count: 918
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.util.RootEnvironmentDetector.isKernelSUAvailable():boolean");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(35:1|2|3|4|(1:6)(1:134)|7|8|9|(2:108|(2:109|(9:111|112|113|114|115|116|117|118|(2:121|122)(1:120))(2:129|130)))(1:13)|14|15|(1:17)(1:107)|18|19|20|(2:81|(2:82|(9:84|85|86|87|88|89|90|91|(2:94|95)(1:93))(2:102|103)))(1:24)|25|26|(3:30|(1:32)(1:76)|(15:34|35|36|37|(1:39)(1:72)|40|(3:64|65|(1:67)(1:68))(1:42)|43|(5:51|(1:54)|(1:62)(1:57)|58|59)|63|(1:54)|(0)|62|58|59))|78|35|36|37|(0)(0)|40|(0)(0)|43|(6:51|(0)|(0)|62|58|59)|63|(0)|(0)|62|58|59|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0152, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0083 A[LOOP:1: B:109:0x0050->B:120:0x0083, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0157 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0109 A[LOOP:0: B:82:0x00d6->B:93:0x0109, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0107 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean isMagiskAvailable() {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.util.RootEnvironmentDetector.isMagiskAvailable():boolean");
    }

    private final boolean isPandaSUStandalone() {
        try {
            return new File("/data/pandasu/pandasu.db").exists();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(2:2|3)|(6:(2:5|(14:7|8|9|(1:11)(1:40)|(3:13|(1:15)(1:37)|(9:17|18|19|20|21|22|(1:26)|27|28))|39|18|19|20|21|22|(1:26)|27|28))|21|22|(0)|27|28)|44|8|9|(0)(0)|(0)|39|18|19|20|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(14:1|2|3|(6:(2:5|(14:7|8|9|(1:11)(1:40)|(3:13|(1:15)(1:37)|(9:17|18|19|20|21|22|(1:26)|27|28))|39|18|19|20|21|22|(1:26)|27|28))|21|22|(0)|27|28)|44|8|9|(0)(0)|(0)|39|18|19|20|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006f, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x005b, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0042 A[Catch: Exception -> 0x005a, TRY_LEAVE, TryCatch #2 {Exception -> 0x005a, blocks: (B:9:0x002f, B:13:0x0042), top: B:8:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean isZygiskModeAvailable() {
        /*
            r8 = this;
            r0 = 1
            r1 = 0
            java.lang.String r2 = "getprop ro.dalvik.vm.native.bridge"
            java.lang.String r2 = r8.execAsRoot(r2)     // Catch: java.lang.Exception -> L2b
            r3 = r2
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L2b
            java.lang.String r4 = "zygisk"
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.Exception -> L2b
            r5 = 0
            r6 = 2
            boolean r3 = kotlin.text.StringsKt.contains$default(r3, r4, r1, r6, r5)     // Catch: java.lang.Exception -> L2b
            if (r3 != 0) goto L29
            r3 = r2
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L2b
            java.lang.String r4 = "Zygisk"
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4     // Catch: java.lang.Exception -> L2b
            boolean r3 = kotlin.text.StringsKt.contains$default(r3, r4, r1, r6, r5)     // Catch: java.lang.Exception -> L2b
            if (r3 == 0) goto L27
            goto L29
        L27:
            r2 = r1
            goto L2d
        L29:
            r2 = r0
            goto L2d
        L2b:
            r2 = move-exception
            r2 = r1
        L2d:
            java.lang.String r3 = "ls -la /data/adb/zygisk 2>/dev/null"
            java.lang.String r3 = r8.execAsRoot(r3)     // Catch: java.lang.Exception -> L5a
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L5a
            int r3 = r3.length()     // Catch: java.lang.Exception -> L5a
            if (r3 <= 0) goto L3f
            r3 = r0
            goto L40
        L3f:
            r3 = r1
        L40:
            if (r3 != 0) goto L58
            java.lang.String r3 = "ls -la /data/adb/modules/zygisk 2>/dev/null"
            java.lang.String r3 = r8.execAsRoot(r3)     // Catch: java.lang.Exception -> L5a
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> L5a
            int r3 = r3.length()     // Catch: java.lang.Exception -> L5a
            if (r3 <= 0) goto L52
            r3 = r0
            goto L53
        L52:
            r3 = r1
        L53:
            if (r3 == 0) goto L56
            goto L58
        L56:
            r3 = r1
            goto L5c
        L58:
            r3 = r0
            goto L5c
        L5a:
            r3 = move-exception
            r3 = r1
        L5c:
            java.lang.String r4 = "ps -A | grep -i zygisk"
            java.lang.String r4 = r8.execAsRoot(r4)     // Catch: java.lang.Exception -> L6e
            r5 = r4
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.Exception -> L6e
            boolean r5 = kotlin.text.StringsKt.isBlank(r5)     // Catch: java.lang.Exception -> L6e
            r4 = r5 ^ 1
            goto L70
        L6e:
            r4 = move-exception
            r4 = r1
        L70:
            com.rootguard.app.utils.Logger r5 = com.rootguard.app.utils.Logger.INSTANCE     // Catch: java.lang.Exception -> La7
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La7
            r6.<init>()     // Catch: java.lang.Exception -> La7
            java.lang.String r7 = "Zygisk check: property="
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> La7
            java.lang.StringBuilder r6 = r6.append(r2)     // Catch: java.lang.Exception -> La7
            java.lang.String r7 = ", modules="
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> La7
            java.lang.StringBuilder r6 = r6.append(r3)     // Catch: java.lang.Exception -> La7
            java.lang.String r7 = ", process="
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Exception -> La7
            java.lang.StringBuilder r6 = r6.append(r4)     // Catch: java.lang.Exception -> La7
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> La7
            r5.d(r6)     // Catch: java.lang.Exception -> La7
            if (r2 != 0) goto La5
            if (r3 != 0) goto La5
            if (r4 == 0) goto La4
            goto La5
        La4:
            r0 = r1
        La5:
            r1 = r0
            goto Lb3
        La7:
            r0 = move-exception
            com.rootguard.app.utils.Logger r2 = com.rootguard.app.utils.Logger.INSTANCE
            java.lang.String r3 = "Failed to check Zygisk mode"
            r4 = r0
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            r2.e(r3, r4)
        Lb3:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.util.RootEnvironmentDetector.isZygiskModeAvailable():boolean");
    }

    public final boolean hasRootPermissionFast() {
        boolean suExists = new File("/system/bin/su").exists() || new File("/system/xbin/su").exists() || new File("/data/adb/ksu/bin/su").exists();
        if (!suExists) {
            return isLSPosedModuleActive();
        }
        try {
            Process process = Runtime.getRuntime().exec("su -c id");
            boolean finished = process.waitFor(500L, TimeUnit.MILLISECONDS);
            if (!finished) {
                process.destroyForcibly();
                Logger.INSTANCE.w("Root permission check timeout");
                return true;
            }
            int exitCode = process.exitValue();
            boolean hasPermission = exitCode == 0;
            Logger.INSTANCE.d("Root permission check: hasPermission=" + hasPermission);
            return hasPermission;
        } catch (Exception e) {
            Logger.INSTANCE.e("Failed to check root permission", e);
            return suExists;
        }
    }

    public final boolean hasRootPermission() {
        try {
            Process process = Runtime.getRuntime().exec("su -c id");
            InputStream inputStream = process.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
            String output = TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
            int exitCode = process.waitFor();
            boolean hasPermission = exitCode == 0 && StringsKt.contains$default(output, "uid=0", false, 2, (Object) null);
            Logger.INSTANCE.d("Root permission check: hasPermission=" + hasPermission);
            return hasPermission;
        } catch (Exception e) {
            Logger.INSTANCE.e("Failed to check root permission", e);
            return false;
        }
    }

    public final Object hasRootPermissionAsync(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootEnvironmentDetector$hasRootPermissionAsync$2(null), continuation);
    }

    public final String getRootManagerPackage(RootMode rootMode) {
        Intrinsics.checkNotNullParameter(rootMode, "rootMode");
        Object obj = null;
        switch (WhenMappings.$EnumSwitchMapping$0[rootMode.ordinal()]) {
            case 1:
                Iterable $this$firstOrNull$iv = CollectionsKt.listOf(new String[]{"me.weishu.kernelsu", "io.github.a13e300.ksuwebui"});
                Iterator it = $this$firstOrNull$iv.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Object element$iv = it.next();
                        String pkg = (String) element$iv;
                        boolean z = false;
                        try {
                            if (Runtime.getRuntime().exec("pm path " + pkg).waitFor() == 0) {
                                z = true;
                            }
                        } catch (Exception e) {
                        }
                        if (z) {
                            obj = element$iv;
                        }
                    }
                }
                return (String) obj;
            case 2:
                return "com.topjohnwu.magisk";
            default:
                return null;
        }
    }

    public final String getRootManagerName(RootMode rootMode) {
        Intrinsics.checkNotNullParameter(rootMode, "rootMode");
        switch (WhenMappings.$EnumSwitchMapping$0[rootMode.ordinal()]) {
            case 1:
                return "KernelSU";
            case 2:
                return "Magisk";
            case 3:
                return "PandaSU（独立模式）";
            case 4:
                return "未知";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0032. Please report as an issue. */
    public final boolean openRootManager(Context context, RootMode rootMode) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rootMode, "rootMode");
        String packageName = getRootManagerPackage(rootMode);
        boolean z = false;
        if (packageName == null) {
            return false;
        }
        try {
            try {
                context.getPackageManager().getPackageInfo(packageName, 0);
                Intent intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
                if (intent == null) {
                    Logger.e$default(Logger.INSTANCE, "Root manager not found: " + packageName, (Throwable) null, 2, (Object) null);
                } else {
                    switch (WhenMappings.$EnumSwitchMapping$0[rootMode.ordinal()]) {
                        case 1:
                            try {
                                Intent kernelSuIntent = new Intent();
                                kernelSuIntent.setClassName(packageName, "me.weishu.kernelsu.ui.superuser.SuperUserActivity");
                                kernelSuIntent.addFlags(268435456);
                                context.startActivity(kernelSuIntent);
                                Logger.INSTANCE.d("Opened KernelSU SuperUserActivity directly");
                                return true;
                            } catch (Exception e) {
                                Logger.INSTANCE.d("Cannot open KernelSU SuperUserActivity directly, fallback to main activity");
                                break;
                            }
                        case 2:
                            try {
                                Intent magiskIntent = new Intent();
                                magiskIntent.setClassName(packageName, "com.topjohnwu.magisk.ui.superuser.SuperUserFragment");
                                magiskIntent.addFlags(268435456);
                                context.startActivity(magiskIntent);
                                Logger.INSTANCE.d("Opened Magisk SuperUserFragment directly");
                                return true;
                            } catch (Exception e2) {
                                Logger.INSTANCE.d("Cannot open Magisk SuperUserFragment directly, fallback to main activity");
                                break;
                            }
                        default:
                            intent.addFlags(268435456);
                            context.startActivity(intent);
                            Logger.INSTANCE.d("Opened root manager: " + packageName);
                            z = true;
                            break;
                    }
                }
            } catch (Exception e3) {
                Logger.e$default(Logger.INSTANCE, "Root manager not installed: " + packageName, (Throwable) null, 2, (Object) null);
                try {
                    Intent marketIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName));
                    marketIntent.addFlags(268435456);
                    context.startActivity(marketIntent);
                    Logger.INSTANCE.d("Redirected to market for: " + packageName);
                    return true;
                } catch (Exception e22) {
                    Logger.INSTANCE.e("Failed to open market", e22);
                    return false;
                }
            }
        } catch (Exception e4) {
            Logger.INSTANCE.e("Failed to open root manager", e4);
        }
        return z;
    }

    public final boolean fixAuthorizationIssue(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        RootMode rootMode = detectRootMode();
        switch (WhenMappings.$EnumSwitchMapping$0[rootMode.ordinal()]) {
            case 1:
            case 2:
                boolean success = openRootManager(context, rootMode);
                if (!success) {
                    return success;
                }
                Logger.INSTANCE.d("Opened root manager for authorization fix");
                showAuthorizationFixGuide(context, rootMode);
                return success;
            default:
                Logger.INSTANCE.d("Cannot fix authorization for root mode: " + rootMode);
                return false;
        }
    }

    private final void showAuthorizationFixGuide(Context context, RootMode rootMode) {
        List steps;
        String managerName = getRootManagerName(rootMode);
        switch (WhenMappings.$EnumSwitchMapping$0[rootMode.ordinal()]) {
            case 1:
                steps = CollectionsKt.listOf(new String[]{"1. 打开 KernelSU 应用", "2. 点击「超级用户」选项", "3. 找到 PandaSU 应用", "4. 点击开关，授予 Root 权限", "5. 返回 PandaSU，点击重新检测"});
                break;
            case 2:
                steps = CollectionsKt.listOf(new String[]{"1. 打开 Magisk 应用", "2. 点击「超级用户」选项", "3. 找到 PandaSU 应用", "4. 点击开关，授予 Root 权限", "5. 返回 PandaSU，点击重新检测"});
                break;
            default:
                steps = CollectionsKt.emptyList();
                break;
        }
        if (!steps.isEmpty()) {
            String notificationText = "请按以下步骤在 " + managerName + " 中授予权限：\n" + CollectionsKt.joinToString$default(steps, "\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
            Logger.INSTANCE.i("Authorization fix guide: " + notificationText);
        }
    }

    public final boolean isLSPosedModuleActive() {
        boolean isActive;
        try {
            Process process = Runtime.getRuntime().exec("getprop persist.lspd.core.active");
            InputStream inputStream = process.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
            String output = StringsKt.trim(TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192))).toString();
            int exitCode = process.waitFor();
            if (!Intrinsics.areEqual(output, "true") && exitCode != 0) {
                isActive = false;
                Logger.INSTANCE.d("LSPosed module active check: " + isActive + " (output=" + output + ")");
                return isActive;
            }
            isActive = true;
            Logger.INSTANCE.d("LSPosed module active check: " + isActive + " (output=" + output + ")");
            return isActive;
        } catch (Exception e) {
            Logger.INSTANCE.e("Failed to check LSPosed module", e);
            return false;
        }
    }

    public final AuthorizationStatus getAuthorizationStatus(Context context) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        RootMode rootMode = detectRootMode();
        boolean hasPermission = hasRootPermissionFast();
        boolean lsposedActive = isLSPosedModuleActive();
        String managerPackage = getRootManagerPackage(rootMode);
        String managerName = getRootManagerName(rootMode);
        boolean z = false;
        if (managerPackage != null) {
            try {
                context.getPackageManager().getPackageInfo(managerPackage, 0);
                z = true;
            } catch (Exception e) {
            }
        }
        boolean isManagerInstalled = z;
        boolean isUpdatedFailure = checkUpdateRelatedFailure(rootMode, hasPermission, managerPackage, context);
        if (hasPermission) {
            return new AuthorizationStatus(rootMode, true, "已获得 Root 权限\nPandaSU 可以正常工作", true, false, managerPackage, managerName, isManagerInstalled, false, 272, null);
        }
        if (lsposedActive) {
            return new AuthorizationStatus(RootMode.STANDALONE, true, "LSPosed 模块已激活\nPandaSU 可以正常工作", false, true, managerPackage, managerName, isManagerInstalled, false, 256, null);
        }
        if (rootMode == RootMode.UNKNOWN) {
            return new AuthorizationStatus(rootMode, false, "未检测到 Root 环境\n请安装 KernelSU/Magisk 或激活 LSPosed 模块", false, false, managerPackage, managerName, isManagerInstalled, false, 272, null);
        }
        if (!isManagerInstalled) {
            return new AuthorizationStatus(rootMode, false, "检测到 " + managerName + "，但管理器应用未安装\n请重新安装 " + managerName, false, false, managerPackage, managerName, false, false, 272, null);
        }
        if (isUpdatedFailure) {
            str = "\n⚠️  检测到 Root 管理器更新后的授权失败\n请在 " + managerName + " 中重新授予 PandaSU Root 权限";
        } else {
            str = (rootMode == RootMode.KERNELSU || rootMode == RootMode.MAGISK) ? "\n💡 提示：如果 " + managerName + " 刚更新过，请重新授予 PandaSU Root 权限" : "";
        }
        String specialMessage = str;
        return new AuthorizationStatus(rootMode, false, "检测到 " + managerName + "，但 PandaSU 未获得授权\n请在 " + managerName + " 管理器中授予 PandaSU Root 权限" + specialMessage, true, false, managerPackage, managerName, true, isUpdatedFailure, 16, null);
    }

    private final boolean checkUpdateRelatedFailure(RootMode rootMode, boolean hasPermission, String managerPackage, Context context) {
        if (hasPermission || rootMode == RootMode.UNKNOWN || managerPackage == null) {
            return false;
        }
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo packageInfo = pm.getPackageInfo(managerPackage, 0);
            long installTime = packageInfo.firstInstallTime;
            long currentTime = System.currentTimeMillis();
            boolean isRecentlyInstalled = currentTime - installTime < ((long) 86400000);
            if (isRecentlyInstalled) {
                Logger.INSTANCE.d("Root 管理器 " + managerPackage + " 最近安装/更新 (安装时间: " + installTime + ")");
                return true;
            }
            long lastUpdateTime = packageInfo.lastUpdateTime;
            boolean isRecentlyUpdated = currentTime - lastUpdateTime < ((long) 86400000);
            if (isRecentlyUpdated) {
                Logger.INSTANCE.d("Root 管理器 " + managerPackage + " 最近更新 (更新时间: " + lastUpdateTime + ")");
                return true;
            }
            return false;
        } catch (Exception e) {
            Logger.INSTANCE.e("检查 Root 管理器更新状态失败", e);
            return false;
        }
    }

    /* compiled from: RootEnvironmentDetector.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005¢\u0006\u0002\u0010\u000eJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003Jg\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\"\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0010R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0010R\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0010R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006'"}, d2 = {"Lcom/rootguard/app/util/RootEnvironmentDetector$AuthorizationStatus;", "", "rootMode", "Lcom/rootguard/app/util/RootEnvironmentDetector$RootMode;", "hasPermission", "", "message", "", "canOpenManager", "isLSPosedMode", "managerPackage", "managerName", "isManagerInstalled", "isUpdateFailure", "(Lcom/rootguard/app/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V", "getCanOpenManager", "()Z", "getHasPermission", "getManagerName", "()Ljava/lang/String;", "getManagerPackage", "getMessage", "getRootMode", "()Lcom/rootguard/app/util/RootEnvironmentDetector$RootMode;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final /* data */ class AuthorizationStatus {
        public static final int $stable = 0;
        private final boolean canOpenManager;
        private final boolean hasPermission;
        private final boolean isLSPosedMode;
        private final boolean isManagerInstalled;
        private final boolean isUpdateFailure;
        private final String managerName;
        private final String managerPackage;
        private final String message;
        private final RootMode rootMode;

        /* renamed from: component1, reason: from getter */
        public final RootMode getRootMode() {
            return this.rootMode;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getHasPermission() {
            return this.hasPermission;
        }

        /* renamed from: component3, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        /* renamed from: component4, reason: from getter */
        public final boolean getCanOpenManager() {
            return this.canOpenManager;
        }

        /* renamed from: component5, reason: from getter */
        public final boolean getIsLSPosedMode() {
            return this.isLSPosedMode;
        }

        /* renamed from: component6, reason: from getter */
        public final String getManagerPackage() {
            return this.managerPackage;
        }

        /* renamed from: component7, reason: from getter */
        public final String getManagerName() {
            return this.managerName;
        }

        /* renamed from: component8, reason: from getter */
        public final boolean getIsManagerInstalled() {
            return this.isManagerInstalled;
        }

        /* renamed from: component9, reason: from getter */
        public final boolean getIsUpdateFailure() {
            return this.isUpdateFailure;
        }

        public final AuthorizationStatus copy(RootMode rootMode, boolean hasPermission, String message, boolean canOpenManager, boolean isLSPosedMode, String managerPackage, String managerName, boolean isManagerInstalled, boolean isUpdateFailure) {
            Intrinsics.checkNotNullParameter(rootMode, "rootMode");
            Intrinsics.checkNotNullParameter(message, "message");
            return new AuthorizationStatus(rootMode, hasPermission, message, canOpenManager, isLSPosedMode, managerPackage, managerName, isManagerInstalled, isUpdateFailure);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AuthorizationStatus)) {
                return false;
            }
            AuthorizationStatus authorizationStatus = (AuthorizationStatus) other;
            return this.rootMode == authorizationStatus.rootMode && this.hasPermission == authorizationStatus.hasPermission && Intrinsics.areEqual(this.message, authorizationStatus.message) && this.canOpenManager == authorizationStatus.canOpenManager && this.isLSPosedMode == authorizationStatus.isLSPosedMode && Intrinsics.areEqual(this.managerPackage, authorizationStatus.managerPackage) && Intrinsics.areEqual(this.managerName, authorizationStatus.managerName) && this.isManagerInstalled == authorizationStatus.isManagerInstalled && this.isUpdateFailure == authorizationStatus.isUpdateFailure;
        }

        public int hashCode() {
            int hashCode = ((((((((this.rootMode.hashCode() * 31) + Boolean.hashCode(this.hasPermission)) * 31) + this.message.hashCode()) * 31) + Boolean.hashCode(this.canOpenManager)) * 31) + Boolean.hashCode(this.isLSPosedMode)) * 31;
            String str = this.managerPackage;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.managerName;
            return ((((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Boolean.hashCode(this.isManagerInstalled)) * 31) + Boolean.hashCode(this.isUpdateFailure);
        }

        public String toString() {
            return "AuthorizationStatus(rootMode=" + this.rootMode + ", hasPermission=" + this.hasPermission + ", message=" + this.message + ", canOpenManager=" + this.canOpenManager + ", isLSPosedMode=" + this.isLSPosedMode + ", managerPackage=" + this.managerPackage + ", managerName=" + this.managerName + ", isManagerInstalled=" + this.isManagerInstalled + ", isUpdateFailure=" + this.isUpdateFailure + ")";
        }

        public AuthorizationStatus(RootMode rootMode, boolean hasPermission, String message, boolean canOpenManager, boolean isLSPosedMode, String managerPackage, String managerName, boolean isManagerInstalled, boolean isUpdateFailure) {
            Intrinsics.checkNotNullParameter(rootMode, "rootMode");
            Intrinsics.checkNotNullParameter(message, "message");
            this.rootMode = rootMode;
            this.hasPermission = hasPermission;
            this.message = message;
            this.canOpenManager = canOpenManager;
            this.isLSPosedMode = isLSPosedMode;
            this.managerPackage = managerPackage;
            this.managerName = managerName;
            this.isManagerInstalled = isManagerInstalled;
            this.isUpdateFailure = isUpdateFailure;
        }

        public /* synthetic */ AuthorizationStatus(RootMode rootMode, boolean z, String str, boolean z2, boolean z3, String str2, String str3, boolean z4, boolean z5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(rootMode, z, str, z2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? null : str3, (i & 128) != 0 ? false : z4, (i & 256) != 0 ? false : z5);
        }

        public final RootMode getRootMode() {
            return this.rootMode;
        }

        public final boolean getHasPermission() {
            return this.hasPermission;
        }

        public final String getMessage() {
            return this.message;
        }

        public final boolean getCanOpenManager() {
            return this.canOpenManager;
        }

        public final boolean isLSPosedMode() {
            return this.isLSPosedMode;
        }

        public final String getManagerPackage() {
            return this.managerPackage;
        }

        public final String getManagerName() {
            return this.managerName;
        }

        public final boolean isManagerInstalled() {
            return this.isManagerInstalled;
        }

        public final boolean isUpdateFailure() {
            return this.isUpdateFailure;
        }
    }
}
