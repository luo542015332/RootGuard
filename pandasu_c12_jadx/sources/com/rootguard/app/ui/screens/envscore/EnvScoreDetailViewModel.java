package com.rootguard.app.ui.screens.envscore;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.rootguard.app.data.kernelsu.KernelSUService;
import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.util.DetectorScanner;
import com.rootguard.app.utils.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: EnvScoreDetailViewModel.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0018\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020'0&0\u000bJ\u0018\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130&0\u000bJ\u0018\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130&0\u000bJ\u0006\u0010*\u001a\u00020#J\u0006\u0010+\u001a\u00020#R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u000b0\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00100\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00100\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u001d\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u000b0\u0017¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/rootguard/app/ui/screens/envscore/EnvScoreDetailViewModel;", "Landroidx/lifecycle/ViewModel;", "rootHider", "Lcom/rootguard/app/data/magisk/RootHider;", "detectorScanner", "Lcom/rootguard/app/util/DetectorScanner;", "isolationDataStore", "Lcom/rootguard/app/data/local/IsolationDataStore;", "(Lcom/rootguard/app/data/magisk/RootHider;Lcom/rootguard/app/util/DetectorScanner;Lcom/rootguard/app/data/local/IsolationDataStore;)V", "_detectorResults", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lcom/rootguard/app/util/DetectorScanner$DetectedApp;", "_envChecks", "Lcom/rootguard/app/data/magisk/RootHider$DetectionResult;", "_isLoading", "", "_isScanning", "_message", "", "_moduleStatuses", "Lcom/rootguard/app/data/magisk/RootHider$ModuleStatus;", "detectorResults", "Lkotlinx/coroutines/flow/StateFlow;", "getDetectorResults", "()Lkotlinx/coroutines/flow/StateFlow;", "envChecks", "getEnvChecks", "isLoading", "isScanning", "message", "getMessage", "moduleStatuses", "getModuleStatuses", "autoIsolateDetectors", "", "clearMessage", "getDetectedProblems", "Lkotlin/Pair;", "", "getMissingModules", "getSuggestions", "loadData", "scanDetectors", "app_debug"}, k = 1, mv = {1, 9, KernelSUService.$stable}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<List<DetectorScanner.DetectedApp>> _detectorResults;
    private final MutableStateFlow<List<RootHider.DetectionResult>> _envChecks;
    private final MutableStateFlow<Boolean> _isLoading;
    private final MutableStateFlow<Boolean> _isScanning;
    private final MutableStateFlow<String> _message;
    private final MutableStateFlow<List<RootHider.ModuleStatus>> _moduleStatuses;
    private final StateFlow<List<DetectorScanner.DetectedApp>> detectorResults;
    private final DetectorScanner detectorScanner;
    private final StateFlow<List<RootHider.DetectionResult>> envChecks;
    private final StateFlow<Boolean> isLoading;
    private final StateFlow<Boolean> isScanning;
    private final IsolationDataStore isolationDataStore;
    private final StateFlow<String> message;
    private final StateFlow<List<RootHider.ModuleStatus>> moduleStatuses;
    private final RootHider rootHider;

    @Inject
    public EnvScoreDetailViewModel(RootHider rootHider, DetectorScanner detectorScanner, IsolationDataStore isolationDataStore) {
        Intrinsics.checkNotNullParameter(rootHider, "rootHider");
        Intrinsics.checkNotNullParameter(detectorScanner, "detectorScanner");
        Intrinsics.checkNotNullParameter(isolationDataStore, "isolationDataStore");
        this.rootHider = rootHider;
        this.detectorScanner = detectorScanner;
        this.isolationDataStore = isolationDataStore;
        MutableStateFlow<List<RootHider.DetectionResult>> MutableStateFlow = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this._envChecks = MutableStateFlow;
        this.envChecks = FlowKt.asStateFlow(MutableStateFlow);
        MutableStateFlow<List<RootHider.ModuleStatus>> MutableStateFlow2 = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this._moduleStatuses = MutableStateFlow2;
        this.moduleStatuses = FlowKt.asStateFlow(MutableStateFlow2);
        MutableStateFlow<Boolean> MutableStateFlow3 = StateFlowKt.MutableStateFlow(false);
        this._isLoading = MutableStateFlow3;
        this.isLoading = FlowKt.asStateFlow(MutableStateFlow3);
        MutableStateFlow<List<DetectorScanner.DetectedApp>> MutableStateFlow4 = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this._detectorResults = MutableStateFlow4;
        this.detectorResults = FlowKt.asStateFlow(MutableStateFlow4);
        MutableStateFlow<Boolean> MutableStateFlow5 = StateFlowKt.MutableStateFlow(false);
        this._isScanning = MutableStateFlow5;
        this.isScanning = FlowKt.asStateFlow(MutableStateFlow5);
        MutableStateFlow<String> MutableStateFlow6 = StateFlowKt.MutableStateFlow((Object) null);
        this._message = MutableStateFlow6;
        this.message = FlowKt.asStateFlow(MutableStateFlow6);
        Logger.INSTANCE.d("EnvScoreDetailViewModel: 初始化，开始加载数据");
        loadData();
        scanDetectors();
    }

    public final StateFlow<List<RootHider.DetectionResult>> getEnvChecks() {
        return this.envChecks;
    }

    public final StateFlow<List<RootHider.ModuleStatus>> getModuleStatuses() {
        return this.moduleStatuses;
    }

    public final StateFlow<Boolean> isLoading() {
        return this.isLoading;
    }

    public final StateFlow<List<DetectorScanner.DetectedApp>> getDetectorResults() {
        return this.detectorResults;
    }

    public final StateFlow<Boolean> isScanning() {
        return this.isScanning;
    }

    public final StateFlow<String> getMessage() {
        return this.message;
    }

    public final void loadData() {
        Logger.INSTANCE.d("EnvScoreDetailViewModel: loadData() 被调用");
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new EnvScoreDetailViewModel$loadData$1(this, null), 3, (Object) null);
    }

    public final List<Pair<String, String>> getSuggestions() {
        List suggestions = new ArrayList();
        Iterable checks = (List) this._envChecks.getValue();
        Iterable $this$forEach$iv = checks;
        for (Object element$iv : $this$forEach$iv) {
            RootHider.DetectionResult check = (RootHider.DetectionResult) element$iv;
            if (StringsKt.contains$default(check.getItem().name(), "Shamiko", false, 2, (Object) null) && check.getDetected()) {
                suggestions.add(TuplesKt.to("Shamiko", "安装 Shamiko 模块隐藏 Root 痕迹"));
            } else if (StringsKt.contains$default(check.getItem().name(), "Tricky", false, 2, (Object) null) && check.getDetected()) {
                suggestions.add(TuplesKt.to("Tricky Store", "安装 Tricky Store 模块隐藏 Magisk 管理器"));
            } else if (StringsKt.contains$default(check.getItem().name(), "PlayIntegrityFix", false, 2, (Object) null) && check.getDetected()) {
                suggestions.add(TuplesKt.to("PlayIntegrityFix", "安装 PlayIntegrityFix 修复 Google 设备完整性"));
            } else if (StringsKt.contains$default(check.getItem().name(), "su 二进制", false, 2, (Object) null) && check.getDetected()) {
                suggestions.add(TuplesKt.to("隐藏 su 文件", "使用一键隔离功能隐藏 su 文件"));
            } else if (StringsKt.contains$default(check.getItem().name(), "Root 应用", false, 2, (Object) null) && check.getDetected()) {
                suggestions.add(TuplesKt.to("隐藏 Root 应用", "使用 Shamiko 或 HMA 隐藏 Root 应用"));
            }
        }
        return suggestions;
    }

    public final List<Pair<String, String>> getMissingModules() {
        List missing = new ArrayList();
        Iterable checks = (List) this._envChecks.getValue();
        Iterable $this$forEach$iv = checks;
        for (Object element$iv : $this$forEach$iv) {
            RootHider.DetectionResult check = (RootHider.DetectionResult) element$iv;
            if (StringsKt.contains$default(check.getItem().name(), "Shamiko", false, 2, (Object) null) && check.getDetected()) {
                missing.add(TuplesKt.to("Shamiko", "隐藏 Root/Zygisk 级模块"));
            } else if (StringsKt.contains$default(check.getItem().name(), "Tricky", false, 2, (Object) null) && check.getDetected()) {
                missing.add(TuplesKt.to("Tricky Store", "隐藏 Magisk 管理器"));
            } else if (StringsKt.contains$default(check.getItem().name(), "PlayIntegrityFix", false, 2, (Object) null) && check.getDetected()) {
                missing.add(TuplesKt.to("PlayIntegrityFix", "Google 设备完整性修复"));
            }
        }
        return missing;
    }

    public final List<Pair<String, Integer>> getDetectedProblems() {
        Iterable $this$filter$iv = (Iterable) this._envChecks.getValue();
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$filter$iv) {
            if (((RootHider.DetectionResult) element$iv$iv).getDetected()) {
                destination$iv$iv.add(element$iv$iv);
            }
        }
        Iterable $this$map$iv = (List) destination$iv$iv;
        Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            RootHider.DetectionResult it = (RootHider.DetectionResult) item$iv$iv;
            destination$iv$iv2.add(TuplesKt.to(it.getLabel(), Integer.valueOf(it.getSeverity())));
        }
        return (List) destination$iv$iv2;
    }

    public final void scanDetectors() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new EnvScoreDetailViewModel$scanDetectors$1(this, null), 3, (Object) null);
    }

    public final void autoIsolateDetectors() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), (CoroutineContext) null, (CoroutineStart) null, new EnvScoreDetailViewModel$autoIsolateDetectors$1(this, null), 3, (Object) null);
    }

    public final void clearMessage() {
        this._message.setValue((Object) null);
    }
}
