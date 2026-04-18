package com.rootguard.app.data.local;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class IsolationDataStore_Factory implements Factory<IsolationDataStore> {
    private final Provider<Context> contextProvider;

    public IsolationDataStore_Factory(Provider<Context> contextProvider) {
        this.contextProvider = contextProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public IsolationDataStore m26get() {
        return newInstance((Context) this.contextProvider.get());
    }

    public static IsolationDataStore_Factory create(Provider<Context> contextProvider) {
        return new IsolationDataStore_Factory(contextProvider);
    }

    public static IsolationDataStore newInstance(Context context) {
        return new IsolationDataStore(context);
    }
}
