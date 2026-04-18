package com.rootguard.app.util;

import com.rootguard.app.util.ModuleStatusMonitor;
import com.rootguard.app.utils.Logger;
import com.topjohnwu.superuser.Shell;
import java.util.ArrayList;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: ModuleStatusMonitor.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/util/ModuleStatusMonitor$ModuleStatus;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.ModuleStatusMonitor$getDetailedModuleStatus$2", f = "ModuleStatusMonitor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
final class ModuleStatusMonitor$getDetailedModuleStatus$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<ModuleStatusMonitor.ModuleStatus>>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModuleStatusMonitor$getDetailedModuleStatus$2(Continuation<? super ModuleStatusMonitor$getDetailedModuleStatus$2> continuation) {
        super(2, continuation);
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ModuleStatusMonitor$getDetailedModuleStatus$2(continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<ModuleStatusMonitor.ModuleStatus>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        String moduleName;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                List modules = new ArrayList();
                boolean z = true;
                try {
                    Shell.Result result = Shell.cmd(new String[]{"ls -la /data/adb/modules/ 2>/dev/null"}).exec();
                    Intrinsics.checkNotNullExpressionValue(result, "exec(...)");
                    if (result.isSuccess()) {
                        Iterable out = result.getOut();
                        Intrinsics.checkNotNullExpressionValue(out, "getOut(...)");
                        Iterable $this$forEach$iv = out;
                        for (Object element$iv : $this$forEach$iv) {
                            String line = (String) element$iv;
                            Intrinsics.checkNotNull(line);
                            if (StringsKt.contains$default(line, "drwx", false, 2, (Object) null) && !StringsKt.contains$default(line, ".", false, 2, (Object) null) && !StringsKt.contains$default(line, "total", false, 2, (Object) null) && (moduleName = (String) CollectionsKt.lastOrNull(new Regex("\\s+").split(StringsKt.trim(line).toString(), 0))) != null && (StringsKt.isBlank(moduleName) ^ z) && !Intrinsics.areEqual(moduleName, "total")) {
                                modules.add(new ModuleStatusMonitor.ModuleStatus(moduleName, true, true, null, null, CollectionsKt.emptyList()));
                            }
                            z = true;
                        }
                    }
                } catch (Exception e) {
                    Logger.INSTANCE.e("ModuleStatusMonitor: 获取模块列表失败", e);
                }
                return modules;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
