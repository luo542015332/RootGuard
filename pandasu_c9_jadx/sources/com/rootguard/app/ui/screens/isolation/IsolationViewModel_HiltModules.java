package com.rootguard.app.ui.screens.isolation;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.IntoSet;
import dagger.multibindings.StringKey;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel_HiltModules {
    private IsolationViewModel_HiltModules() {
    }

    @Module
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
    public static abstract class BindsModule {
        @Binds
        @IntoMap
        @StringKey("com.rootguard.app.ui.screens.isolation.IsolationViewModel")
        public abstract ViewModel binds(IsolationViewModel isolationViewModel);

        private BindsModule() {
        }
    }

    @Module
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
    public static final class KeyModule {
        private KeyModule() {
        }

        @Provides
        @IntoSet
        public static String provide() {
            return "com.rootguard.app.ui.screens.isolation.IsolationViewModel";
        }
    }
}
