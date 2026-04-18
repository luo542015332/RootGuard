package com.rootguard.app.util;

import com.rootguard.app.utils.Logger;
import com.topjohnwu.superuser.Shell;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: ModuleStatusMonitor.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.ModuleStatusMonitor$checkForModuleCorruption$2", f = "ModuleStatusMonitor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
final class ModuleStatusMonitor$checkForModuleCorruption$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<String>>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModuleStatusMonitor$checkForModuleCorruption$2(Continuation<? super ModuleStatusMonitor$checkForModuleCorruption$2> continuation) {
        super(2, continuation);
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ModuleStatusMonitor$checkForModuleCorruption$2(continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<String>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                List corruptedModules = new ArrayList();
                try {
                    if (Shell.cmd(new String[]{"ls /data/adb/zygisksu 2>/dev/null"}).exec().isSuccess()) {
                        Shell.Result result = Shell.cmd(new String[]{"ls -la /data/adb/zygisksu/ 2>/dev/null"}).exec();
                        Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
                        if (!result.isSuccess() || result.getOut().isEmpty()) {
                            corruptedModules.add("Zygisk 配置目录异常");
                        }
                    }
                    if (Shell.cmd(new String[]{"ls /data/adb/modules/lspd 2>/dev/null"}).exec().isSuccess()) {
                        boolean lsoExists = Shell.cmd(new String[]{"ls /data/adb/modules/lspd/native_hook.lso 2>/dev/null"}).exec().isSuccess();
                        if (!lsoExists) {
                            corruptedModules.add("LSPosed native hook 文件丢失");
                        }
                    }
                } catch (Exception e) {
                    Logger.INSTANCE.e("ModuleStatusMonitor: 模块完整性检查失败", e);
                }
                return corruptedModules;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
