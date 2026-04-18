package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.model.IsolationConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$applyPreset$2", f = "IsolationViewModel.kt", i = {}, l = {276, 277}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$applyPreset$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ IsolationConfig $preset;
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$applyPreset$2(IsolationViewModel isolationViewModel, IsolationConfig isolationConfig, Continuation<? super IsolationViewModel$applyPreset$2> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
        this.$preset = isolationConfig;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$applyPreset$2(this.this$0, this.$preset, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r30) {
        /*
            r29 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            r1 = r29
            int r2 = r1.label
            switch(r2) {
                case 0: goto L23;
                case 1: goto L1b;
                case 2: goto L13;
                default: goto Lb;
            }
        Lb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L13:
            r0 = r29
            r2 = r30
            kotlin.ResultKt.throwOnFailure(r2)
            goto L56
        L1b:
            r2 = r29
            r3 = r30
            kotlin.ResultKt.throwOnFailure(r3)
            goto L3f
        L23:
            kotlin.ResultKt.throwOnFailure(r30)
            r2 = r29
            r3 = r30
            com.rootguard.app.ui.screens.isolation.IsolationViewModel r4 = r2.this$0
            com.rootguard.app.data.local.IsolationDataStore r4 = com.rootguard.app.ui.screens.isolation.IsolationViewModel.access$getIsolationDataStore$p(r4)
            com.rootguard.app.data.model.IsolationConfig r5 = r2.$preset
            r6 = r2
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r7 = 1
            r2.label = r7
            java.lang.Object r4 = r4.saveIsolationConfig(r5, r6)
            if (r4 != r0) goto L3f
            return r0
        L3f:
            com.rootguard.app.ui.screens.isolation.IsolationViewModel r4 = r2.this$0
            com.rootguard.app.data.magisk.RootHider r4 = com.rootguard.app.ui.screens.isolation.IsolationViewModel.access$getRootHider$p(r4)
            com.rootguard.app.data.model.IsolationConfig r5 = r2.$preset
            r6 = r2
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r7 = 2
            r2.label = r7
            java.lang.Object r4 = r4.applyIsolation(r5, r6)
            if (r4 != r0) goto L54
            return r0
        L54:
            r0 = r2
            r2 = r3
        L56:
            com.rootguard.app.ui.screens.isolation.IsolationViewModel r3 = r0.this$0
            kotlinx.coroutines.flow.MutableStateFlow r3 = com.rootguard.app.ui.screens.isolation.IsolationViewModel.access$get_uiState$p(r3)
            r4 = 0
        L5d:
            java.lang.Object r5 = r3.getValue()
            r27 = r5
            com.rootguard.app.ui.screens.isolation.IsolationUiState r27 = (com.rootguard.app.ui.screens.isolation.IsolationUiState) r27
            r6 = r27
            r28 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            java.lang.String r12 = "已应用预设"
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r25 = 262111(0x3ffdf, float:3.67296E-40)
            r26 = 0
            com.rootguard.app.ui.screens.isolation.IsolationUiState r6 = com.rootguard.app.ui.screens.isolation.IsolationUiState.copy$default(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26)
            boolean r7 = r3.compareAndSet(r5, r6)
            if (r7 == 0) goto L5d
        L97:
            com.rootguard.app.ui.screens.isolation.IsolationViewModel r3 = r0.this$0
            com.rootguard.app.ui.screens.isolation.IsolationViewModel.access$clearMessageAfterDelay(r3)
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationViewModel$applyPreset$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
