package com.rootguard.app.ui.screens.envscore;

import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.util.DetectorScanner;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailViewModel_Factory implements Factory<EnvScoreDetailViewModel> {
    private final Provider<DetectorScanner> detectorScannerProvider;
    private final Provider<IsolationDataStore> isolationDataStoreProvider;
    private final Provider<RootHider> rootHiderProvider;

    public EnvScoreDetailViewModel_Factory(Provider<RootHider> rootHiderProvider, Provider<DetectorScanner> detectorScannerProvider, Provider<IsolationDataStore> isolationDataStoreProvider) {
        this.rootHiderProvider = rootHiderProvider;
        this.detectorScannerProvider = detectorScannerProvider;
        this.isolationDataStoreProvider = isolationDataStoreProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public EnvScoreDetailViewModel m14get() {
        return newInstance((RootHider) this.rootHiderProvider.get(), (DetectorScanner) this.detectorScannerProvider.get(), (IsolationDataStore) this.isolationDataStoreProvider.get());
    }

    public static EnvScoreDetailViewModel_Factory create(Provider<RootHider> rootHiderProvider, Provider<DetectorScanner> detectorScannerProvider, Provider<IsolationDataStore> isolationDataStoreProvider) {
        return new EnvScoreDetailViewModel_Factory(rootHiderProvider, detectorScannerProvider, isolationDataStoreProvider);
    }

    public static EnvScoreDetailViewModel newInstance(RootHider rootHider, DetectorScanner detectorScanner, IsolationDataStore isolationDataStore) {
        return new EnvScoreDetailViewModel(rootHider, detectorScanner, isolationDataStore);
    }
}
