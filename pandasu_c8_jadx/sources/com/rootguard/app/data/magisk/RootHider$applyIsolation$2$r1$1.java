package com.rootguard.app.data.magisk;

import com.rootguard.app.data.model.IsolationConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$applyIsolation$2$r1$1", f = "RootHider.kt", i = {}, l = {694}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$applyIsolation$2$r1$1 extends SuspendLambda implements Function1<Continuation<? super Boolean>, Object> {
    final /* synthetic */ IsolationConfig $config;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$applyIsolation$2$r1$1(RootHider rootHider, IsolationConfig isolationConfig, Continuation<? super RootHider$applyIsolation$2$r1$1> continuation) {
        super(1, continuation);
        this.this$0 = rootHider;
        this.$config = isolationConfig;
    }

    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new RootHider$applyIsolation$2$r1$1(this.this$0, this.$config, continuation);
    }

    public final Object invoke(Continuation<? super Boolean> continuation) {
        return create(continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object $result) {
        Object configureMagiskHide;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.label = 1;
                configureMagiskHide = this.this$0.configureMagiskHide(this.$config, (Continuation) this);
                return configureMagiskHide == coroutine_suspended ? coroutine_suspended : configureMagiskHide;
            case 1:
                ResultKt.throwOnFailure($result);
                return $result;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
