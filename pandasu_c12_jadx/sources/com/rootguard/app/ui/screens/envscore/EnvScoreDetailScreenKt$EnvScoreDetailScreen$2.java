package com.rootguard.app.ui.screens.envscore;

import androidx.compose.runtime.State;
import com.rootguard.app.data.kernelsu.KernelSUService;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EnvScoreDetailScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.envscore.EnvScoreDetailScreenKt$EnvScoreDetailScreen$2", f = "EnvScoreDetailScreen.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailScreenKt$EnvScoreDetailScreen$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<String> $message$delegate;
    final /* synthetic */ EnvScoreDetailViewModel $viewModel;
    Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnvScoreDetailScreenKt$EnvScoreDetailScreen$2(State<String> state, EnvScoreDetailViewModel envScoreDetailViewModel, Continuation<? super EnvScoreDetailScreenKt$EnvScoreDetailScreen$2> continuation) {
        super(2, continuation);
        this.$message$delegate = state;
        this.$viewModel = envScoreDetailViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EnvScoreDetailScreenKt$EnvScoreDetailScreen$2(this.$message$delegate, this.$viewModel, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    public final Object invokeSuspend(Object $result) {
        String EnvScoreDetailScreen$lambda$8;
        EnvScoreDetailViewModel envScoreDetailViewModel;
        EnvScoreDetailScreenKt$EnvScoreDetailScreen$2 envScoreDetailScreenKt$EnvScoreDetailScreen$2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case KernelSUService.$stable:
                ResultKt.throwOnFailure($result);
                EnvScoreDetailScreen$lambda$8 = EnvScoreDetailScreenKt.EnvScoreDetailScreen$lambda$8(this.$message$delegate);
                if (EnvScoreDetailScreen$lambda$8 != null) {
                    envScoreDetailViewModel = this.$viewModel;
                    this.L$0 = envScoreDetailViewModel;
                    this.label = 1;
                    if (DelayKt.delay(3000L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    envScoreDetailScreenKt$EnvScoreDetailScreen$2 = this;
                    envScoreDetailViewModel.clearMessage();
                }
                return Unit.INSTANCE;
            case 1:
                envScoreDetailScreenKt$EnvScoreDetailScreen$2 = this;
                envScoreDetailViewModel = (EnvScoreDetailViewModel) envScoreDetailScreenKt$EnvScoreDetailScreen$2.L$0;
                ResultKt.throwOnFailure($result);
                envScoreDetailViewModel.clearMessage();
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
