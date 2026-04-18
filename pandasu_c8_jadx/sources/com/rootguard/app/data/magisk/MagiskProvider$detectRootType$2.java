package com.rootguard.app.data.magisk;

import com.rootguard.app.utils.Logger;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$detectRootType$2", f = "MagiskProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class MagiskProvider$detectRootType$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MagiskProvider$detectRootType$2(Continuation<? super MagiskProvider$detectRootType$2> continuation) {
        super(2, continuation);
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$detectRootType$2(continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Iterable iterable;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Logger.INSTANCE.d("Starting root type detection...");
                Ref.BooleanRef isKernelSU = new Ref.BooleanRef();
                boolean z = true;
                try {
                    Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", "ksu", "-v"});
                    process.waitFor();
                    if (process.exitValue() == 0) {
                        Logger.INSTANCE.d("Detected KernelSU via ksu -v command");
                        isKernelSU.element = true;
                    }
                } catch (Exception e) {
                    Logger.INSTANCE.w("ksu command failed: " + e.getMessage());
                }
                if (!isKernelSU.element) {
                    iterable = MagiskProvider.KERNELSU_PATHS;
                    Iterable $this$forEach$iv = iterable;
                    for (Object element$iv : $this$forEach$iv) {
                        String path = (String) element$iv;
                        try {
                            if (new File(path).exists()) {
                                Logger.INSTANCE.d("Found KernelSU path: " + path);
                                isKernelSU.element = z;
                            }
                        } catch (Exception e2) {
                            Logger.INSTANCE.w("Failed to check path " + path + ": " + e2.getMessage());
                        }
                        z = true;
                    }
                }
                if (isKernelSU.element) {
                    Logger.INSTANCE.d("Root type detected: KernelSU");
                    return MagiskProvider.ROOT_TYPE_KERNELSU;
                }
                try {
                    Process process2 = Runtime.getRuntime().exec(new String[]{"su", "-c", MagiskProvider.ROOT_TYPE_MAGISK, "-v"});
                    process2.waitFor();
                    if (process2.exitValue() == 0) {
                        Logger.INSTANCE.d("Detected Magisk");
                        return MagiskProvider.ROOT_TYPE_MAGISK;
                    }
                } catch (Exception e3) {
                    Logger.INSTANCE.w("magisk command failed: " + e3.getMessage());
                }
                Logger.INSTANCE.w("Root type not detected, defaulting to KernelSU");
                return MagiskProvider.ROOT_TYPE_KERNELSU;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
