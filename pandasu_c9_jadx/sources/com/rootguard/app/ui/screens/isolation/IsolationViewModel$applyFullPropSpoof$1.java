package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.magisk.RootHider;
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

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$applyFullPropSpoof$1", f = "IsolationViewModel.kt", i = {}, l = {132}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$applyFullPropSpoof$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$applyFullPropSpoof$1(IsolationViewModel isolationViewModel, Continuation<? super IsolationViewModel$applyFullPropSpoof$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$applyFullPropSpoof$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.rootguard.app.ui.screens.isolation.IsolationViewModel$applyFullPropSpoof$1] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.rootguard.app.ui.screens.isolation.IsolationViewModel$applyFullPropSpoof$1] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        Object value;
        IsolationUiState copy;
        Object obj2;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        IsolationUiState copy2;
        RootHider rootHider;
        MutableStateFlow mutableStateFlow3;
        Object value3;
        IsolationUiState copy3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = this.label;
        try {
            switch (r2) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    IsolationViewModel$applyFullPropSpoof$1 isolationViewModel$applyFullPropSpoof$1 = this;
                    obj2 = obj;
                    mutableStateFlow2 = isolationViewModel$applyFullPropSpoof$1.this$0._uiState;
                    do {
                        value2 = mutableStateFlow2.getValue();
                        copy2 = r28.copy((r36 & 1) != 0 ? r28.globalEnabled : false, (r36 & 2) != 0 ? r28.currentConfig : null, (r36 & 4) != 0 ? r28.isolatedApps : null, (r36 & 8) != 0 ? r28.isLoading : true, (r36 & 16) != 0 ? r28.errorMessage : null, (r36 & 32) != 0 ? r28.successMessage : null, (r36 & 64) != 0 ? r28.showSandboxRules : false, (r36 & 128) != 0 ? r28.isolationStats : null, (r36 & 256) != 0 ? r28.oneClickProgress : null, (r36 & 512) != 0 ? r28.userApps : null, (r36 & 1024) != 0 ? r28.systemApps : null, (r36 & 2048) != 0 ? r28.isAppListLoading : false, (r36 & 4096) != 0 ? r28.hasRootPermission : false, (r36 & 8192) != 0 ? r28.searchQuery : null, (r36 & 16384) != 0 ? r28.activeTab : null, (r36 & 32768) != 0 ? r28.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r28.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value2).isPropSpoofEnabled : false);
                    } while (!mutableStateFlow2.compareAndSet(value2, copy2));
                    rootHider = isolationViewModel$applyFullPropSpoof$1.this$0.rootHider;
                    isolationViewModel$applyFullPropSpoof$1.label = 1;
                    Object applyFullPropSpoof = rootHider.applyFullPropSpoof((Continuation) isolationViewModel$applyFullPropSpoof$1);
                    r2 = isolationViewModel$applyFullPropSpoof$1;
                    if (applyFullPropSpoof == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    r2 = this;
                    obj2 = obj;
                    ResultKt.throwOnFailure(obj2);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutableStateFlow3 = r2.this$0._uiState;
            do {
                value3 = mutableStateFlow3.getValue();
                copy3 = r6.copy((r36 & 1) != 0 ? r6.globalEnabled : false, (r36 & 2) != 0 ? r6.currentConfig : null, (r36 & 4) != 0 ? r6.isolatedApps : null, (r36 & 8) != 0 ? r6.isLoading : false, (r36 & 16) != 0 ? r6.errorMessage : null, (r36 & 32) != 0 ? r6.successMessage : "属性伪装已应用", (r36 & 64) != 0 ? r6.showSandboxRules : false, (r36 & 128) != 0 ? r6.isolationStats : null, (r36 & 256) != 0 ? r6.oneClickProgress : null, (r36 & 512) != 0 ? r6.userApps : null, (r36 & 1024) != 0 ? r6.systemApps : null, (r36 & 2048) != 0 ? r6.isAppListLoading : false, (r36 & 4096) != 0 ? r6.hasRootPermission : false, (r36 & 8192) != 0 ? r6.searchQuery : null, (r36 & 16384) != 0 ? r6.activeTab : null, (r36 & 32768) != 0 ? r6.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r6.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value3).isPropSpoofEnabled : true);
            } while (!mutableStateFlow3.compareAndSet(value3, copy3));
        } catch (Exception e) {
            IsolationViewModel$applyFullPropSpoof$1 isolationViewModel$applyFullPropSpoof$12 = r2;
            mutableStateFlow = isolationViewModel$applyFullPropSpoof$12.this$0._uiState;
            do {
                value = mutableStateFlow.getValue();
                copy = r2.copy((r36 & 1) != 0 ? r2.globalEnabled : false, (r36 & 2) != 0 ? r2.currentConfig : null, (r36 & 4) != 0 ? r2.isolatedApps : null, (r36 & 8) != 0 ? r2.isLoading : false, (r36 & 16) != 0 ? r2.errorMessage : "失败: " + e.getMessage(), (r36 & 32) != 0 ? r2.successMessage : null, (r36 & 64) != 0 ? r2.showSandboxRules : false, (r36 & 128) != 0 ? r2.isolationStats : null, (r36 & 256) != 0 ? r2.oneClickProgress : null, (r36 & 512) != 0 ? r2.userApps : null, (r36 & 1024) != 0 ? r2.systemApps : null, (r36 & 2048) != 0 ? r2.isAppListLoading : false, (r36 & 4096) != 0 ? r2.hasRootPermission : false, (r36 & 8192) != 0 ? r2.searchQuery : null, (r36 & 16384) != 0 ? r2.activeTab : null, (r36 & 32768) != 0 ? r2.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r2.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value).isPropSpoofEnabled : false);
            } while (!mutableStateFlow.compareAndSet(value, copy));
            r2 = isolationViewModel$applyFullPropSpoof$12;
        }
        r2.this$0.clearMessageAfterDelay();
        return Unit.INSTANCE;
    }
}
