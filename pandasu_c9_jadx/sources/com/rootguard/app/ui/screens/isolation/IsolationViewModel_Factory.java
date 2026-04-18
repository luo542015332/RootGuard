package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.utils.OneClickIsolationHelper;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel_Factory implements Factory<IsolationViewModel> {
    private final Provider<IsolationDataStore> isolationDataStoreProvider;
    private final Provider<OneClickIsolationHelper> oneClickIsolationHelperProvider;
    private final Provider<RootHider> rootHiderProvider;

    public IsolationViewModel_Factory(Provider<IsolationDataStore> isolationDataStoreProvider, Provider<RootHider> rootHiderProvider, Provider<OneClickIsolationHelper> oneClickIsolationHelperProvider) {
        this.isolationDataStoreProvider = isolationDataStoreProvider;
        this.rootHiderProvider = rootHiderProvider;
        this.oneClickIsolationHelperProvider = oneClickIsolationHelperProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public IsolationViewModel m28get() {
        return newInstance((IsolationDataStore) this.isolationDataStoreProvider.get(), (RootHider) this.rootHiderProvider.get(), (OneClickIsolationHelper) this.oneClickIsolationHelperProvider.get());
    }

    public static IsolationViewModel_Factory create(Provider<IsolationDataStore> isolationDataStoreProvider, Provider<RootHider> rootHiderProvider, Provider<OneClickIsolationHelper> oneClickIsolationHelperProvider) {
        return new IsolationViewModel_Factory(isolationDataStoreProvider, rootHiderProvider, oneClickIsolationHelperProvider);
    }

    public static IsolationViewModel newInstance(IsolationDataStore isolationDataStore, RootHider rootHider, OneClickIsolationHelper oneClickIsolationHelper) {
        return new IsolationViewModel(isolationDataStore, rootHider, oneClickIsolationHelper);
    }
}
