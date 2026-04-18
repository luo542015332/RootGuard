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
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$saveConfig$1", f = "IsolationViewModel.kt", i = {}, l = {252, 254, 257}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$saveConfig$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ IsolationConfig $config;
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$saveConfig$1(IsolationViewModel isolationViewModel, IsolationConfig isolationConfig, Continuation<? super IsolationViewModel$saveConfig$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
        this.$config = isolationConfig;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$saveConfig$1(this.this$0, this.$config, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0008. Please report as an issue. */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0030: MOVE (r9 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY] A[D('$result' java.lang.Object)]), block:B:56:0x002f */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0099 A[Catch: Exception -> 0x002e, TRY_LEAVE, TryCatch #1 {Exception -> 0x002e, blocks: (B:8:0x0017, B:9:0x011c, B:10:0x0123, B:17:0x001c, B:37:0x0026, B:38:0x0091, B:40:0x0099, B:44:0x0103, B:51:0x007c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0103 A[Catch: Exception -> 0x002e, TRY_ENTER, TryCatch #1 {Exception -> 0x002e, blocks: (B:8:0x0017, B:9:0x011c, B:10:0x0123, B:17:0x001c, B:37:0x0026, B:38:0x0091, B:40:0x0099, B:44:0x0103, B:51:0x007c), top: B:2:0x0008 }] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r36) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationViewModel$saveConfig$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
