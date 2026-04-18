package com.rootguard.app.ui.screens.isolation;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.data.model.IsolationConfig;
import com.rootguard.app.data.model.IsolationEvent;
import com.rootguard.app.data.model.IsolationLevel;
import com.rootguard.app.data.model.IsolationPresets;
import com.rootguard.app.data.model.OneClickIsolationPreset;
import com.rootguard.app.data.model.SandboxRule;
import com.rootguard.app.utils.Logger;
import com.rootguard.app.utils.OneClickIsolationHelper;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010\u0018\u001a\u00020\u0011H\u0002J\u0006\u0010\u0019\u001a\u00020\u0011J\u0006\u0010\u001a\u001a\u00020\u0011J\b\u0010\u001b\u001a\u00020\u0011H\u0002J\u0006\u0010\u001c\u001a\u00020\u0011J\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ\u0012\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u001e0!J\u000e\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%J\u0016\u0010'\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010(\u001a\u00020\u0011J\b\u0010)\u001a\u00020\u0011H\u0002J\b\u0010*\u001a\u00020\u0011H\u0002J\u000e\u0010+\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010,\u001a\u00020\u0011J\u0006\u0010-\u001a\u00020\u0011J\u000e\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u000200J\u000e\u00101\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%J\u000e\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u00020\u0011J\u000e\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u001fJ\u000e\u00108\u001a\u00020\u00112\u0006\u00109\u001a\u000204J\u0006\u0010:\u001a\u00020\u0011J\u000e\u0010;\u001a\u00020\u00112\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020\u00112\u0006\u0010?\u001a\u00020@J\u000e\u0010A\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u0014R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006C"}, d2 = {"Lcom/rootguard/app/ui/screens/isolation/IsolationViewModel;", "Landroidx/lifecycle/ViewModel;", "isolationDataStore", "Lcom/rootguard/app/data/local/IsolationDataStore;", "rootHider", "Lcom/rootguard/app/data/magisk/RootHider;", "oneClickIsolationHelper", "Lcom/rootguard/app/utils/OneClickIsolationHelper;", "(Lcom/rootguard/app/data/local/IsolationDataStore;Lcom/rootguard/app/data/magisk/RootHider;Lcom/rootguard/app/utils/OneClickIsolationHelper;)V", "_uiState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/rootguard/app/ui/screens/isolation/IsolationUiState;", "uiState", "Lkotlinx/coroutines/flow/StateFlow;", "getUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "applyFullPropSpoof", "", "applyPreset", "packageName", "", "appName", "level", "Lcom/rootguard/app/data/model/IsolationLevel;", "checkRootPermission", "clearError", "clearIsolationLogs", "clearMessageAfterDelay", "forceDenyList", "getFilteredApps", "", "Lcom/rootguard/app/utils/OneClickIsolationHelper$AppInfo;", "getIsolationEvents", "Lkotlinx/coroutines/flow/Flow;", "Lcom/rootguard/app/data/model/IsolationEvent;", "getPresetEmoji", "p", "Lcom/rootguard/app/data/model/OneClickIsolationPreset;", "getPresetLabel", "loadAppConfig", "loadAppList", "loadSandboxStats", "loadSettings", "removeIsolation", "resetOneClickProgress", "saveConfig", "setActiveTab", "tab", "Lcom/rootguard/app/ui/screens/isolation/AppFilterTab;", "setOneClickPreset", "setRootPermission", "hasPermission", "", "startOneClickIsolation", "toggleAppIsolation", "appInfo", "toggleGlobalIsolation", "enabled", "toggleSandboxRules", "updateConfig", "config", "Lcom/rootguard/app/data/model/IsolationConfig;", "updateSandboxRule", "rule", "Lcom/rootguard/app/data/model/SandboxRule;", "updateSearchQuery", "query", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<IsolationUiState> _uiState;
    private final IsolationDataStore isolationDataStore;
    private final OneClickIsolationHelper oneClickIsolationHelper;
    private final RootHider rootHider;
    private final StateFlow<IsolationUiState> uiState;

    /* compiled from: IsolationViewModel.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[AppFilterTab.values().length];
            try {
                iArr[AppFilterTab.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[AppFilterTab.USER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[AppFilterTab.SYSTEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[OneClickIsolationPreset.values().length];
            try {
                iArr2[OneClickIsolationPreset.CONSERVATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr2[OneClickIsolationPreset.BALANCED.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr2[OneClickIsolationPreset.AGGRESSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[IsolationLevel.values().length];
            try {
                iArr3[IsolationLevel.STRICT.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr3[IsolationLevel.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr3[IsolationLevel.BASIC.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr3[IsolationLevel.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @Inject
    public IsolationViewModel(IsolationDataStore isolationDataStore, RootHider rootHider, OneClickIsolationHelper oneClickIsolationHelper) {
        Intrinsics.checkNotNullParameter(isolationDataStore, "isolationDataStore");
        Intrinsics.checkNotNullParameter(rootHider, "rootHider");
        Intrinsics.checkNotNullParameter(oneClickIsolationHelper, "oneClickIsolationHelper");
        this.isolationDataStore = isolationDataStore;
        this.rootHider = rootHider;
        this.oneClickIsolationHelper = oneClickIsolationHelper;
        MutableStateFlow<IsolationUiState> MutableStateFlow = StateFlowKt.MutableStateFlow(new IsolationUiState(false, null, null, false, null, null, false, null, null, null, null, false, false, null, null, null, false, false, 262143, null));
        this._uiState = MutableStateFlow;
        this.uiState = FlowKt.asStateFlow(MutableStateFlow);
        loadSettings();
        loadSandboxStats();
        loadAppList();
        checkRootPermission();
    }

    public final StateFlow<IsolationUiState> getUiState() {
        return this.uiState;
    }

    public final void setRootPermission(boolean hasPermission) {
        Object prevValue$iv;
        Object nextValue$iv;
        MutableStateFlow $this$update$iv = this._uiState;
        do {
            prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            nextValue$iv = IsolationUiState.copy$default(it, false, null, null, false, null, null, false, null, null, null, null, false, hasPermission, null, null, null, false, false, 258047, null);
        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
    }

    private final void checkRootPermission() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$checkRootPermission$1(this, null), 3, (Object) null);
    }

    private final void loadSettings() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$loadSettings$1(this, null), 3, (Object) null);
    }

    private final void loadSandboxStats() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$loadSandboxStats$1(this, null), 3, (Object) null);
    }

    public final void loadAppList() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$loadAppList$1(this, null), 3, (Object) null);
    }

    public final void forceDenyList() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$forceDenyList$1(this, null), 3, (Object) null);
    }

    public final void applyFullPropSpoof() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$applyFullPropSpoof$1(this, null), 3, (Object) null);
    }

    public final void updateSearchQuery(String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        MutableStateFlow $this$update$iv = this._uiState;
        while (true) {
            Object prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            MutableStateFlow $this$update$iv2 = $this$update$iv;
            Object nextValue$iv = IsolationUiState.copy$default(it, false, null, null, false, null, null, false, null, null, null, null, false, false, query, null, null, false, false, 253951, null);
            if ($this$update$iv2.compareAndSet(prevValue$iv, nextValue$iv)) {
                return;
            } else {
                $this$update$iv = $this$update$iv2;
            }
        }
    }

    public final void setActiveTab(AppFilterTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        MutableStateFlow $this$update$iv = this._uiState;
        while (true) {
            Object prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            MutableStateFlow $this$update$iv2 = $this$update$iv;
            Object nextValue$iv = IsolationUiState.copy$default(it, false, null, null, false, null, null, false, null, null, null, null, false, false, null, tab, null, false, false, 245759, null);
            if ($this$update$iv2.compareAndSet(prevValue$iv, nextValue$iv)) {
                return;
            } else {
                $this$update$iv = $this$update$iv2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.rootguard.app.utils.OneClickIsolationHelper.AppInfo> getFilteredApps() {
        /*
            r18 = this;
            r0 = r18
            kotlinx.coroutines.flow.MutableStateFlow<com.rootguard.app.ui.screens.isolation.IsolationUiState> r1 = r0._uiState
            java.lang.Object r1 = r1.getValue()
            com.rootguard.app.ui.screens.isolation.IsolationUiState r1 = (com.rootguard.app.ui.screens.isolation.IsolationUiState) r1
            java.lang.String r2 = r1.getSearchQuery()
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            java.lang.CharSequence r2 = kotlin.text.StringsKt.trim(r2)
            java.lang.String r2 = r2.toString()
            java.util.Locale r3 = java.util.Locale.ROOT
            java.lang.String r2 = r2.toLowerCase(r3)
            java.lang.String r3 = "toLowerCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            com.rootguard.app.ui.screens.isolation.AppFilterTab r4 = r1.getActiveTab()
            int[] r5 = com.rootguard.app.ui.screens.isolation.IsolationViewModel.WhenMappings.$EnumSwitchMapping$0
            int r4 = r4.ordinal()
            r4 = r5[r4]
            switch(r4) {
                case 1: goto L42;
                case 2: goto L3d;
                case 3: goto L38;
                default: goto L32;
            }
        L32:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r0.<init>()
            throw r0
        L38:
            java.util.List r4 = r1.getSystemApps()
            goto L52
        L3d:
            java.util.List r4 = r1.getUserApps()
            goto L52
        L42:
            java.util.List r4 = r1.getUserApps()
            java.util.Collection r4 = (java.util.Collection) r4
            java.util.List r5 = r1.getSystemApps()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.List r4 = kotlin.collections.CollectionsKt.plus(r4, r5)
        L52:
            r5 = r2
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5
            int r5 = r5.length()
            if (r5 != 0) goto L5e
            r5 = 1
            goto L5f
        L5e:
            r5 = 0
        L5f:
            if (r5 == 0) goto L68
            r16 = r1
            r0 = r4
            r17 = r0
            goto Ld6
        L68:
            r5 = r4
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            r8 = 0
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.Collection r9 = (java.util.Collection) r9
            r10 = r5
            r11 = 0
            java.util.Iterator r12 = r10.iterator()
        L79:
            boolean r13 = r12.hasNext()
            if (r13 == 0) goto Lce
            java.lang.Object r13 = r12.next()
            r14 = r13
            com.rootguard.app.utils.OneClickIsolationHelper$AppInfo r14 = (com.rootguard.app.utils.OneClickIsolationHelper.AppInfo) r14
            r15 = 0
            java.lang.String r6 = r14.getAppName()
            java.util.Locale r7 = java.util.Locale.ROOT
            java.lang.String r6 = r6.toLowerCase(r7)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6
            r7 = r2
            java.lang.CharSequence r7 = (java.lang.CharSequence) r7
            r0 = 2
            r16 = r1
            r1 = 0
            r17 = r4
            r4 = 0
            boolean r6 = kotlin.text.StringsKt.contains$default(r6, r7, r4, r0, r1)
            if (r6 != 0) goto Lc1
            java.lang.String r6 = r14.getPackageName()
            java.util.Locale r7 = java.util.Locale.ROOT
            java.lang.String r6 = r6.toLowerCase(r7)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6
            r7 = r2
            java.lang.CharSequence r7 = (java.lang.CharSequence) r7
            boolean r0 = kotlin.text.StringsKt.contains$default(r6, r7, r4, r0, r1)
            if (r0 == 0) goto Lbf
            goto Lc1
        Lbf:
            r0 = r4
            goto Lc2
        Lc1:
            r0 = 1
        Lc2:
            if (r0 == 0) goto Lc7
            r9.add(r13)
        Lc7:
            r0 = r18
            r1 = r16
            r4 = r17
            goto L79
        Lce:
            r16 = r1
            r17 = r4
            r0 = r9
            java.util.List r0 = (java.util.List) r0
        Ld6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationViewModel.getFilteredApps():java.util.List");
    }

    public final void setOneClickPreset(OneClickIsolationPreset p) {
        Intrinsics.checkNotNullParameter(p, "p");
        MutableStateFlow $this$update$iv = this._uiState;
        while (true) {
            Object prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            MutableStateFlow $this$update$iv2 = $this$update$iv;
            Object nextValue$iv = IsolationUiState.copy$default(it, false, null, null, false, null, null, false, null, null, null, null, false, false, null, null, p, false, false, 229375, null);
            if ($this$update$iv2.compareAndSet(prevValue$iv, nextValue$iv)) {
                return;
            } else {
                $this$update$iv = $this$update$iv2;
            }
        }
    }

    public final String getPresetLabel(OneClickIsolationPreset p) {
        Intrinsics.checkNotNullParameter(p, "p");
        switch (WhenMappings.$EnumSwitchMapping$1[p.ordinal()]) {
            case 1:
                return "基础隔离";
            case 2:
                return "中等隔离";
            case 3:
                return "最高隔离";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final String getPresetEmoji(OneClickIsolationPreset p) {
        Intrinsics.checkNotNullParameter(p, "p");
        switch (WhenMappings.$EnumSwitchMapping$1[p.ordinal()]) {
            case 1:
                return "🔓";
            case 2:
                return "⚖️";
            case 3:
                return "🔒";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void toggleAppIsolation(OneClickIsolationHelper.AppInfo appInfo) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Logger.INSTANCE.d("toggleAppIsolation: 开始处理 " + appInfo.getAppName() + " (" + appInfo.getPackageName() + ")");
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$toggleAppIsolation$1(this, appInfo, null), 3, (Object) null);
    }

    public final void loadAppConfig(String packageName, String appName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$loadAppConfig$1(this, packageName, appName, null), 3, (Object) null);
    }

    public final void toggleGlobalIsolation(boolean enabled) {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$toggleGlobalIsolation$1(this, enabled, null), 3, (Object) null);
    }

    public final void updateConfig(IsolationConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        MutableStateFlow $this$update$iv = this._uiState;
        while (true) {
            Object prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            MutableStateFlow $this$update$iv2 = $this$update$iv;
            Object nextValue$iv = IsolationUiState.copy$default(it, false, config, null, false, null, null, false, null, null, null, null, false, false, null, null, null, false, false, 262141, null);
            if ($this$update$iv2.compareAndSet(prevValue$iv, nextValue$iv)) {
                return;
            } else {
                $this$update$iv = $this$update$iv2;
            }
        }
    }

    public final void saveConfig() {
        IsolationConfig config = ((IsolationUiState) this._uiState.getValue()).getCurrentConfig();
        if (config == null) {
            return;
        }
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$saveConfig$1(this, config, null), 3, (Object) null);
    }

    public final void applyPreset(String packageName, String appName, IsolationLevel level) {
        IsolationConfig bankingPreset;
        Object prevValue$iv;
        IsolationUiState it;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        Intrinsics.checkNotNullParameter(level, "level");
        switch (WhenMappings.$EnumSwitchMapping$2[level.ordinal()]) {
            case 1:
                bankingPreset = IsolationPresets.INSTANCE.bankingPreset(packageName, appName);
                break;
            case 2:
                bankingPreset = IsolationPresets.INSTANCE.gamingPreset(packageName, appName);
                break;
            case 3:
                bankingPreset = IsolationPresets.INSTANCE.socialPreset(packageName, appName);
                break;
            case 4:
                bankingPreset = new IsolationConfig(packageName, appName, false, false, false, false, false, false, false, false, (Map) null, (SandboxRule) null, false, false, false, (List) null, 65528, (DefaultConstructorMarker) null);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        IsolationConfig preset = bankingPreset;
        MutableStateFlow $this$update$iv = this._uiState;
        do {
            prevValue$iv = $this$update$iv.getValue();
            it = (IsolationUiState) prevValue$iv;
        } while (!$this$update$iv.compareAndSet(prevValue$iv, IsolationUiState.copy$default(it, false, preset, null, false, null, null, false, null, null, null, null, false, false, null, null, null, false, false, 262141, null)));
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$applyPreset$2(this, preset, null), 3, (Object) null);
    }

    public final void removeIsolation(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$removeIsolation$1(this, packageName, null), 3, (Object) null);
    }

    public final void toggleSandboxRules() {
        Object prevValue$iv;
        Object nextValue$iv;
        MutableStateFlow $this$update$iv = this._uiState;
        do {
            prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            nextValue$iv = IsolationUiState.copy$default(it, false, null, null, false, null, null, !it.getShowSandboxRules(), null, null, null, null, false, false, null, null, null, false, false, 262079, null);
        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
    }

    public final void updateSandboxRule(SandboxRule rule) {
        Object prevValue$iv;
        Object nextValue$iv;
        Intrinsics.checkNotNullParameter(rule, "rule");
        IsolationConfig c = ((IsolationUiState) this._uiState.getValue()).getCurrentConfig();
        if (c == null) {
            return;
        }
        MutableStateFlow $this$update$iv = this._uiState;
        do {
            prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            nextValue$iv = IsolationUiState.copy$default(it, false, IsolationConfig.copy$default(c, (String) null, (String) null, false, false, false, false, false, false, false, false, (Map) null, rule, false, false, false, (List) null, 63487, (Object) null), null, false, null, null, false, null, null, null, null, false, false, null, null, null, false, false, 262141, null);
        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
    }

    public final void startOneClickIsolation() {
        OneClickIsolationPreset preset = ((IsolationUiState) this._uiState.getValue()).getSelectedOneClickPreset();
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$startOneClickIsolation$1(this, preset, null), 3, (Object) null);
    }

    public final void resetOneClickProgress() {
        Object prevValue$iv;
        Object nextValue$iv;
        MutableStateFlow $this$update$iv = this._uiState;
        do {
            prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            nextValue$iv = IsolationUiState.copy$default(it, false, null, null, false, null, null, false, null, new OneClickProgress(false, 0, 0, null, 15, null), null, null, false, false, null, null, null, false, false, 261887, null);
        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
    }

    public final void clearIsolationLogs() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$clearIsolationLogs$1(this, null), 3, (Object) null);
    }

    public final Flow<List<IsolationEvent>> getIsolationEvents() {
        return this.isolationDataStore.getIsolationEvents();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearMessageAfterDelay() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new IsolationViewModel$clearMessageAfterDelay$1(this, null), 3, (Object) null);
    }

    public final void clearError() {
        Object prevValue$iv;
        Object nextValue$iv;
        MutableStateFlow $this$update$iv = this._uiState;
        do {
            prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            nextValue$iv = IsolationUiState.copy$default(it, false, null, null, false, null, null, false, null, null, null, null, false, false, null, null, null, false, false, 262127, null);
        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
    }
}
