package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.model.IsolationConfig;
import com.rootguard.app.data.model.SandboxRule;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadAppConfig$1", f = "IsolationViewModel.kt", i = {}, l = {228}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$loadAppConfig$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $appName;
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$loadAppConfig$1(IsolationViewModel isolationViewModel, String str, String str2, Continuation<? super IsolationViewModel$loadAppConfig$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
        this.$packageName = str;
        this.$appName = str2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$loadAppConfig$1(this.this$0, this.$packageName, this.$appName, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        Object value;
        IsolationUiState copy;
        Object obj2;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        IsolationUiState copy2;
        IsolationDataStore isolationDataStore;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        IsolationViewModel$loadAppConfig$1 isolationViewModel$loadAppConfig$1 = this.label;
        try {
            switch (isolationViewModel$loadAppConfig$1) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    IsolationViewModel$loadAppConfig$1 isolationViewModel$loadAppConfig$12 = this;
                    obj2 = obj;
                    mutableStateFlow2 = isolationViewModel$loadAppConfig$12.this$0._uiState;
                    do {
                        value2 = mutableStateFlow2.getValue();
                        copy2 = r28.copy((r36 & 1) != 0 ? r28.globalEnabled : false, (r36 & 2) != 0 ? r28.currentConfig : null, (r36 & 4) != 0 ? r28.isolatedApps : null, (r36 & 8) != 0 ? r28.isLoading : true, (r36 & 16) != 0 ? r28.errorMessage : null, (r36 & 32) != 0 ? r28.successMessage : null, (r36 & 64) != 0 ? r28.showSandboxRules : false, (r36 & 128) != 0 ? r28.isolationStats : null, (r36 & 256) != 0 ? r28.oneClickProgress : null, (r36 & 512) != 0 ? r28.userApps : null, (r36 & 1024) != 0 ? r28.systemApps : null, (r36 & 2048) != 0 ? r28.isAppListLoading : false, (r36 & 4096) != 0 ? r28.hasRootPermission : false, (r36 & 8192) != 0 ? r28.searchQuery : null, (r36 & 16384) != 0 ? r28.activeTab : null, (r36 & 32768) != 0 ? r28.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r28.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value2).isPropSpoofEnabled : false);
                    } while (!mutableStateFlow2.compareAndSet(value2, copy2));
                    isolationDataStore = isolationViewModel$loadAppConfig$12.this$0.isolationDataStore;
                    Flow configForApp = isolationDataStore.getConfigForApp(isolationViewModel$loadAppConfig$12.$packageName);
                    final IsolationViewModel isolationViewModel = isolationViewModel$loadAppConfig$12.this$0;
                    final String str = isolationViewModel$loadAppConfig$12.$packageName;
                    final String str2 = isolationViewModel$loadAppConfig$12.$appName;
                    isolationViewModel$loadAppConfig$12.label = 1;
                    Object collect = configForApp.collect(new FlowCollector() { // from class: com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadAppConfig$1.2
                        public /* bridge */ /* synthetic */ Object emit(Object value3, Continuation $completion) {
                            return emit((IsolationConfig) value3, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(IsolationConfig config, Continuation<? super Unit> continuation) {
                            MutableStateFlow $this$update$iv;
                            String str3;
                            String str4;
                            Object prevValue$iv;
                            IsolationConfig isolationConfig;
                            Object nextValue$iv;
                            $this$update$iv = IsolationViewModel.this._uiState;
                            String str5 = str;
                            String str6 = str2;
                            while (true) {
                                Object prevValue$iv2 = $this$update$iv.getValue();
                                IsolationUiState it = (IsolationUiState) prevValue$iv2;
                                if (config == null) {
                                    prevValue$iv = prevValue$iv2;
                                    str3 = str6;
                                    str4 = str5;
                                    isolationConfig = new IsolationConfig(str5, str3, false, false, false, false, false, false, false, false, (Map) null, (SandboxRule) null, false, false, false, (List) null, 65532, (DefaultConstructorMarker) null);
                                } else {
                                    str3 = str6;
                                    str4 = str5;
                                    prevValue$iv = prevValue$iv2;
                                    isolationConfig = config;
                                }
                                nextValue$iv = it.copy((r36 & 1) != 0 ? it.globalEnabled : false, (r36 & 2) != 0 ? it.currentConfig : isolationConfig, (r36 & 4) != 0 ? it.isolatedApps : null, (r36 & 8) != 0 ? it.isLoading : false, (r36 & 16) != 0 ? it.errorMessage : null, (r36 & 32) != 0 ? it.successMessage : null, (r36 & 64) != 0 ? it.showSandboxRules : false, (r36 & 128) != 0 ? it.isolationStats : null, (r36 & 256) != 0 ? it.oneClickProgress : null, (r36 & 512) != 0 ? it.userApps : null, (r36 & 1024) != 0 ? it.systemApps : null, (r36 & 2048) != 0 ? it.isAppListLoading : false, (r36 & 4096) != 0 ? it.hasRootPermission : false, (r36 & 8192) != 0 ? it.searchQuery : null, (r36 & 16384) != 0 ? it.activeTab : null, (r36 & 32768) != 0 ? it.selectedOneClickPreset : null, (r36 & 65536) != 0 ? it.isDenyListEnabled : false, (r36 & 131072) != 0 ? it.isPropSpoofEnabled : false);
                                if ($this$update$iv.compareAndSet(prevValue$iv, nextValue$iv)) {
                                    return Unit.INSTANCE;
                                }
                                str6 = str3;
                                str5 = str4;
                            }
                        }
                    }, (Continuation) isolationViewModel$loadAppConfig$12);
                    isolationViewModel$loadAppConfig$1 = isolationViewModel$loadAppConfig$12;
                    if (collect == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    isolationViewModel$loadAppConfig$1 = this;
                    obj2 = obj;
                    ResultKt.throwOnFailure(obj2);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Exception e) {
            mutableStateFlow = isolationViewModel$loadAppConfig$1.this$0._uiState;
            do {
                value = mutableStateFlow.getValue();
                copy = r2.copy((r36 & 1) != 0 ? r2.globalEnabled : false, (r36 & 2) != 0 ? r2.currentConfig : null, (r36 & 4) != 0 ? r2.isolatedApps : null, (r36 & 8) != 0 ? r2.isLoading : false, (r36 & 16) != 0 ? r2.errorMessage : "加载失败", (r36 & 32) != 0 ? r2.successMessage : null, (r36 & 64) != 0 ? r2.showSandboxRules : false, (r36 & 128) != 0 ? r2.isolationStats : null, (r36 & 256) != 0 ? r2.oneClickProgress : null, (r36 & 512) != 0 ? r2.userApps : null, (r36 & 1024) != 0 ? r2.systemApps : null, (r36 & 2048) != 0 ? r2.isAppListLoading : false, (r36 & 4096) != 0 ? r2.hasRootPermission : false, (r36 & 8192) != 0 ? r2.searchQuery : null, (r36 & 16384) != 0 ? r2.activeTab : null, (r36 & 32768) != 0 ? r2.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r2.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value).isPropSpoofEnabled : false);
            } while (!mutableStateFlow.compareAndSet(value, copy));
        }
        return Unit.INSTANCE;
    }
}
