package com.rootguard.app.data.magisk;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$applyCustomProps$2", f = "RootHider.kt", i = {}, l = {960}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider$applyCustomProps$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ Map<String, String> $props;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$applyCustomProps$2(Map<String, String> map, RootHider rootHider, Continuation<? super RootHider$applyCustomProps$2> continuation) {
        super(2, continuation);
        this.$props = map;
        this.this$0 = rootHider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$applyCustomProps$2(this.$props, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object $result) {
        boolean z;
        RootHider$applyCustomProps$2 rootHider$applyCustomProps$2;
        Iterator<Map.Entry<String, String>> it;
        RootHider rootHider;
        Object runSuCommand;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    rootHider$applyCustomProps$2 = this;
                    Map $this$forEach$iv = rootHider$applyCustomProps$2.$props;
                    RootHider rootHider2 = rootHider$applyCustomProps$2.this$0;
                    it = $this$forEach$iv.entrySet().iterator();
                    rootHider = rootHider2;
                    break;
                case 1:
                    rootHider$applyCustomProps$2 = this;
                    it = (Iterator) rootHider$applyCustomProps$2.L$1;
                    rootHider = (RootHider) rootHider$applyCustomProps$2.L$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Exception e) {
            z = false;
        }
        do {
            z = true;
            if (!it.hasNext()) {
                return Boxing.boxBoolean(z);
            }
            Map.Entry<String, String> next = it.next();
            String k = next.getKey();
            String v = next.getValue();
            rootHider$applyCustomProps$2.L$0 = rootHider;
            rootHider$applyCustomProps$2.L$1 = it;
            rootHider$applyCustomProps$2.label = 1;
            runSuCommand = rootHider.runSuCommand("resetprop -n " + k + " " + v, rootHider$applyCustomProps$2);
        } while (runSuCommand != coroutine_suspended);
        return coroutine_suspended;
    }
}
