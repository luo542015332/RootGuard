package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.local.IsolationDataStore;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadSandboxStats$1", f = "IsolationViewModel.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$loadSandboxStats$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$loadSandboxStats$1(IsolationViewModel isolationViewModel, Continuation<? super IsolationViewModel$loadSandboxStats$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$loadSandboxStats$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object $result) {
        IsolationDataStore isolationDataStore;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                isolationDataStore = this.this$0.isolationDataStore;
                Flow sandboxStats = isolationDataStore.getSandboxStats();
                final IsolationViewModel isolationViewModel = this.this$0;
                this.label = 1;
                if (sandboxStats.collect(new FlowCollector() { // from class: com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadSandboxStats$1.1
                    public final Object emit(IsolationDataStore.SandboxStats stats, Continuation<? super Unit> continuation) {
                        MutableStateFlow $this$update$iv;
                        Object prevValue$iv;
                        Object nextValue$iv;
                        $this$update$iv = IsolationViewModel.this._uiState;
                        do {
                            prevValue$iv = $this$update$iv.getValue();
                            IsolationUiState s = (IsolationUiState) prevValue$iv;
                            nextValue$iv = s.copy((r36 & 1) != 0 ? s.globalEnabled : false, (r36 & 2) != 0 ? s.currentConfig : null, (r36 & 4) != 0 ? s.isolatedApps : null, (r36 & 8) != 0 ? s.isLoading : false, (r36 & 16) != 0 ? s.errorMessage : null, (r36 & 32) != 0 ? s.successMessage : null, (r36 & 64) != 0 ? s.showSandboxRules : false, (r36 & 128) != 0 ? s.isolationStats : stats, (r36 & 256) != 0 ? s.oneClickProgress : null, (r36 & 512) != 0 ? s.userApps : null, (r36 & 1024) != 0 ? s.systemApps : null, (r36 & 2048) != 0 ? s.isAppListLoading : false, (r36 & 4096) != 0 ? s.hasRootPermission : false, (r36 & 8192) != 0 ? s.searchQuery : null, (r36 & 16384) != 0 ? s.activeTab : null, (r36 & 32768) != 0 ? s.selectedOneClickPreset : null, (r36 & 65536) != 0 ? s.isDenyListEnabled : false, (r36 & 131072) != 0 ? s.isPropSpoofEnabled : false);
                        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
                        return Unit.INSTANCE;
                    }

                    public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                        return emit((IsolationDataStore.SandboxStats) value, (Continuation<? super Unit>) $completion);
                    }
                }, (Continuation) this) != coroutine_suspended) {
                    break;
                } else {
                    return coroutine_suspended;
                }
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
