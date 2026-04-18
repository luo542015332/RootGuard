package com.rootguard.app.ui.screens.envscore;

import com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel_HiltModules;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<String> {
    public String get() {
        return provide();
    }

    public static EnvScoreDetailViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static String provide() {
        return (String) Preconditions.checkNotNullFromProvides(EnvScoreDetailViewModel_HiltModules.KeyModule.provide());
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
    private static final class InstanceHolder {
        private static final EnvScoreDetailViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new EnvScoreDetailViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
