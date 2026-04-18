package com.rootguard.app.data.magisk;

import android.content.Context;
import com.rootguard.app.data.local.IsolationDataStore;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class RootHider_Factory implements Factory<RootHider> {
    private final Provider<Context> contextProvider;
    private final Provider<IsolationDataStore> isolationDataStoreProvider;

    public RootHider_Factory(Provider<Context> contextProvider, Provider<IsolationDataStore> isolationDataStoreProvider) {
        this.contextProvider = contextProvider;
        this.isolationDataStoreProvider = isolationDataStoreProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public RootHider m2get() {
        return newInstance((Context) this.contextProvider.get(), (IsolationDataStore) this.isolationDataStoreProvider.get());
    }

    public static RootHider_Factory create(Provider<Context> contextProvider, Provider<IsolationDataStore> isolationDataStoreProvider) {
        return new RootHider_Factory(contextProvider, isolationDataStoreProvider);
    }

    public static RootHider newInstance(Context context, IsolationDataStore isolationDataStore) {
        return new RootHider(context, isolationDataStore);
    }
}
