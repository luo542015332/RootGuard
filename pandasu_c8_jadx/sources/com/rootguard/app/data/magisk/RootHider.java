package com.rootguard.app.data.magisk;

import android.content.Context;
import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.model.DetectionItem;
import com.rootguard.app.data.model.IsolationConfig;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: RootHider.kt */
@Singleton
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0016\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 D2\u00020\u0001:\u0003DEFB\u0019\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\"\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\rH\u0082@¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@¢\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\u0016H\u0086@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0017\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0010J\u0016\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u0016\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@¢\u0006\u0002\u0010\u0014J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0086@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u001f\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u0010J\u0016\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ$\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0\u001dH\u0082@¢\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ$\u0010(\u001a\b\u0012\u0004\u0012\u00020\b0\u001d2\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0010J\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0\u001dH\u0086@¢\u0006\u0002\u0010\u0010J\u0016\u0010.\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u0016\u0010/\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u0016\u00100\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u0016\u00101\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u000e\u00102\u001a\u00020\u000bH\u0082@¢\u0006\u0002\u0010\u0010J\u0016\u00103\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u000e\u00104\u001a\u00020#H\u0082@¢\u0006\u0002\u0010\u0010J\u0016\u00105\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0086@¢\u0006\u0002\u0010\u001aJ8\u00106\u001a\u00020#2\u0006\u0010!\u001a\u00020\b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0\u001d2\u0012\u00107\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b0\rH\u0082@¢\u0006\u0002\u00108J\u000e\u00109\u001a\u00020:H\u0086@¢\u0006\u0002\u0010\u0010J\u0014\u0010;\u001a\b\u0012\u0004\u0012\u00020<0\u001dH\u0086@¢\u0006\u0002\u0010\u0010J\u0016\u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u0016\u0010?\u001a\u00020\b2\u0006\u0010>\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aJ\u001e\u0010@\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\b2\u0006\u0010B\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010+J\u0016\u0010C\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\bH\u0082@¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lcom/rootguard/app/data/magisk/RootHider;", "", "context", "Landroid/content/Context;", "isolationDataStore", "Lcom/rootguard/app/data/local/IsolationDataStore;", "(Landroid/content/Context;Lcom/rootguard/app/data/local/IsolationDataStore;)V", "PANDASU_ZYGISK_MODULE_ID", "", "cachedRootType", "applyCustomProps", "", "props", "", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyFullPropSpoof", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyIsolation", "config", "Lcom/rootguard/app/data/model/IsolationConfig;", "(Lcom/rootguard/app/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkHideStatus", "Lcom/rootguard/app/data/magisk/HideStatus;", "checkSelfRootPermission", "checkToolAvailable", "toolName", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "configureMagiskHide", "detectModules", "", "Lcom/rootguard/app/data/magisk/RootHider$ModuleStatus;", "detectRootType", "disableRootForPackage", "packageName", "emergencyRollback", "", "executedOperations", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fileExists", "path", "findDirectoriesContaining", "basePath", "keyword", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forceDenyList", "getIsolatedApps", "hideBusyboxForPackage", "hideMagiskFilesForPackage", "hideSuForPackage", "hideXposedForPackage", "isPandaSUZygiskModuleEnabled", "isolateStorageForPackage", "recordAuthorizationFailure", "removeIsolation", "rollbackOperations", "operationResults", "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runEnvironmentCheck", "", "runEnvironmentCheckDetail", "Lcom/rootguard/app/data/magisk/RootHider$DetectionResult;", "runSuCommand", "cmd", "runSuCommandOutput", "safeMountBind", "source", "target", "verifyIsolation", "Companion", "DetectionResult", "ModuleStatus", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider {
    private static final String ROOT_TYPE_APATCH = "apatch";
    private static final String ROOT_TYPE_KERNELSU = "kernelsu";
    private static final String ROOT_TYPE_MAGISK = "magisk";
    private static final String ROOT_TYPE_STANDALONE = "standalone";
    private final String PANDASU_ZYGISK_MODULE_ID;
    private String cachedRootType;
    private final Context context;
    private final IsolationDataStore isolationDataStore;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final List<String> ROOT_PATHS = CollectionsKt.listOf(new String[]{"/system/bin/su", "/system/xbin/su", "/sbin/su", "/su/bin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/app/Superuser.apk", "/system/app/SuperSU.apk", "/system/app/Magisk.apk"});
    private static final List<String> MAGISK_PATHS = CollectionsKt.listOf(new String[]{"/data/adb/magisk", MagiskProvider.MODULES_PATH, "/sbin/.magisk", "/dev/.magisk.unblock", "/system/etc/init.d"});
    private static final List<String> KERNELSU_PATHS = CollectionsKt.listOf(new String[]{"/data/adb/ksu", MagiskProvider.MODULES_PATH, "/dev/ksu", "/sys/kernel/ksu"});
    private static final List<String> BUSYBOX_PATHS = CollectionsKt.listOf(new String[]{"/system/xbin/busybox", "/system/bin/busybox", "/data/local/xbin/busybox"});
    private static final List<String> XPOSED_PATHS = CollectionsKt.listOf(new String[]{"/system/framework/XposedBridge.jar", "/system/bin/app_process_xposed", "/system/xbin/xposed", "/data/data/de.robv.android.xposed.installer"});
    private static final List<String> ROOT_PACKAGES = CollectionsKt.listOf(new String[]{"com.topjohnwu.magisk", "com.topjohnwu.magisk.debug", "eu.chainfire.supersu", "com.koushikdutta.superuser", "com.thirdparty.superuser", "com.yellowes.su", "com.kingroot.kinguser", "com.kingo.root", "me.weishu.exp", "me.weishu.kernelsu", "de.robv.android.xposed.installer", "org.meowcat.edxposed.manager", "com.solohsu.android.edxp.manager", "io.github.vvb2060.magisk"});
    private static final List<Pair<String, String>> HIDE_MODULE_PACKAGES = CollectionsKt.listOf(new Pair[]{TuplesKt.to("com.tsng.hidemyapplist", "HMA"), TuplesKt.to("org.lsposed.manager", "LSPosed"), TuplesKt.to("top.canyie.droidguard", "DroidGuard"), TuplesKt.to("com.zhenxi.hunter", "Hunter"), TuplesKt.to("com.hunter.detector", "Hunter检测器"), TuplesKt.to("icu.nullptr.applistdetector", "AppList Detector")});

    @Inject
    public RootHider(@ApplicationContext Context context, IsolationDataStore isolationDataStore) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(isolationDataStore, "isolationDataStore");
        this.context = context;
        this.isolationDataStore = isolationDataStore;
        this.PANDASU_ZYGISK_MODULE_ID = "zygisk_pandasu";
    }

    /* compiled from: RootHider.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/rootguard/app/data/magisk/RootHider$Companion;", "", "()V", "BUSYBOX_PATHS", "", "", "HIDE_MODULE_PACKAGES", "Lkotlin/Pair;", "getHIDE_MODULE_PACKAGES", "()Ljava/util/List;", "KERNELSU_PATHS", "MAGISK_PATHS", "ROOT_PACKAGES", "ROOT_PATHS", "ROOT_TYPE_APATCH", "ROOT_TYPE_KERNELSU", "ROOT_TYPE_MAGISK", "ROOT_TYPE_STANDALONE", "XPOSED_PATHS", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<Pair<String, String>> getHIDE_MODULE_PACKAGES() {
            return RootHider.HIDE_MODULE_PACKAGES;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object detectRootType(Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$detectRootType$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object findDirectoriesContaining(String basePath, String keyword, Continuation<? super List<String>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$findDirectoriesContaining$2(basePath, keyword, this, null), continuation);
    }

    public final Object forceDenyList(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$forceDenyList$2(this, null), continuation);
    }

    public final Object applyFullPropSpoof(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$applyFullPropSpoof$2(this, null), continuation);
    }

    /* compiled from: RootHider.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/rootguard/app/data/magisk/RootHider$ModuleStatus;", "", "installed", "", "name", "", "desc", "(ZLjava/lang/String;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getInstalled", "()Z", "getName", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
    public static final /* data */ class ModuleStatus {
        public static final int $stable = 0;
        private final String desc;
        private final boolean installed;
        private final String name;

        public static /* synthetic */ ModuleStatus copy$default(ModuleStatus moduleStatus, boolean z, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                z = moduleStatus.installed;
            }
            if ((i & 2) != 0) {
                str = moduleStatus.name;
            }
            if ((i & 4) != 0) {
                str2 = moduleStatus.desc;
            }
            return moduleStatus.copy(z, str, str2);
        }

        /* renamed from: component1, reason: from getter */
        public final boolean getInstalled() {
            return this.installed;
        }

        /* renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* renamed from: component3, reason: from getter */
        public final String getDesc() {
            return this.desc;
        }

        public final ModuleStatus copy(boolean installed, String name, String desc) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(desc, "desc");
            return new ModuleStatus(installed, name, desc);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ModuleStatus)) {
                return false;
            }
            ModuleStatus moduleStatus = (ModuleStatus) other;
            return this.installed == moduleStatus.installed && Intrinsics.areEqual(this.name, moduleStatus.name) && Intrinsics.areEqual(this.desc, moduleStatus.desc);
        }

        public int hashCode() {
            return (((Boolean.hashCode(this.installed) * 31) + this.name.hashCode()) * 31) + this.desc.hashCode();
        }

        public String toString() {
            return "ModuleStatus(installed=" + this.installed + ", name=" + this.name + ", desc=" + this.desc + ")";
        }

        public ModuleStatus(boolean installed, String name, String desc) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(desc, "desc");
            this.installed = installed;
            this.name = name;
            this.desc = desc;
        }

        public final String getDesc() {
            return this.desc;
        }

        public final boolean getInstalled() {
            return this.installed;
        }

        public final String getName() {
            return this.name;
        }
    }

    public final Object detectModules(Continuation<? super List<ModuleStatus>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$detectModules$2(this, null), continuation);
    }

    /* compiled from: RootHider.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\tHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Lcom/rootguard/app/data/magisk/RootHider$DetectionResult;", "", "item", "Lcom/rootguard/app/data/model/DetectionItem;", "label", "", "detected", "", "severity", "", "(Lcom/rootguard/app/data/model/DetectionItem;Ljava/lang/String;ZI)V", "getDetected", "()Z", "getItem", "()Lcom/rootguard/app/data/model/DetectionItem;", "getLabel", "()Ljava/lang/String;", "getSeverity", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
    public static final /* data */ class DetectionResult {
        public static final int $stable = 0;
        private final boolean detected;
        private final DetectionItem item;
        private final String label;
        private final int severity;

        public static /* synthetic */ DetectionResult copy$default(DetectionResult detectionResult, DetectionItem detectionItem, String str, boolean z, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                detectionItem = detectionResult.item;
            }
            if ((i2 & 2) != 0) {
                str = detectionResult.label;
            }
            if ((i2 & 4) != 0) {
                z = detectionResult.detected;
            }
            if ((i2 & 8) != 0) {
                i = detectionResult.severity;
            }
            return detectionResult.copy(detectionItem, str, z, i);
        }

        /* renamed from: component1, reason: from getter */
        public final DetectionItem getItem() {
            return this.item;
        }

        /* renamed from: component2, reason: from getter */
        public final String getLabel() {
            return this.label;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getDetected() {
            return this.detected;
        }

        /* renamed from: component4, reason: from getter */
        public final int getSeverity() {
            return this.severity;
        }

        public final DetectionResult copy(DetectionItem item, String label, boolean detected, int severity) {
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(label, "label");
            return new DetectionResult(item, label, detected, severity);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DetectionResult)) {
                return false;
            }
            DetectionResult detectionResult = (DetectionResult) other;
            return this.item == detectionResult.item && Intrinsics.areEqual(this.label, detectionResult.label) && this.detected == detectionResult.detected && this.severity == detectionResult.severity;
        }

        public int hashCode() {
            return (((((this.item.hashCode() * 31) + this.label.hashCode()) * 31) + Boolean.hashCode(this.detected)) * 31) + Integer.hashCode(this.severity);
        }

        public String toString() {
            return "DetectionResult(item=" + this.item + ", label=" + this.label + ", detected=" + this.detected + ", severity=" + this.severity + ")";
        }

        public DetectionResult(DetectionItem item, String label, boolean detected, int severity) {
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(label, "label");
            this.item = item;
            this.label = label;
            this.detected = detected;
            this.severity = severity;
        }

        public final boolean getDetected() {
            return this.detected;
        }

        public final DetectionItem getItem() {
            return this.item;
        }

        public final String getLabel() {
            return this.label;
        }

        public final int getSeverity() {
            return this.severity;
        }
    }

    public final Object runEnvironmentCheck(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$runEnvironmentCheck$2(this, null), continuation);
    }

    public final Object runEnvironmentCheckDetail(Continuation<? super List<DetectionResult>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$runEnvironmentCheckDetail$2(this, null), continuation);
    }

    public final Object applyIsolation(IsolationConfig config, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$applyIsolation$2(config, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object checkToolAvailable(String toolName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$checkToolAvailable$2(toolName, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object configureMagiskHide(IsolationConfig config, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$configureMagiskHide$2(config, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object hideSuForPackage(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$hideSuForPackage$2(this, packageName, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object hideMagiskFilesForPackage(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$hideMagiskFilesForPackage$2(this, packageName, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object hideBusyboxForPackage(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$hideBusyboxForPackage$2(packageName, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object hideXposedForPackage(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$hideXposedForPackage$2(this, packageName, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object applyCustomProps(Map<String, String> map, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$applyCustomProps$2(map, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object disableRootForPackage(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$disableRootForPackage$2(this, packageName, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object isolateStorageForPackage(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$isolateStorageForPackage$2(packageName, this, null), continuation);
    }

    public final Object removeIsolation(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$removeIsolation$2(packageName, this, null), continuation);
    }

    public final Object checkHideStatus(Continuation<? super HideStatus> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$checkHideStatus$2(this, null), continuation);
    }

    public final Object getIsolatedApps(Continuation<? super List<String>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$getIsolatedApps$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object isPandaSUZygiskModuleEnabled(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$isPandaSUZygiskModuleEnabled$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fileExists(String path, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$fileExists$2(this, path, null), continuation);
    }

    public final Object checkSelfRootPermission(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$checkSelfRootPermission$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object recordAuthorizationFailure(Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new RootHider$recordAuthorizationFailure$2(this, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runSuCommand(String cmd, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$runSuCommand$2(cmd, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runSuCommandOutput(String cmd, Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$runSuCommandOutput$2(cmd, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object safeMountBind(String source, String target, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$safeMountBind$2(source, target, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object verifyIsolation(String packageName, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new RootHider$verifyIsolation$2(packageName, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object rollbackOperations(String packageName, List<String> list, Map<String, Boolean> map, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new RootHider$rollbackOperations$2(packageName, list, this, map, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object emergencyRollback(String packageName, List<String> list, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(Dispatchers.getIO(), new RootHider$emergencyRollback$2(packageName, list, this, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }
}
