package com.rootguard.app.util;

import android.content.Context;
import com.rootguard.app.utils.Logger;
import com.topjohnwu.superuser.Shell;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: ModuleStatusMonitor.kt */
@Singleton
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0003\u0016\u0017\u0018B\u0011\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086@¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\u0006H\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002J\u000e\u0010\r\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\nJ\b\u0010\u000f\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0002J\u000e\u0010\u0013\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\nJ\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\bH\u0086@¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/rootguard/app/util/ModuleStatusMonitor;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "checkDenylist", "", "checkForModuleCorruption", "", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkLSPosed", "checkMagisk", "checkOverallStatus", "Lcom/rootguard/app/util/ModuleStatusMonitor$OverallStatus;", "checkPandaSULSPosed", "checkPandaSUZygisk", "checkShamiko", "checkZygisk", "generateStatusReport", "getDetailedModuleStatus", "Lcom/rootguard/app/util/ModuleStatusMonitor$ModuleStatus;", "Companion", "ModuleStatus", "OverallStatus", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class ModuleStatusMonitor {
    private static final String LSPD_NATIVE = "/data/adb/modules/lspd/native_hook.lso";
    private static final String LSPOSED_CORE = "/data/adb/modules/lspd";
    private static final String LSPOSED_MANAGER = "org.lsposed.manager";
    private static final String MAGISK_MODULES_PATH = "/data/adb/modules";
    private static final String ZYGKSU_PATH = "/data/adb/zygisksu";
    private final Context context;
    public static final int $stable = 8;

    @Inject
    public ModuleStatusMonitor(@ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    /* compiled from: ModuleStatusMonitor.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0011J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bHÆ\u0003JT\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\rR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014¨\u0006#"}, d2 = {"Lcom/rootguard/app/util/ModuleStatusMonitor$ModuleStatus;", "", "moduleName", "", "isInstalled", "", "isEnabled", "version", "lastUpdateTime", "", "issues", "", "(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Long;Ljava/util/List;)V", "()Z", "getIssues", "()Ljava/util/List;", "getLastUpdateTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getModuleName", "()Ljava/lang/String;", "getVersion", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Long;Ljava/util/List;)Lcom/rootguard/app/util/ModuleStatusMonitor$ModuleStatus;", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final /* data */ class ModuleStatus {
        public static final int $stable = 8;
        private final boolean isEnabled;
        private final boolean isInstalled;
        private final List<String> issues;
        private final Long lastUpdateTime;
        private final String moduleName;
        private final String version;

        public static /* synthetic */ ModuleStatus copy$default(ModuleStatus moduleStatus, String str, boolean z, boolean z2, String str2, Long l, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = moduleStatus.moduleName;
            }
            if ((i & 2) != 0) {
                z = moduleStatus.isInstalled;
            }
            boolean z3 = z;
            if ((i & 4) != 0) {
                z2 = moduleStatus.isEnabled;
            }
            boolean z4 = z2;
            if ((i & 8) != 0) {
                str2 = moduleStatus.version;
            }
            String str3 = str2;
            if ((i & 16) != 0) {
                l = moduleStatus.lastUpdateTime;
            }
            Long l2 = l;
            if ((i & 32) != 0) {
                list = moduleStatus.issues;
            }
            return moduleStatus.copy(str, z3, z4, str3, l2, list);
        }

        /* renamed from: component1, reason: from getter */
        public final String getModuleName() {
            return this.moduleName;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getIsInstalled() {
            return this.isInstalled;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getIsEnabled() {
            return this.isEnabled;
        }

        /* renamed from: component4, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        /* renamed from: component5, reason: from getter */
        public final Long getLastUpdateTime() {
            return this.lastUpdateTime;
        }

        public final List<String> component6() {
            return this.issues;
        }

        public final ModuleStatus copy(String moduleName, boolean isInstalled, boolean isEnabled, String version, Long lastUpdateTime, List<String> issues) {
            Intrinsics.checkNotNullParameter(moduleName, "moduleName");
            Intrinsics.checkNotNullParameter(issues, "issues");
            return new ModuleStatus(moduleName, isInstalled, isEnabled, version, lastUpdateTime, issues);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ModuleStatus)) {
                return false;
            }
            ModuleStatus moduleStatus = (ModuleStatus) other;
            return Intrinsics.areEqual(this.moduleName, moduleStatus.moduleName) && this.isInstalled == moduleStatus.isInstalled && this.isEnabled == moduleStatus.isEnabled && Intrinsics.areEqual(this.version, moduleStatus.version) && Intrinsics.areEqual(this.lastUpdateTime, moduleStatus.lastUpdateTime) && Intrinsics.areEqual(this.issues, moduleStatus.issues);
        }

        public int hashCode() {
            int hashCode = ((((this.moduleName.hashCode() * 31) + Boolean.hashCode(this.isInstalled)) * 31) + Boolean.hashCode(this.isEnabled)) * 31;
            String str = this.version;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            Long l = this.lastUpdateTime;
            return ((hashCode2 + (l != null ? l.hashCode() : 0)) * 31) + this.issues.hashCode();
        }

        public String toString() {
            return "ModuleStatus(moduleName=" + this.moduleName + ", isInstalled=" + this.isInstalled + ", isEnabled=" + this.isEnabled + ", version=" + this.version + ", lastUpdateTime=" + this.lastUpdateTime + ", issues=" + this.issues + ")";
        }

        public ModuleStatus(String moduleName, boolean isInstalled, boolean isEnabled, String version, Long lastUpdateTime, List<String> list) {
            Intrinsics.checkNotNullParameter(moduleName, "moduleName");
            Intrinsics.checkNotNullParameter(list, "issues");
            this.moduleName = moduleName;
            this.isInstalled = isInstalled;
            this.isEnabled = isEnabled;
            this.version = version;
            this.lastUpdateTime = lastUpdateTime;
            this.issues = list;
        }

        public final String getModuleName() {
            return this.moduleName;
        }

        public final boolean isInstalled() {
            return this.isInstalled;
        }

        public final boolean isEnabled() {
            return this.isEnabled;
        }

        public final String getVersion() {
            return this.version;
        }

        public final Long getLastUpdateTime() {
            return this.lastUpdateTime;
        }

        public final List<String> getIssues() {
            return this.issues;
        }
    }

    /* compiled from: ModuleStatusMonitor.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000f\u0010!\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003Jo\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0001J\u0013\u0010$\u001a\u00020\u00032\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\t\u0010(\u001a\u00020\fHÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016¨\u0006)"}, d2 = {"Lcom/rootguard/app/util/ModuleStatusMonitor$OverallStatus;", "", "hasMagisk", "", "hasZygisk", "hasLSPosed", "hasDenylist", "hasShamiko", "pandaSUZygiskInstalled", "pandaSULSPosedInstalled", "issues", "", "", "recommendations", "(ZZZZZZZLjava/util/List;Ljava/util/List;)V", "getHasDenylist", "()Z", "getHasLSPosed", "getHasMagisk", "getHasShamiko", "getHasZygisk", "getIssues", "()Ljava/util/List;", "getPandaSULSPosedInstalled", "getPandaSUZygiskInstalled", "getRecommendations", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
    public static final /* data */ class OverallStatus {
        public static final int $stable = 8;
        private final boolean hasDenylist;
        private final boolean hasLSPosed;
        private final boolean hasMagisk;
        private final boolean hasShamiko;
        private final boolean hasZygisk;
        private final List<String> issues;
        private final boolean pandaSULSPosedInstalled;
        private final boolean pandaSUZygiskInstalled;
        private final List<String> recommendations;

        /* renamed from: component1, reason: from getter */
        public final boolean getHasMagisk() {
            return this.hasMagisk;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getHasZygisk() {
            return this.hasZygisk;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getHasLSPosed() {
            return this.hasLSPosed;
        }

        /* renamed from: component4, reason: from getter */
        public final boolean getHasDenylist() {
            return this.hasDenylist;
        }

        /* renamed from: component5, reason: from getter */
        public final boolean getHasShamiko() {
            return this.hasShamiko;
        }

        /* renamed from: component6, reason: from getter */
        public final boolean getPandaSUZygiskInstalled() {
            return this.pandaSUZygiskInstalled;
        }

        /* renamed from: component7, reason: from getter */
        public final boolean getPandaSULSPosedInstalled() {
            return this.pandaSULSPosedInstalled;
        }

        public final List<String> component8() {
            return this.issues;
        }

        public final List<String> component9() {
            return this.recommendations;
        }

        public final OverallStatus copy(boolean hasMagisk, boolean hasZygisk, boolean hasLSPosed, boolean hasDenylist, boolean hasShamiko, boolean pandaSUZygiskInstalled, boolean pandaSULSPosedInstalled, List<String> issues, List<String> recommendations) {
            Intrinsics.checkNotNullParameter(issues, "issues");
            Intrinsics.checkNotNullParameter(recommendations, "recommendations");
            return new OverallStatus(hasMagisk, hasZygisk, hasLSPosed, hasDenylist, hasShamiko, pandaSUZygiskInstalled, pandaSULSPosedInstalled, issues, recommendations);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OverallStatus)) {
                return false;
            }
            OverallStatus overallStatus = (OverallStatus) other;
            return this.hasMagisk == overallStatus.hasMagisk && this.hasZygisk == overallStatus.hasZygisk && this.hasLSPosed == overallStatus.hasLSPosed && this.hasDenylist == overallStatus.hasDenylist && this.hasShamiko == overallStatus.hasShamiko && this.pandaSUZygiskInstalled == overallStatus.pandaSUZygiskInstalled && this.pandaSULSPosedInstalled == overallStatus.pandaSULSPosedInstalled && Intrinsics.areEqual(this.issues, overallStatus.issues) && Intrinsics.areEqual(this.recommendations, overallStatus.recommendations);
        }

        public int hashCode() {
            return (((((((((((((((Boolean.hashCode(this.hasMagisk) * 31) + Boolean.hashCode(this.hasZygisk)) * 31) + Boolean.hashCode(this.hasLSPosed)) * 31) + Boolean.hashCode(this.hasDenylist)) * 31) + Boolean.hashCode(this.hasShamiko)) * 31) + Boolean.hashCode(this.pandaSUZygiskInstalled)) * 31) + Boolean.hashCode(this.pandaSULSPosedInstalled)) * 31) + this.issues.hashCode()) * 31) + this.recommendations.hashCode();
        }

        public String toString() {
            return "OverallStatus(hasMagisk=" + this.hasMagisk + ", hasZygisk=" + this.hasZygisk + ", hasLSPosed=" + this.hasLSPosed + ", hasDenylist=" + this.hasDenylist + ", hasShamiko=" + this.hasShamiko + ", pandaSUZygiskInstalled=" + this.pandaSUZygiskInstalled + ", pandaSULSPosedInstalled=" + this.pandaSULSPosedInstalled + ", issues=" + this.issues + ", recommendations=" + this.recommendations + ")";
        }

        public OverallStatus(boolean hasMagisk, boolean hasZygisk, boolean hasLSPosed, boolean hasDenylist, boolean hasShamiko, boolean pandaSUZygiskInstalled, boolean pandaSULSPosedInstalled, List<String> list, List<String> list2) {
            Intrinsics.checkNotNullParameter(list, "issues");
            Intrinsics.checkNotNullParameter(list2, "recommendations");
            this.hasMagisk = hasMagisk;
            this.hasZygisk = hasZygisk;
            this.hasLSPosed = hasLSPosed;
            this.hasDenylist = hasDenylist;
            this.hasShamiko = hasShamiko;
            this.pandaSUZygiskInstalled = pandaSUZygiskInstalled;
            this.pandaSULSPosedInstalled = pandaSULSPosedInstalled;
            this.issues = list;
            this.recommendations = list2;
        }

        public final boolean getHasMagisk() {
            return this.hasMagisk;
        }

        public final boolean getHasZygisk() {
            return this.hasZygisk;
        }

        public final boolean getHasLSPosed() {
            return this.hasLSPosed;
        }

        public final boolean getHasDenylist() {
            return this.hasDenylist;
        }

        public final boolean getHasShamiko() {
            return this.hasShamiko;
        }

        public final boolean getPandaSUZygiskInstalled() {
            return this.pandaSUZygiskInstalled;
        }

        public final boolean getPandaSULSPosedInstalled() {
            return this.pandaSULSPosedInstalled;
        }

        public final List<String> getIssues() {
            return this.issues;
        }

        public final List<String> getRecommendations() {
            return this.recommendations;
        }
    }

    public final Object checkOverallStatus(Continuation<? super OverallStatus> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ModuleStatusMonitor$checkOverallStatus$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkMagisk() {
        try {
            Shell.Result result = Shell.cmd(new String[]{"ls /data/adb/magisk 2>/dev/null"}).exec();
            Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
            return result.isSuccess();
        } catch (Exception e) {
            Logger.INSTANCE.e("ModuleStatusMonitor: 检查 Magisk 失败", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkZygisk() {
        Iterable $this$any$iv;
        boolean z = true;
        try {
            Shell.Result result = Shell.cmd(new String[]{"ls /data/adb/zygisksu 2>/dev/null"}).exec();
            Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
            if (!result.isSuccess()) {
                Iterable out = Shell.cmd(new String[]{"getprop persist.magisk.zygisk"}).exec().getOut();
                Intrinsics.checkNotNullExpressionValue(out, "getOut(...)");
                Iterable $this$any$iv2 = out;
                if (!($this$any$iv2 instanceof Collection) || !((Collection) $this$any$iv2).isEmpty()) {
                    Iterator it = $this$any$iv2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Object element$iv = it.next();
                            String it2 = (String) element$iv;
                            Intrinsics.checkNotNull(it2);
                            if (StringsKt.contains$default(it2, "1", false, 2, (Object) null)) {
                                $this$any$iv = 1;
                                break;
                            }
                        } else {
                            $this$any$iv = null;
                            break;
                        }
                    }
                } else {
                    $this$any$iv = null;
                }
                if ($this$any$iv == null) {
                    z = false;
                }
            }
            return z;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkLSPosed() {
        boolean z = true;
        try {
            boolean lspdExists = Shell.cmd(new String[]{"ls /data/adb/modules/lspd 2>/dev/null"}).exec().isSuccess();
            boolean managerExists = Shell.cmd(new String[]{"pm path org.lsposed.manager 2>/dev/null"}).exec().isSuccess();
            if (!lspdExists && !managerExists) {
                z = false;
            }
            return z;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkDenylist() {
        boolean z = true;
        try {
            Shell.Result result = Shell.cmd(new String[]{"magisk --denylist status 2>/dev/null"}).exec();
            Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
            Iterable out = result.getOut();
            Intrinsics.checkNotNullExpressionValue(out, "getOut(...)");
            Iterable $this$any$iv = out;
            if (!($this$any$iv instanceof Collection) || !((Collection) $this$any$iv).isEmpty()) {
                Iterator it = $this$any$iv.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Object element$iv = it.next();
                        String it2 = (String) element$iv;
                        Intrinsics.checkNotNull(it2);
                        if (((StringsKt.contains$default(it2, "enabled", false, 2, (Object) null) || StringsKt.contains$default(it2, "ENABLED", false, 2, (Object) null)) ? 1 : null) != null) {
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
            } else {
                z = false;
            }
            return z;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkShamiko() {
        try {
            return Shell.cmd(new String[]{"ls /data/adb/modules/shamiko 2>/dev/null"}).exec().isSuccess();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkPandaSUZygisk() {
        boolean z = true;
        try {
            if (!Shell.cmd(new String[]{"ls /data/adb/modules/PandaSU 2>/dev/null"}).exec().isSuccess()) {
                if (!Shell.cmd(new String[]{"ls /data/adb/modules/panda_zygisk 2>/dev/null"}).exec().isSuccess()) {
                    z = false;
                }
            }
            return z;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0029, code lost:
    
        if (com.topjohnwu.superuser.Shell.cmd(new java.lang.String[]{"cat /data/misc/lspd/modules_config.json 2>/dev/null | grep -i pandasu"}).exec().isSuccess() != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean checkPandaSULSPosed() {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            java.lang.String[] r2 = new java.lang.String[r0]     // Catch: java.lang.Exception -> L2f
            java.lang.String r3 = "ls /data/adb/modules/lspd 2>/dev/null"
            r2[r1] = r3     // Catch: java.lang.Exception -> L2f
            com.topjohnwu.superuser.Shell$Job r2 = com.topjohnwu.superuser.Shell.cmd(r2)     // Catch: java.lang.Exception -> L2f
            com.topjohnwu.superuser.Shell$Result r2 = r2.exec()     // Catch: java.lang.Exception -> L2f
            boolean r2 = r2.isSuccess()     // Catch: java.lang.Exception -> L2f
            if (r2 == 0) goto L2c
            java.lang.String[] r2 = new java.lang.String[r0]     // Catch: java.lang.Exception -> L2f
            java.lang.String r3 = "cat /data/misc/lspd/modules_config.json 2>/dev/null | grep -i pandasu"
            r2[r1] = r3     // Catch: java.lang.Exception -> L2f
            com.topjohnwu.superuser.Shell$Job r2 = com.topjohnwu.superuser.Shell.cmd(r2)     // Catch: java.lang.Exception -> L2f
            com.topjohnwu.superuser.Shell$Result r2 = r2.exec()     // Catch: java.lang.Exception -> L2f
            boolean r2 = r2.isSuccess()     // Catch: java.lang.Exception -> L2f
            if (r2 == 0) goto L2c
            goto L2d
        L2c:
            r0 = r1
        L2d:
            r1 = r0
            goto L31
        L2f:
            r0 = move-exception
        L31:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.util.ModuleStatusMonitor.checkPandaSULSPosed():boolean");
    }

    public final Object getDetailedModuleStatus(Continuation<? super List<ModuleStatus>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ModuleStatusMonitor$getDetailedModuleStatus$2(null), continuation);
    }

    public final Object checkForModuleCorruption(Continuation<? super List<String>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ModuleStatusMonitor$checkForModuleCorruption$2(null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object generateStatusReport(kotlin.coroutines.Continuation<? super java.lang.String> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$1
            if (r0 == 0) goto L14
            r0 = r7
            com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$1 r0 = (com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$1 r0 = new com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$1
            r0.<init>(r6, r7)
        L19:
            r7 = r0
            java.lang.Object r0 = r7.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r7.label
            switch(r2) {
                case 0: goto L32;
                case 1: goto L2d;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L2d:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = r0
            goto L4e
        L32:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = r6
            kotlinx.coroutines.CoroutineDispatcher r3 = kotlinx.coroutines.Dispatchers.getIO()
            kotlin.coroutines.CoroutineContext r3 = (kotlin.coroutines.CoroutineContext) r3
            com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$2 r4 = new com.rootguard.app.util.ModuleStatusMonitor$generateStatusReport$2
            r5 = 0
            r4.<init>(r2, r5)
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
            r5 = 1
            r7.label = r5
            java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r3, r4, r7)
            if (r2 != r1) goto L4e
            return r1
        L4e:
            java.lang.String r1 = "withContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.util.ModuleStatusMonitor.generateStatusReport(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
