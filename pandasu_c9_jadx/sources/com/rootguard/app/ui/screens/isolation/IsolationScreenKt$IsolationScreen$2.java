package com.rootguard.app.ui.screens.isolation;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: IsolationScreen.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$2", f = "IsolationScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
final class IsolationScreenKt$IsolationScreen$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $appName;
    final /* synthetic */ String $packageName;
    final /* synthetic */ IsolationViewModel $viewModel;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationScreenKt$IsolationScreen$2(String str, String str2, IsolationViewModel isolationViewModel, Continuation<? super IsolationScreenKt$IsolationScreen$2> continuation) {
        super(2, continuation);
        this.$packageName = str;
        this.$appName = str2;
        this.$viewModel = isolationViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationScreenKt$IsolationScreen$2(this.$packageName, this.$appName, this.$viewModel, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        String str;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                String str2 = this.$packageName;
                if (str2 != null && (str = this.$appName) != null) {
                    this.$viewModel.loadAppConfig(str2, str);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
