package com.rootguard.app.data.model;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0016\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007¨\u0006\u0015"}, d2 = {"Lcom/rootguard/app/data/model/IsolationPresets;", "", "()V", "FULL_PROP_SPOOF", "", "", "getFULL_PROP_SPOOF", "()Ljava/util/Map;", "MIUI_PROPS", "getMIUI_PROPS", "REALME_PROPS", "getREALME_PROPS", "bankingPreset", "Lcom/rootguard/app/data/model/IsolationConfig;", "packageName", "appName", "basicIsolation", "gamingPreset", "socialPreset", "standardIsolation", "strictIsolation", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class IsolationPresets {
    public static final IsolationPresets INSTANCE = new IsolationPresets();
    private static final Map<String, String> FULL_PROP_SPOOF = MapsKt.mapOf(new Pair[]{TuplesKt.to("ro.boot.vbmeta.device_state", "locked"), TuplesKt.to("ro.boot.verifiedbootstate", "green"), TuplesKt.to("ro.boot.flash.locked", "1"), TuplesKt.to("ro.boot.veritymode", "enforcing"), TuplesKt.to("ro.boot.warranty_bit", "0"), TuplesKt.to("ro.warranty_bit", "0"), TuplesKt.to("ro.debuggable", "0"), TuplesKt.to("ro.force.debuggable", "0"), TuplesKt.to("ro.secure", "1"), TuplesKt.to("ro.adb.secure", "1"), TuplesKt.to("ro.build.type", "user"), TuplesKt.to("ro.build.tags", "release-keys"), TuplesKt.to("ro.vendor.boot.warranty_bit", "0"), TuplesKt.to("ro.vendor.warranty_bit", "0"), TuplesKt.to("vendor.boot.vbmeta.device_state", "locked"), TuplesKt.to("vendor.boot.verifiedbootstate", "green"), TuplesKt.to("sys.oem_unlock_allowed", "0")});
    private static final Map<String, String> MIUI_PROPS = MapsKt.mapOf(TuplesKt.to("ro.secureboot.lockstate", "locked"));
    private static final Map<String, String> REALME_PROPS = MapsKt.mapOf(new Pair[]{TuplesKt.to("ro.boot.realmebootstate", "green"), TuplesKt.to("ro.boot.realme.lockstate", "1")});
    public static final int $stable = 8;

    private IsolationPresets() {
    }

    public final Map<String, String> getFULL_PROP_SPOOF() {
        return FULL_PROP_SPOOF;
    }

    public final Map<String, String> getMIUI_PROPS() {
        return MIUI_PROPS;
    }

    public final Map<String, String> getREALME_PROPS() {
        return REALME_PROPS;
    }

    public final IsolationConfig bankingPreset(String packageName, String appName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        return new IsolationConfig(packageName, appName, true, true, true, true, true, true, true, true, (Map) FULL_PROP_SPOOF, new SandboxRule(packageName, SandboxLevel.STRICT, (List) null, CollectionsKt.listOf(new String[]{"su -c 'rm -rf'", "su -c 'mount -o remount'"}), (List) null, CollectionsKt.listOf(new String[]{"/system/bin", "/system/xbin", "/data/adb"}), 20, (DefaultConstructorMarker) null), false, false, false, (List) null, 61440, (DefaultConstructorMarker) null);
    }

    public final IsolationConfig gamingPreset(String packageName, String appName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        return new IsolationConfig(packageName, appName, true, true, true, true, true, true, false, false, MapsKt.mapOf(new Pair[]{TuplesKt.to("ro.debuggable", "0"), TuplesKt.to("ro.build.type", "user"), TuplesKt.to("ro.build.tags", "release-keys"), TuplesKt.to("ro.secure", "1")}), new SandboxRule(packageName, SandboxLevel.MODERATE, (List) null, CollectionsKt.listOf(new String[]{"su -c 'rm -rf /data'", "su -c 'format'"}), (List) null, CollectionsKt.listOf(new String[]{"/system", "/data/adb/magisk"}), 20, (DefaultConstructorMarker) null), false, false, false, (List) null, 61440, (DefaultConstructorMarker) null);
    }

    public final IsolationConfig socialPreset(String packageName, String appName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        return new IsolationConfig(packageName, appName, true, true, false, false, true, true, false, false, MapsKt.emptyMap(), new SandboxRule(packageName, SandboxLevel.PERMISSIVE, (List) null, CollectionsKt.listOf("su -c 'rm -rf'"), (List) null, CollectionsKt.listOf("/data/adb"), 20, (DefaultConstructorMarker) null), false, false, false, (List) null, 61440, (DefaultConstructorMarker) null);
    }

    public final IsolationConfig basicIsolation(String packageName, String appName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        return new IsolationConfig(packageName, appName, true, true, false, false, false, true, false, false, (Map) null, (SandboxRule) null, false, false, true, (List) null, 35840, (DefaultConstructorMarker) null);
    }

    public final IsolationConfig standardIsolation(String packageName, String appName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        return new IsolationConfig(packageName, appName, true, true, true, false, true, true, false, false, (Map) null, (SandboxRule) null, true, false, true, (List) null, 35840, (DefaultConstructorMarker) null);
    }

    public final IsolationConfig strictIsolation(String packageName, String appName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        boolean z = true;
        return new IsolationConfig(packageName, appName, true, true, true, true, true, true, z, z, (Map) FULL_PROP_SPOOF, new SandboxRule(packageName, SandboxLevel.STRICT, (List) null, CollectionsKt.listOf(new String[]{"su -c 'rm -rf'", "su -c 'mount'"}), (List) null, CollectionsKt.listOf(new String[]{"/system/bin", "/system/xbin", "/data/adb"}), 20, (DefaultConstructorMarker) null), z, true, true, (List) null, 32768, (DefaultConstructorMarker) null);
    }
}
