package com.rootguard.app.data.magisk;

import com.rootguard.app.utils.Logger;
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

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$toggleModule$2", f = "MagiskProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class MagiskProvider$toggleModule$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ boolean $enable;
    final /* synthetic */ String $moduleId;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagiskProvider$toggleModule$2(String str, boolean z, Continuation<? super MagiskProvider$toggleModule$2> continuation) {
        super(2, continuation);
        this.$moduleId = str;
        this.$enable = z;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$toggleModule$2(this.$moduleId, this.$enable, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        String[] strArr;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                boolean z = false;
                try {
                    String modulePath = "/data/adb/modules/" + this.$moduleId;
                    String disableFile = modulePath + "/disable";
                    if (this.$enable) {
                        strArr = new String[]{"su", "-c", "rm", "-f", disableFile};
                    } else {
                        strArr = new String[]{"su", "-c", "touch", disableFile};
                    }
                    String[] command = strArr;
                    Process process = Runtime.getRuntime().exec(command);
                    process.waitFor();
                    if (process.exitValue() == 0) {
                        z = true;
                    }
                } catch (Exception e) {
                    Logger.INSTANCE.e("Failed to toggle module: " + this.$moduleId, e);
                }
                return Boxing.boxBoolean(z);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
