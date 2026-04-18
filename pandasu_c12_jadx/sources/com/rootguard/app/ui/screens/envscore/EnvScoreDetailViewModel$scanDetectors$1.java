package com.rootguard.app.ui.screens.envscore;

import com.rootguard.app.data.kernelsu.KernelSUService;
import com.rootguard.app.util.DetectorScanner;
import com.rootguard.app.utils.Logger;
import java.util.List;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EnvScoreDetailViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, KernelSUService.$stable}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel$scanDetectors$1", f = "EnvScoreDetailViewModel.kt", i = {}, l = {141}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailViewModel$scanDetectors$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ EnvScoreDetailViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnvScoreDetailViewModel$scanDetectors$1(EnvScoreDetailViewModel envScoreDetailViewModel, Continuation<? super EnvScoreDetailViewModel$scanDetectors$1> continuation) {
        super(2, continuation);
        this.this$0 = envScoreDetailViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EnvScoreDetailViewModel$scanDetectors$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    public final Object invokeSuspend(Object $result) {
        EnvScoreDetailViewModel$scanDetectors$1 envScoreDetailViewModel$scanDetectors$1;
        MutableStateFlow mutableStateFlow;
        Throwable th;
        EnvScoreDetailViewModel$scanDetectors$1 envScoreDetailViewModel$scanDetectors$12;
        Exception e;
        DetectorScanner detectorScanner;
        Object scanDetectors;
        Object $result2;
        MutableStateFlow mutableStateFlow2;
        MutableStateFlow mutableStateFlow3;
        MutableStateFlow mutableStateFlow4;
        MutableStateFlow mutableStateFlow5;
        MutableStateFlow mutableStateFlow6;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case KernelSUService.$stable /* 0 */:
                ResultKt.throwOnFailure($result);
                envScoreDetailViewModel$scanDetectors$1 = this;
                mutableStateFlow = envScoreDetailViewModel$scanDetectors$1.this$0._isScanning;
                mutableStateFlow.setValue(Boxing.boxBoolean(true));
                try {
                    Logger.INSTANCE.d("开始扫描检测器...");
                    detectorScanner = envScoreDetailViewModel$scanDetectors$1.this$0.detectorScanner;
                    envScoreDetailViewModel$scanDetectors$1.label = 1;
                    scanDetectors = detectorScanner.scanDetectors((Continuation) envScoreDetailViewModel$scanDetectors$1);
                } catch (Exception e2) {
                    e = e2;
                    envScoreDetailViewModel$scanDetectors$12 = envScoreDetailViewModel$scanDetectors$1;
                    Logger.INSTANCE.e("检测器扫描失败", e);
                    mutableStateFlow3 = envScoreDetailViewModel$scanDetectors$12.this$0._message;
                    mutableStateFlow3.setValue("扫描失败: " + e.getMessage());
                    mutableStateFlow4 = envScoreDetailViewModel$scanDetectors$12.this$0._isScanning;
                    mutableStateFlow4.setValue(Boxing.boxBoolean(false));
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    envScoreDetailViewModel$scanDetectors$12 = envScoreDetailViewModel$scanDetectors$1;
                    mutableStateFlow2 = envScoreDetailViewModel$scanDetectors$12.this$0._isScanning;
                    mutableStateFlow2.setValue(Boxing.boxBoolean(false));
                    throw th;
                }
                if (scanDetectors == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result2 = $result;
                $result = scanDetectors;
                try {
                    List results = (List) $result;
                    mutableStateFlow5 = envScoreDetailViewModel$scanDetectors$1.this$0._detectorResults;
                    mutableStateFlow5.setValue(results);
                    Logger.INSTANCE.d("检测器扫描完成，发现 " + results.size() + " 个可疑应用");
                    mutableStateFlow6 = envScoreDetailViewModel$scanDetectors$1.this$0._isScanning;
                    mutableStateFlow6.setValue(Boxing.boxBoolean(false));
                } catch (Exception e3) {
                    EnvScoreDetailViewModel$scanDetectors$1 envScoreDetailViewModel$scanDetectors$13 = envScoreDetailViewModel$scanDetectors$1;
                    e = e3;
                    $result = $result2;
                    envScoreDetailViewModel$scanDetectors$12 = envScoreDetailViewModel$scanDetectors$13;
                    Logger.INSTANCE.e("检测器扫描失败", e);
                    mutableStateFlow3 = envScoreDetailViewModel$scanDetectors$12.this$0._message;
                    mutableStateFlow3.setValue("扫描失败: " + e.getMessage());
                    mutableStateFlow4 = envScoreDetailViewModel$scanDetectors$12.this$0._isScanning;
                    mutableStateFlow4.setValue(Boxing.boxBoolean(false));
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    EnvScoreDetailViewModel$scanDetectors$1 envScoreDetailViewModel$scanDetectors$14 = envScoreDetailViewModel$scanDetectors$1;
                    th = th3;
                    envScoreDetailViewModel$scanDetectors$12 = envScoreDetailViewModel$scanDetectors$14;
                    mutableStateFlow2 = envScoreDetailViewModel$scanDetectors$12.this$0._isScanning;
                    mutableStateFlow2.setValue(Boxing.boxBoolean(false));
                    throw th;
                }
                return Unit.INSTANCE;
            case 1:
                envScoreDetailViewModel$scanDetectors$12 = this;
                try {
                    try {
                        ResultKt.throwOnFailure($result);
                        envScoreDetailViewModel$scanDetectors$1 = envScoreDetailViewModel$scanDetectors$12;
                        $result2 = $result;
                        List results2 = (List) $result;
                        mutableStateFlow5 = envScoreDetailViewModel$scanDetectors$1.this$0._detectorResults;
                        mutableStateFlow5.setValue(results2);
                        Logger.INSTANCE.d("检测器扫描完成，发现 " + results2.size() + " 个可疑应用");
                        mutableStateFlow6 = envScoreDetailViewModel$scanDetectors$1.this$0._isScanning;
                        mutableStateFlow6.setValue(Boxing.boxBoolean(false));
                    } catch (Exception e4) {
                        e = e4;
                        Logger.INSTANCE.e("检测器扫描失败", e);
                        mutableStateFlow3 = envScoreDetailViewModel$scanDetectors$12.this$0._message;
                        mutableStateFlow3.setValue("扫描失败: " + e.getMessage());
                        mutableStateFlow4 = envScoreDetailViewModel$scanDetectors$12.this$0._isScanning;
                        mutableStateFlow4.setValue(Boxing.boxBoolean(false));
                        return Unit.INSTANCE;
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th4) {
                    th = th4;
                    mutableStateFlow2 = envScoreDetailViewModel$scanDetectors$12.this$0._isScanning;
                    mutableStateFlow2.setValue(Boxing.boxBoolean(false));
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
