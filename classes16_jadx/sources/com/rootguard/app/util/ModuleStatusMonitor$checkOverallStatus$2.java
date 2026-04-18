package com.rootguard.app.util;

import com.rootguard.app.util.ModuleStatusMonitor;
import com.rootguard.app.utils.Logger;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModuleStatusMonitor.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/rootguard/app/util/ModuleStatusMonitor$OverallStatus;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.util.ModuleStatusMonitor$checkOverallStatus$2", f = "ModuleStatusMonitor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class ModuleStatusMonitor$checkOverallStatus$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ModuleStatusMonitor.OverallStatus>, Object> {
    int label;
    final /* synthetic */ ModuleStatusMonitor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleStatusMonitor$checkOverallStatus$2(ModuleStatusMonitor moduleStatusMonitor, Continuation<? super ModuleStatusMonitor$checkOverallStatus$2> continuation) {
        super(2, continuation);
        this.this$0 = moduleStatusMonitor;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ModuleStatusMonitor$checkOverallStatus$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ModuleStatusMonitor.OverallStatus> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        boolean hasMagisk;
        boolean hasZygisk;
        boolean hasLSPosed;
        boolean hasDenylist;
        boolean hasShamiko;
        boolean pandaSUZygisk;
        boolean pandaSULSPosed;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Logger.INSTANCE.d("ModuleStatusMonitor: 开始检查模块状态...");
                List issues = new ArrayList();
                List recommendations = new ArrayList();
                hasMagisk = this.this$0.checkMagisk();
                if (!hasMagisk) {
                    issues.add("未检测到 Magisk 框架");
                    recommendations.add("安装 Magisk 以使用 Zygisk 模块功能");
                }
                hasZygisk = this.this$0.checkZygisk();
                if (hasMagisk && !hasZygisk) {
                    issues.add("Magisk Zygisk 未开启");
                    recommendations.add("在 Magisk 设置中开启 Zygisk");
                }
                hasLSPosed = this.this$0.checkLSPosed();
                if (!hasLSPosed) {
                    issues.add("LSPosed 框架未安装");
                    recommendations.add("安装 LSPosed 以使用 Xposed 模块功能");
                }
                hasDenylist = this.this$0.checkDenylist();
                if (!hasDenylist && hasMagisk) {
                    issues.add("Magisk Denylist 未配置");
                    recommendations.add("在 Magisk 设置中配置 Denylist，将需要隐藏的应用加入");
                }
                hasShamiko = this.this$0.checkShamiko();
                pandaSUZygisk = this.this$0.checkPandaSUZygisk();
                pandaSULSPosed = this.this$0.checkPandaSULSPosed();
                if (!pandaSUZygisk && hasMagisk && hasZygisk) {
                    issues.add("PandaSU Zygisk 模块未安装");
                    recommendations.add("在 PandaSU 应用中安装 Zygisk 模块");
                }
                if (!pandaSULSPosed && hasLSPosed) {
                    issues.add("PandaSU LSPosed 模块未激活");
                    recommendations.add("在 LSPosed 管理器中启用 PandaSU 模块");
                }
                Logger.INSTANCE.d("ModuleStatusMonitor: 检查完成 - 问题: " + issues.size() + ", 建议: " + recommendations.size());
                return new ModuleStatusMonitor.OverallStatus(hasMagisk, hasZygisk, hasLSPosed, hasDenylist, hasShamiko, pandaSUZygisk, pandaSULSPosed, issues, recommendations);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
