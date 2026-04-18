package com.rootguard.app.data.magisk;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$getIsolatedApps$2", f = "RootHider.kt", i = {}, l = {1164}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$getIsolatedApps$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends String>>, Object> {
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$getIsolatedApps$2(RootHider rootHider, Continuation<? super RootHider$getIsolatedApps$2> continuation) {
        super(2, continuation);
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$getIsolatedApps$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<String>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0052 A[Catch: Exception -> 0x00a9, TryCatch #1 {Exception -> 0x00a9, blocks: (B:11:0x0033, B:12:0x004c, B:14:0x0052, B:19:0x0068, B:25:0x006c, B:26:0x0086, B:28:0x008c, B:30:0x00a3), top: B:10:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008c A[Catch: Exception -> 0x00a9, LOOP:1: B:26:0x0086->B:28:0x008c, LOOP_END, TryCatch #1 {Exception -> 0x00a9, blocks: (B:11:0x0033, B:12:0x004c, B:14:0x0052, B:19:0x0068, B:25:0x006c, B:26:0x0086, B:28:0x008c, B:30:0x00a3), top: B:10:0x0033 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 1
            switch(r1) {
                case 0: goto L1c;
                case 1: goto L12;
                default: goto La;
            }
        La:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L12:
            r0 = r11
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Exception -> L19
            r1 = r0
            r0 = r12
            goto L33
        L19:
            r1 = move-exception
            goto Laf
        L1c:
            kotlin.ResultKt.throwOnFailure(r12)
            r1 = r11
            com.rootguard.app.data.magisk.RootHider r3 = r1.this$0     // Catch: java.lang.Exception -> Lad
            java.lang.String r4 = "sqlite3 /data/adb/magisk.db \"SELECT package_name FROM denylist\""
            r5 = r1
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5     // Catch: java.lang.Exception -> Lad
            r1.label = r2     // Catch: java.lang.Exception -> Lad
            java.lang.Object r3 = com.rootguard.app.data.magisk.RootHider.access$runSuCommandOutput(r3, r4, r5)     // Catch: java.lang.Exception -> Lad
            if (r3 != r0) goto L31
            return r0
        L31:
            r0 = r12
            r12 = r3
        L33:
            java.lang.String r12 = (java.lang.String) r12     // Catch: java.lang.Exception -> La9
            r3 = r12
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch: java.lang.Exception -> La9
            java.util.List r3 = kotlin.text.StringsKt.lines(r3)     // Catch: java.lang.Exception -> La9
            java.lang.Iterable r3 = (java.lang.Iterable) r3     // Catch: java.lang.Exception -> La9
            r12 = r3
            r3 = 0
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Exception -> La9
            r4.<init>()     // Catch: java.lang.Exception -> La9
            java.util.Collection r4 = (java.util.Collection) r4     // Catch: java.lang.Exception -> La9
            r5 = 0
            java.util.Iterator r6 = r12.iterator()     // Catch: java.lang.Exception -> La9
        L4c:
            boolean r12 = r6.hasNext()     // Catch: java.lang.Exception -> La9
            if (r12 == 0) goto L6c
            java.lang.Object r12 = r6.next()     // Catch: java.lang.Exception -> La9
            r7 = r12
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> La9
            r8 = 0
            r9 = r7
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9     // Catch: java.lang.Exception -> La9
            boolean r9 = kotlin.text.StringsKt.isBlank(r9)     // Catch: java.lang.Exception -> La9
            if (r9 != 0) goto L65
            r7 = r2
            goto L66
        L65:
            r7 = 0
        L66:
            if (r7 == 0) goto L4c
            r4.add(r12)     // Catch: java.lang.Exception -> La9
            goto L4c
        L6c:
            r12 = r4
            java.util.List r12 = (java.util.List) r12     // Catch: java.lang.Exception -> La9
            java.lang.Iterable r12 = (java.lang.Iterable) r12     // Catch: java.lang.Exception -> La9
            r2 = 0
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> La9
            r4 = 10
            int r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r12, r4)     // Catch: java.lang.Exception -> La9
            r3.<init>(r4)     // Catch: java.lang.Exception -> La9
            java.util.Collection r3 = (java.util.Collection) r3     // Catch: java.lang.Exception -> La9
            r4 = 0
            java.util.Iterator r5 = r12.iterator()     // Catch: java.lang.Exception -> La9
        L86:
            boolean r12 = r5.hasNext()     // Catch: java.lang.Exception -> La9
            if (r12 == 0) goto La3
            java.lang.Object r12 = r5.next()     // Catch: java.lang.Exception -> La9
            r6 = r12
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> La9
            r7 = 0
            r8 = r6
            java.lang.CharSequence r8 = (java.lang.CharSequence) r8     // Catch: java.lang.Exception -> La9
            java.lang.CharSequence r8 = kotlin.text.StringsKt.trim(r8)     // Catch: java.lang.Exception -> La9
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Exception -> La9
            r3.add(r8)     // Catch: java.lang.Exception -> La9
            goto L86
        La3:
            r12 = r3
            java.util.List r12 = (java.util.List) r12     // Catch: java.lang.Exception -> La9
            goto Lb7
        La9:
            r12 = move-exception
            r12 = r0
            r0 = r1
            goto Laf
        Lad:
            r0 = move-exception
            r0 = r1
        Laf:
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
            r10 = r0
            r0 = r12
            r12 = r1
            r1 = r10
        Lb7:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.RootHider$getIsolatedApps$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
