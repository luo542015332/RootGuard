package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.utils.Logger;
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
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$checkRootPermission$1", f = "IsolationViewModel.kt", i = {}, l = {75}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$checkRootPermission$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$checkRootPermission$1(IsolationViewModel isolationViewModel, Continuation<? super IsolationViewModel$checkRootPermission$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$checkRootPermission$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.rootguard.app.ui.screens.isolation.IsolationViewModel$checkRootPermission$1] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.rootguard.app.ui.screens.isolation.IsolationViewModel$checkRootPermission$1] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.rootguard.app.utils.Logger] */
    public final Object invokeSuspend(Object obj) {
        ?? r4;
        MutableStateFlow mutableStateFlow;
        Object value;
        IsolationUiState copy;
        RootHider rootHider;
        Object obj2;
        Object obj3;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        IsolationUiState copy2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = this.label;
        try {
            switch (r2) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    IsolationViewModel$checkRootPermission$1 isolationViewModel$checkRootPermission$1 = this;
                    rootHider = isolationViewModel$checkRootPermission$1.this$0.rootHider;
                    isolationViewModel$checkRootPermission$1.label = 1;
                    Object checkSelfRootPermission = rootHider.checkSelfRootPermission((Continuation) isolationViewModel$checkRootPermission$1);
                    if (checkSelfRootPermission == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj2 = obj;
                    obj3 = checkSelfRootPermission;
                    r2 = isolationViewModel$checkRootPermission$1;
                    break;
                case 1:
                    r2 = this;
                    obj3 = obj;
                    ResultKt.throwOnFailure(obj3);
                    obj2 = obj3;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            boolean booleanValue = ((Boolean) obj3).booleanValue();
            r4 = Logger.INSTANCE;
            r4.d("IsolationViewModel: 初始化权限检查结果 = " + (booleanValue));
            mutableStateFlow2 = r2.this$0._uiState;
            do {
                value2 = mutableStateFlow2.getValue();
                copy2 = r9.copy((r36 & 1) != 0 ? r9.globalEnabled : false, (r36 & 2) != 0 ? r9.currentConfig : null, (r36 & 4) != 0 ? r9.isolatedApps : null, (r36 & 8) != 0 ? r9.isLoading : false, (r36 & 16) != 0 ? r9.errorMessage : null, (r36 & 32) != 0 ? r9.successMessage : null, (r36 & 64) != 0 ? r9.showSandboxRules : false, (r36 & 128) != 0 ? r9.isolationStats : null, (r36 & 256) != 0 ? r9.oneClickProgress : null, (r36 & 512) != 0 ? r9.userApps : null, (r36 & 1024) != 0 ? r9.systemApps : null, (r36 & 2048) != 0 ? r9.isAppListLoading : false, (r36 & 4096) != 0 ? r9.hasRootPermission : booleanValue, (r36 & 8192) != 0 ? r9.searchQuery : null, (r36 & 16384) != 0 ? r9.activeTab : null, (r36 & 32768) != 0 ? r9.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r9.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value2).isPropSpoofEnabled : false);
            } while (!mutableStateFlow2.compareAndSet(value2, copy2));
        } catch (Exception e2) {
            e = e2;
            r4 = obj2;
            Logger.INSTANCE.e("IsolationViewModel: 权限检查失败", e);
            mutableStateFlow = r2.this$0._uiState;
            do {
                value = mutableStateFlow.getValue();
                copy = r27.copy((r36 & 1) != 0 ? r27.globalEnabled : false, (r36 & 2) != 0 ? r27.currentConfig : null, (r36 & 4) != 0 ? r27.isolatedApps : null, (r36 & 8) != 0 ? r27.isLoading : false, (r36 & 16) != 0 ? r27.errorMessage : null, (r36 & 32) != 0 ? r27.successMessage : null, (r36 & 64) != 0 ? r27.showSandboxRules : false, (r36 & 128) != 0 ? r27.isolationStats : null, (r36 & 256) != 0 ? r27.oneClickProgress : null, (r36 & 512) != 0 ? r27.userApps : null, (r36 & 1024) != 0 ? r27.systemApps : null, (r36 & 2048) != 0 ? r27.isAppListLoading : false, (r36 & 4096) != 0 ? r27.hasRootPermission : false, (r36 & 8192) != 0 ? r27.searchQuery : null, (r36 & 16384) != 0 ? r27.activeTab : null, (r36 & 32768) != 0 ? r27.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r27.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value).isPropSpoofEnabled : false);
            } while (!mutableStateFlow.compareAndSet(value, copy));
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
