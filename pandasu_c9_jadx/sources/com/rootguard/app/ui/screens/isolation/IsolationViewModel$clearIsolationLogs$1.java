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
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$clearIsolationLogs$1", f = "IsolationViewModel.kt", i = {}, l = {420}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
final class IsolationViewModel$clearIsolationLogs$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$clearIsolationLogs$1(IsolationViewModel isolationViewModel, Continuation<? super IsolationViewModel$clearIsolationLogs$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$clearIsolationLogs$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object $result) {
        IsolationDataStore isolationDataStore;
        IsolationViewModel$clearIsolationLogs$1 isolationViewModel$clearIsolationLogs$1;
        MutableStateFlow $this$update$iv;
        Object prevValue$iv;
        Object nextValue$iv;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                isolationDataStore = this.this$0.isolationDataStore;
                this.label = 1;
                if (isolationDataStore.clearIsolationLogs((Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                isolationViewModel$clearIsolationLogs$1 = this;
                break;
            case 1:
                isolationViewModel$clearIsolationLogs$1 = this;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        $this$update$iv = isolationViewModel$clearIsolationLogs$1.this$0._uiState;
        do {
            prevValue$iv = $this$update$iv.getValue();
            IsolationUiState it = (IsolationUiState) prevValue$iv;
            nextValue$iv = it.copy((r36 & 1) != 0 ? it.globalEnabled : false, (r36 & 2) != 0 ? it.currentConfig : null, (r36 & 4) != 0 ? it.isolatedApps : null, (r36 & 8) != 0 ? it.isLoading : false, (r36 & 16) != 0 ? it.errorMessage : null, (r36 & 32) != 0 ? it.successMessage : "日志已清除", (r36 & 64) != 0 ? it.showSandboxRules : false, (r36 & 128) != 0 ? it.isolationStats : null, (r36 & 256) != 0 ? it.oneClickProgress : null, (r36 & 512) != 0 ? it.userApps : null, (r36 & 1024) != 0 ? it.systemApps : null, (r36 & 2048) != 0 ? it.isAppListLoading : false, (r36 & 4096) != 0 ? it.hasRootPermission : false, (r36 & 8192) != 0 ? it.searchQuery : null, (r36 & 16384) != 0 ? it.activeTab : null, (r36 & 32768) != 0 ? it.selectedOneClickPreset : null, (r36 & 65536) != 0 ? it.isDenyListEnabled : false, (r36 & 131072) != 0 ? it.isPropSpoofEnabled : false);
        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
        isolationViewModel$clearIsolationLogs$1.this$0.clearMessageAfterDelay();
        return Unit.INSTANCE;
    }
}
