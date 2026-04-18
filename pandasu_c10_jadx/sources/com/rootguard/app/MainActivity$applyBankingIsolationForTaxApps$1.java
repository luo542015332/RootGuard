package com.rootguard.app;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.MainActivity$applyBankingIsolationForTaxApps$1", f = "MainActivity.kt", i = {0, 0, 1, 2, 2, 3}, l = {162, 163, 171, 172}, m = "invokeSuspend", n = {"packageName", "preset", "packageName", "packageName", "preset", "packageName"}, s = {"L$2", "L$3", "L$2", "L$2", "L$3", "L$2"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class MainActivity$applyBankingIsolationForTaxApps$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MainActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$applyBankingIsolationForTaxApps$1(MainActivity mainActivity, Continuation<? super MainActivity$applyBankingIsolationForTaxApps$1> continuation) {
        super(2, continuation);
        this.this$0 = mainActivity;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivity$applyBankingIsolationForTaxApps$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x013f A[Catch: Exception -> 0x01d5, TryCatch #0 {Exception -> 0x01d5, blocks: (B:8:0x002a, B:9:0x01b6, B:11:0x0139, B:13:0x013f, B:17:0x019d, B:25:0x0045, B:27:0x005c, B:28:0x010e, B:29:0x0091, B:31:0x0097, B:35:0x00f5, B:39:0x012b, B:41:0x0077, B:43:0x0084), top: B:2:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0097 A[Catch: Exception -> 0x01d5, TryCatch #0 {Exception -> 0x01d5, blocks: (B:8:0x002a, B:9:0x01b6, B:11:0x0139, B:13:0x013f, B:17:0x019d, B:25:0x0045, B:27:0x005c, B:28:0x010e, B:29:0x0091, B:31:0x0097, B:35:0x00f5, B:39:0x012b, B:41:0x0077, B:43:0x0084), top: B:2:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012b A[Catch: Exception -> 0x01d5, TryCatch #0 {Exception -> 0x01d5, blocks: (B:8:0x002a, B:9:0x01b6, B:11:0x0139, B:13:0x013f, B:17:0x019d, B:25:0x0045, B:27:0x005c, B:28:0x010e, B:29:0x0091, B:31:0x0097, B:35:0x00f5, B:39:0x012b, B:41:0x0077, B:43:0x0084), top: B:2:0x000d }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x01b3 -> B:9:0x01b6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x010b -> B:28:0x010e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.MainActivity$applyBankingIsolationForTaxApps$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
