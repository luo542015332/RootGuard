package com.rootguard.app.lspoed.hook;

import android.util.Log;
import com.rootguard.app.lspoed.HMAService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContentProviderHook.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/rootguard/app/lspoed/hook/ContentProviderHook;", "Lcom/rootguard/app/lspoed/hook/IFrameworkHook;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "load", "", "unload", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class ContentProviderHook implements IFrameworkHook {
    private final HMAService service;

    public ContentProviderHook(HMAService service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        Log.i("PandaSU-ContentProviderHook", "Loading ContentProvider hooks");
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void unload() {
    }
}
