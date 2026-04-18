package com.rootguard.app.data.magisk;

import com.rootguard.app.data.model.IsolationConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$applyIsolation$2$r7$1", f = "RootHider.kt", i = {}, l = {711}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$applyIsolation$2$r7$1 extends SuspendLambda implements Function1<Continuation<? super Boolean>, Object> {
    final /* synthetic */ IsolationConfig $config;
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ RootHider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$applyIsolation$2$r7$1(IsolationConfig isolationConfig, RootHider rootHider, String str, Continuation<? super RootHider$applyIsolation$2$r7$1> continuation) {
        super(1, continuation);
        this.$config = isolationConfig;
        this.this$0 = rootHider;
        this.$packageName = str;
    }

    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new RootHider$applyIsolation$2$r7$1(this.$config, this.this$0, this.$packageName, continuation);
    }

    public final Object invoke(Continuation<? super Boolean> continuation) {
        return create(continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    public final Object invokeSuspend(Object $result) {
        boolean z;
        Object disableRootForPackage;
        Object $result2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                z = true;
                if (this.$config.getDisableRootAccess()) {
                    this.label = 1;
                    disableRootForPackage = this.this$0.disableRootForPackage(this.$packageName, (Continuation) this);
                    if (disableRootForPackage == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result2 = $result;
                    $result = disableRootForPackage;
                    z = ((Boolean) $result).booleanValue();
                }
                return Boxing.boxBoolean(z);
            case 1:
                ResultKt.throwOnFailure($result);
                $result2 = $result;
                z = ((Boolean) $result).booleanValue();
                return Boxing.boxBoolean(z);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
