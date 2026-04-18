package com.rootguard.app.data.magisk;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class MagiskProvider_Factory implements Factory<MagiskProvider> {
    private final Provider<Context> contextProvider;

    public MagiskProvider_Factory(Provider<Context> contextProvider) {
        this.contextProvider = contextProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public MagiskProvider m1get() {
        return newInstance((Context) this.contextProvider.get());
    }

    public static MagiskProvider_Factory create(Provider<Context> contextProvider) {
        return new MagiskProvider_Factory(contextProvider);
    }

    public static MagiskProvider newInstance(Context context) {
        return new MagiskProvider(context);
    }
}
