package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.model.IsolationConfig;
import com.rootguard.app.data.model.OneClickIsolationPreset;
import com.rootguard.app.utils.OneClickIsolationHelper;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b/\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BÑ\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007\u0012\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0016\u001a\u00020\n\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0003¢\u0006\u0002\u0010\u001dJ\t\u00104\u001a\u00020\u0003HÆ\u0003J\u000f\u00105\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007HÆ\u0003J\u000f\u00106\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\nHÆ\u0003J\t\u0010:\u001a\u00020\u0018HÆ\u0003J\t\u0010;\u001a\u00020\u001aHÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\t\u0010D\u001a\u00020\u000eHÆ\u0003J\t\u0010E\u001a\u00020\u0010HÆ\u0003JÕ\u0001\u0010F\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00072\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\n2\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u0003HÆ\u0001J\u0013\u0010G\u001a\u00020\u00032\b\u0010H\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010I\u001a\u00020JHÖ\u0001J\t\u0010K\u001a\u00020\nHÖ\u0001R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010%R\u0011\u0010\u001b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010%R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010%R\u0011\u0010\u001c\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010%R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0011\u0010\u0016\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b-\u0010#R\u0011\u0010\u0019\u001a\u00020\u001a¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010%R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b1\u0010#R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007¢\u0006\b\n\u0000\u001a\u0004\b2\u0010(R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007¢\u0006\b\n\u0000\u001a\u0004\b3\u0010(¨\u0006L"}, d2 = {"Lcom/rootguard/app/ui/screens/isolation/IsolationUiState;", "", "globalEnabled", "", "currentConfig", "Lcom/rootguard/app/data/model/IsolationConfig;", "isolatedApps", "", "isLoading", "errorMessage", "", "successMessage", "showSandboxRules", "isolationStats", "Lcom/rootguard/app/data/local/IsolationDataStore$SandboxStats;", "oneClickProgress", "Lcom/rootguard/app/ui/screens/isolation/OneClickProgress;", "userApps", "Lcom/rootguard/app/utils/OneClickIsolationHelper$AppInfo;", "systemApps", "isAppListLoading", "hasRootPermission", "searchQuery", "activeTab", "Lcom/rootguard/app/ui/screens/isolation/AppFilterTab;", "selectedOneClickPreset", "Lcom/rootguard/app/data/model/OneClickIsolationPreset;", "isDenyListEnabled", "isPropSpoofEnabled", "(ZLcom/rootguard/app/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/rootguard/app/data/local/IsolationDataStore$SandboxStats;Lcom/rootguard/app/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/rootguard/app/ui/screens/isolation/AppFilterTab;Lcom/rootguard/app/data/model/OneClickIsolationPreset;ZZ)V", "getActiveTab", "()Lcom/rootguard/app/ui/screens/isolation/AppFilterTab;", "getCurrentConfig", "()Lcom/rootguard/app/data/model/IsolationConfig;", "getErrorMessage", "()Ljava/lang/String;", "getGlobalEnabled", "()Z", "getHasRootPermission", "getIsolatedApps", "()Ljava/util/List;", "getIsolationStats", "()Lcom/rootguard/app/data/local/IsolationDataStore$SandboxStats;", "getOneClickProgress", "()Lcom/rootguard/app/ui/screens/isolation/OneClickProgress;", "getSearchQuery", "getSelectedOneClickPreset", "()Lcom/rootguard/app/data/model/OneClickIsolationPreset;", "getShowSandboxRules", "getSuccessMessage", "getSystemApps", "getUserApps", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final /* data */ class IsolationUiState {
    public static final int $stable = 8;
    private final AppFilterTab activeTab;
    private final IsolationConfig currentConfig;
    private final String errorMessage;
    private final boolean globalEnabled;
    private final boolean hasRootPermission;
    private final boolean isAppListLoading;
    private final boolean isDenyListEnabled;
    private final boolean isLoading;
    private final boolean isPropSpoofEnabled;
    private final List<IsolationConfig> isolatedApps;
    private final IsolationDataStore.SandboxStats isolationStats;
    private final OneClickProgress oneClickProgress;
    private final String searchQuery;
    private final OneClickIsolationPreset selectedOneClickPreset;
    private final boolean showSandboxRules;
    private final String successMessage;
    private final List<OneClickIsolationHelper.AppInfo> systemApps;
    private final List<OneClickIsolationHelper.AppInfo> userApps;

    public IsolationUiState() {
        this(false, null, null, false, null, null, false, null, null, null, null, false, false, null, null, null, false, false, 262143, null);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getGlobalEnabled() {
        return this.globalEnabled;
    }

    public final List<OneClickIsolationHelper.AppInfo> component10() {
        return this.userApps;
    }

    public final List<OneClickIsolationHelper.AppInfo> component11() {
        return this.systemApps;
    }

    /* renamed from: component12, reason: from getter */
    public final boolean getIsAppListLoading() {
        return this.isAppListLoading;
    }

    /* renamed from: component13, reason: from getter */
    public final boolean getHasRootPermission() {
        return this.hasRootPermission;
    }

    /* renamed from: component14, reason: from getter */
    public final String getSearchQuery() {
        return this.searchQuery;
    }

    /* renamed from: component15, reason: from getter */
    public final AppFilterTab getActiveTab() {
        return this.activeTab;
    }

    /* renamed from: component16, reason: from getter */
    public final OneClickIsolationPreset getSelectedOneClickPreset() {
        return this.selectedOneClickPreset;
    }

    /* renamed from: component17, reason: from getter */
    public final boolean getIsDenyListEnabled() {
        return this.isDenyListEnabled;
    }

    /* renamed from: component18, reason: from getter */
    public final boolean getIsPropSpoofEnabled() {
        return this.isPropSpoofEnabled;
    }

    /* renamed from: component2, reason: from getter */
    public final IsolationConfig getCurrentConfig() {
        return this.currentConfig;
    }

    public final List<IsolationConfig> component3() {
        return this.isolatedApps;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsLoading() {
        return this.isLoading;
    }

    /* renamed from: component5, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    /* renamed from: component6, reason: from getter */
    public final String getSuccessMessage() {
        return this.successMessage;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getShowSandboxRules() {
        return this.showSandboxRules;
    }

    /* renamed from: component8, reason: from getter */
    public final IsolationDataStore.SandboxStats getIsolationStats() {
        return this.isolationStats;
    }

    /* renamed from: component9, reason: from getter */
    public final OneClickProgress getOneClickProgress() {
        return this.oneClickProgress;
    }

    public final IsolationUiState copy(boolean globalEnabled, IsolationConfig currentConfig, List<IsolationConfig> isolatedApps, boolean isLoading, String errorMessage, String successMessage, boolean showSandboxRules, IsolationDataStore.SandboxStats isolationStats, OneClickProgress oneClickProgress, List<OneClickIsolationHelper.AppInfo> userApps, List<OneClickIsolationHelper.AppInfo> systemApps, boolean isAppListLoading, boolean hasRootPermission, String searchQuery, AppFilterTab activeTab, OneClickIsolationPreset selectedOneClickPreset, boolean isDenyListEnabled, boolean isPropSpoofEnabled) {
        Intrinsics.checkNotNullParameter(isolatedApps, "isolatedApps");
        Intrinsics.checkNotNullParameter(isolationStats, "isolationStats");
        Intrinsics.checkNotNullParameter(oneClickProgress, "oneClickProgress");
        Intrinsics.checkNotNullParameter(userApps, "userApps");
        Intrinsics.checkNotNullParameter(systemApps, "systemApps");
        Intrinsics.checkNotNullParameter(searchQuery, "searchQuery");
        Intrinsics.checkNotNullParameter(activeTab, "activeTab");
        Intrinsics.checkNotNullParameter(selectedOneClickPreset, "selectedOneClickPreset");
        return new IsolationUiState(globalEnabled, currentConfig, isolatedApps, isLoading, errorMessage, successMessage, showSandboxRules, isolationStats, oneClickProgress, userApps, systemApps, isAppListLoading, hasRootPermission, searchQuery, activeTab, selectedOneClickPreset, isDenyListEnabled, isPropSpoofEnabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IsolationUiState)) {
            return false;
        }
        IsolationUiState isolationUiState = (IsolationUiState) other;
        return this.globalEnabled == isolationUiState.globalEnabled && Intrinsics.areEqual(this.currentConfig, isolationUiState.currentConfig) && Intrinsics.areEqual(this.isolatedApps, isolationUiState.isolatedApps) && this.isLoading == isolationUiState.isLoading && Intrinsics.areEqual(this.errorMessage, isolationUiState.errorMessage) && Intrinsics.areEqual(this.successMessage, isolationUiState.successMessage) && this.showSandboxRules == isolationUiState.showSandboxRules && Intrinsics.areEqual(this.isolationStats, isolationUiState.isolationStats) && Intrinsics.areEqual(this.oneClickProgress, isolationUiState.oneClickProgress) && Intrinsics.areEqual(this.userApps, isolationUiState.userApps) && Intrinsics.areEqual(this.systemApps, isolationUiState.systemApps) && this.isAppListLoading == isolationUiState.isAppListLoading && this.hasRootPermission == isolationUiState.hasRootPermission && Intrinsics.areEqual(this.searchQuery, isolationUiState.searchQuery) && this.activeTab == isolationUiState.activeTab && this.selectedOneClickPreset == isolationUiState.selectedOneClickPreset && this.isDenyListEnabled == isolationUiState.isDenyListEnabled && this.isPropSpoofEnabled == isolationUiState.isPropSpoofEnabled;
    }

    public int hashCode() {
        int hashCode = Boolean.hashCode(this.globalEnabled) * 31;
        IsolationConfig isolationConfig = this.currentConfig;
        int hashCode2 = (((((hashCode + (isolationConfig == null ? 0 : isolationConfig.hashCode())) * 31) + this.isolatedApps.hashCode()) * 31) + Boolean.hashCode(this.isLoading)) * 31;
        String str = this.errorMessage;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.successMessage;
        return ((((((((((((((((((((((((hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31) + Boolean.hashCode(this.showSandboxRules)) * 31) + this.isolationStats.hashCode()) * 31) + this.oneClickProgress.hashCode()) * 31) + this.userApps.hashCode()) * 31) + this.systemApps.hashCode()) * 31) + Boolean.hashCode(this.isAppListLoading)) * 31) + Boolean.hashCode(this.hasRootPermission)) * 31) + this.searchQuery.hashCode()) * 31) + this.activeTab.hashCode()) * 31) + this.selectedOneClickPreset.hashCode()) * 31) + Boolean.hashCode(this.isDenyListEnabled)) * 31) + Boolean.hashCode(this.isPropSpoofEnabled);
    }

    public String toString() {
        return "IsolationUiState(globalEnabled=" + this.globalEnabled + ", currentConfig=" + this.currentConfig + ", isolatedApps=" + this.isolatedApps + ", isLoading=" + this.isLoading + ", errorMessage=" + this.errorMessage + ", successMessage=" + this.successMessage + ", showSandboxRules=" + this.showSandboxRules + ", isolationStats=" + this.isolationStats + ", oneClickProgress=" + this.oneClickProgress + ", userApps=" + this.userApps + ", systemApps=" + this.systemApps + ", isAppListLoading=" + this.isAppListLoading + ", hasRootPermission=" + this.hasRootPermission + ", searchQuery=" + this.searchQuery + ", activeTab=" + this.activeTab + ", selectedOneClickPreset=" + this.selectedOneClickPreset + ", isDenyListEnabled=" + this.isDenyListEnabled + ", isPropSpoofEnabled=" + this.isPropSpoofEnabled + ")";
    }

    public IsolationUiState(boolean globalEnabled, IsolationConfig currentConfig, List<IsolationConfig> list, boolean isLoading, String errorMessage, String successMessage, boolean showSandboxRules, IsolationDataStore.SandboxStats isolationStats, OneClickProgress oneClickProgress, List<OneClickIsolationHelper.AppInfo> list2, List<OneClickIsolationHelper.AppInfo> list3, boolean isAppListLoading, boolean hasRootPermission, String searchQuery, AppFilterTab activeTab, OneClickIsolationPreset selectedOneClickPreset, boolean isDenyListEnabled, boolean isPropSpoofEnabled) {
        Intrinsics.checkNotNullParameter(list, "isolatedApps");
        Intrinsics.checkNotNullParameter(isolationStats, "isolationStats");
        Intrinsics.checkNotNullParameter(oneClickProgress, "oneClickProgress");
        Intrinsics.checkNotNullParameter(list2, "userApps");
        Intrinsics.checkNotNullParameter(list3, "systemApps");
        Intrinsics.checkNotNullParameter(searchQuery, "searchQuery");
        Intrinsics.checkNotNullParameter(activeTab, "activeTab");
        Intrinsics.checkNotNullParameter(selectedOneClickPreset, "selectedOneClickPreset");
        this.globalEnabled = globalEnabled;
        this.currentConfig = currentConfig;
        this.isolatedApps = list;
        this.isLoading = isLoading;
        this.errorMessage = errorMessage;
        this.successMessage = successMessage;
        this.showSandboxRules = showSandboxRules;
        this.isolationStats = isolationStats;
        this.oneClickProgress = oneClickProgress;
        this.userApps = list2;
        this.systemApps = list3;
        this.isAppListLoading = isAppListLoading;
        this.hasRootPermission = hasRootPermission;
        this.searchQuery = searchQuery;
        this.activeTab = activeTab;
        this.selectedOneClickPreset = selectedOneClickPreset;
        this.isDenyListEnabled = isDenyListEnabled;
        this.isPropSpoofEnabled = isPropSpoofEnabled;
    }

    public /* synthetic */ IsolationUiState(boolean z, IsolationConfig isolationConfig, List list, boolean z2, String str, String str2, boolean z3, IsolationDataStore.SandboxStats sandboxStats, OneClickProgress oneClickProgress, List list2, List list3, boolean z4, boolean z5, String str3, AppFilterTab appFilterTab, OneClickIsolationPreset oneClickIsolationPreset, boolean z6, boolean z7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? null : isolationConfig, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? null : str, (i & 32) == 0 ? str2 : null, (i & 64) != 0 ? false : z3, (i & 128) != 0 ? new IsolationDataStore.SandboxStats(0, 0, 0, 0, 15, (DefaultConstructorMarker) null) : sandboxStats, (i & 256) != 0 ? new OneClickProgress(false, 0, 0, null, 15, null) : oneClickProgress, (i & 512) != 0 ? CollectionsKt.emptyList() : list2, (i & 1024) != 0 ? CollectionsKt.emptyList() : list3, (i & 2048) != 0 ? false : z4, (i & 4096) == 0 ? z5 : true, (i & 8192) != 0 ? "" : str3, (i & 16384) != 0 ? AppFilterTab.ALL : appFilterTab, (i & 32768) != 0 ? OneClickIsolationPreset.BALANCED : oneClickIsolationPreset, (i & 65536) != 0 ? false : z6, (i & 131072) != 0 ? false : z7);
    }

    public final boolean getGlobalEnabled() {
        return this.globalEnabled;
    }

    public final IsolationConfig getCurrentConfig() {
        return this.currentConfig;
    }

    public final List<IsolationConfig> getIsolatedApps() {
        return this.isolatedApps;
    }

    public final boolean isLoading() {
        return this.isLoading;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final String getSuccessMessage() {
        return this.successMessage;
    }

    public final boolean getShowSandboxRules() {
        return this.showSandboxRules;
    }

    public final IsolationDataStore.SandboxStats getIsolationStats() {
        return this.isolationStats;
    }

    public final OneClickProgress getOneClickProgress() {
        return this.oneClickProgress;
    }

    public final List<OneClickIsolationHelper.AppInfo> getUserApps() {
        return this.userApps;
    }

    public final List<OneClickIsolationHelper.AppInfo> getSystemApps() {
        return this.systemApps;
    }

    public final boolean isAppListLoading() {
        return this.isAppListLoading;
    }

    public final boolean getHasRootPermission() {
        return this.hasRootPermission;
    }

    public final String getSearchQuery() {
        return this.searchQuery;
    }

    public final AppFilterTab getActiveTab() {
        return this.activeTab;
    }

    public final OneClickIsolationPreset getSelectedOneClickPreset() {
        return this.selectedOneClickPreset;
    }

    public final boolean isDenyListEnabled() {
        return this.isDenyListEnabled;
    }

    public final boolean isPropSpoofEnabled() {
        return this.isPropSpoofEnabled;
    }
}
