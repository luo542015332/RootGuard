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
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$toggleGlobalIsolation$1", f = "IsolationViewModel.kt", i = {}, l = {239}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
final class IsolationViewModel$toggleGlobalIsolation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $enabled;
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$toggleGlobalIsolation$1(IsolationViewModel isolationViewModel, boolean z, Continuation<? super IsolationViewModel$toggleGlobalIsolation$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
        this.$enabled = z;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$toggleGlobalIsolation$1(this.this$0, this.$enabled, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object $result) {
        IsolationDataStore isolationDataStore;
        IsolationViewModel$toggleGlobalIsolation$1 isolationViewModel$toggleGlobalIsolation$1;
        MutableStateFlow $this$update$iv;
        Object prevValue$iv;
        Object nextValue$iv;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                isolationDataStore = this.this$0.isolationDataStore;
                this.label = 1;
                if (isolationDataStore.setGlobalIsolationEnabled(this.$enabled, (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                isolationViewModel$toggleGlobalIsolation$1 = this;
                break;
            case 1:
                isolationViewModel$toggleGlobalIsolation$1 = this;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        $this$update$iv = isolationViewModel$toggleGlobalIsolation$1.this$0._uiState;
        boolean z = isolationViewModel$toggleGlobalIsolation$1.$enabled;
        do {
            prevValue$iv = $this$update$iv.getValue();
            nextValue$iv = r8.copy((r36 & 1) != 0 ? r8.globalEnabled : z, (r36 & 2) != 0 ? r8.currentConfig : null, (r36 & 4) != 0 ? r8.isolatedApps : null, (r36 & 8) != 0 ? r8.isLoading : false, (r36 & 16) != 0 ? r8.errorMessage : null, (r36 & 32) != 0 ? r8.successMessage : z ? "全局隔离已启用" : "已禁用", (r36 & 64) != 0 ? r8.showSandboxRules : false, (r36 & 128) != 0 ? r8.isolationStats : null, (r36 & 256) != 0 ? r8.oneClickProgress : null, (r36 & 512) != 0 ? r8.userApps : null, (r36 & 1024) != 0 ? r8.systemApps : null, (r36 & 2048) != 0 ? r8.isAppListLoading : false, (r36 & 4096) != 0 ? r8.hasRootPermission : false, (r36 & 8192) != 0 ? r8.searchQuery : null, (r36 & 16384) != 0 ? r8.activeTab : null, (r36 & 32768) != 0 ? r8.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r8.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) prevValue$iv).isPropSpoofEnabled : false);
        } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
        isolationViewModel$toggleGlobalIsolation$1.this$0.clearMessageAfterDelay();
        return Unit.INSTANCE;
    }
}
