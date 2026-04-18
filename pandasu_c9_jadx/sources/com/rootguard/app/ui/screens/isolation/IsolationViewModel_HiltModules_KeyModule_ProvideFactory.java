package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.ui.screens.isolation.IsolationViewModel_HiltModules;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<String> {
    public String get() {
        return provide();
    }

    public static IsolationViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static String provide() {
        return (String) Preconditions.checkNotNullFromProvides(IsolationViewModel_HiltModules.KeyModule.provide());
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
    private static final class InstanceHolder {
        private static final IsolationViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new IsolationViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
