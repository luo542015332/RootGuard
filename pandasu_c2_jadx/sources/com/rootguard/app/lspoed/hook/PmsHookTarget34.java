package com.rootguard.app.lspoed.hook;

import android.os.Build;
import android.util.Log;
import com.rootguard.app.lspoed.HMAService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PmsHookTarget34.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/rootguard/app/lspoed/hook/PmsHookTarget34;", "Lcom/rootguard/app/lspoed/hook/PmsHookTarget33;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "load", "", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class PmsHookTarget34 extends PmsHookTarget33 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PmsHookTarget34(HMAService service) {
        super(service);
        Intrinsics.checkNotNullParameter(service, "service");
    }

    @Override // com.rootguard.app.lspoed.hook.PmsHookTarget33, com.rootguard.app.lspoed.hook.PmsHookTargetBase, com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        Log.i("PandaSU-PmsHook34", "Loading Android 14+ hooks (SDK " + Build.VERSION.SDK_INT + ")");
        super.load();
    }
}
