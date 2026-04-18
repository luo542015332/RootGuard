package com.rootguard.app.util;

import com.rootguard.app.util.DetectorScanner;
import com.rootguard.app.utils.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: DetectorScanner.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.DetectorScanner$autoIsolateDetectors$2", f = "DetectorScanner.kt", i = {}, l = {129}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
final class DetectorScanner$autoIsolateDetectors$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends String>>, Object> {
    int label;
    final /* synthetic */ DetectorScanner this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetectorScanner$autoIsolateDetectors$2(DetectorScanner detectorScanner, Continuation<? super DetectorScanner$autoIsolateDetectors$2> continuation) {
        super(2, continuation);
        this.this$0 = detectorScanner;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DetectorScanner$autoIsolateDetectors$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<String>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.label = 1;
                Object scanDetectors = this.this$0.scanDetectors((Continuation) this);
                if (scanDetectors == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result = scanDetectors;
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Iterable detected = (List) $result;
        Iterable $this$filterTo$iv$iv = detected;
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$filterTo$iv$iv) {
            DetectorScanner.DetectedApp it = (DetectorScanner.DetectedApp) element$iv$iv;
            DetectorScanner.DetectedApp it2 = it.getRiskLevel().compareTo(DetectorScanner.RiskLevel.HIGH) >= 0 ? 1 : null;
            if (it2 != null) {
                destination$iv$iv.add(element$iv$iv);
            }
        }
        Iterable $this$map$iv = (List) destination$iv$iv;
        Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            DetectorScanner.DetectedApp it3 = (DetectorScanner.DetectedApp) item$iv$iv;
            destination$iv$iv2.add(it3.getPackageName());
        }
        List autoIsolatePackages = (List) destination$iv$iv2;
        Logger.INSTANCE.d("DetectorScanner: 自动隔离 " + autoIsolatePackages.size() + " 个高风险检测器");
        return autoIsolatePackages;
    }
}
