package com.rootguard.app;

import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.local.SettingsDataStore;
import com.rootguard.app.data.magisk.RootHider;
import dagger.MembersInjector;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class MainActivity_MembersInjector implements MembersInjector<MainActivity> {
    private final Provider<IsolationDataStore> isolationDataStoreProvider;
    private final Provider<RootHider> rootHiderProvider;
    private final Provider<SettingsDataStore> settingsDataStoreProvider;

    public MainActivity_MembersInjector(Provider<SettingsDataStore> settingsDataStoreProvider, Provider<IsolationDataStore> isolationDataStoreProvider, Provider<RootHider> rootHiderProvider) {
        this.settingsDataStoreProvider = settingsDataStoreProvider;
        this.isolationDataStoreProvider = isolationDataStoreProvider;
        this.rootHiderProvider = rootHiderProvider;
    }

    public static MembersInjector<MainActivity> create(Provider<SettingsDataStore> settingsDataStoreProvider, Provider<IsolationDataStore> isolationDataStoreProvider, Provider<RootHider> rootHiderProvider) {
        return new MainActivity_MembersInjector(settingsDataStoreProvider, isolationDataStoreProvider, rootHiderProvider);
    }

    public void injectMembers(MainActivity instance) {
        injectSettingsDataStore(instance, (SettingsDataStore) this.settingsDataStoreProvider.get());
        injectIsolationDataStore(instance, (IsolationDataStore) this.isolationDataStoreProvider.get());
        injectRootHider(instance, (RootHider) this.rootHiderProvider.get());
    }

    public static void injectSettingsDataStore(MainActivity instance, SettingsDataStore settingsDataStore) {
        instance.settingsDataStore = settingsDataStore;
    }

    public static void injectIsolationDataStore(MainActivity instance, IsolationDataStore isolationDataStore) {
        instance.isolationDataStore = isolationDataStore;
    }

    public static void injectRootHider(MainActivity instance, RootHider rootHider) {
        instance.rootHider = rootHider;
    }
}
