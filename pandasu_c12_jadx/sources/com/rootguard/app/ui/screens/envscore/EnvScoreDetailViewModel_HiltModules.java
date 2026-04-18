package com.rootguard.app.ui.screens.envscore;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.IntoSet;
import dagger.multibindings.StringKey;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final class EnvScoreDetailViewModel_HiltModules {
    private EnvScoreDetailViewModel_HiltModules() {
    }

    @Module
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
    public static abstract class BindsModule {
        @Binds
        @IntoMap
        @StringKey("com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel")
        public abstract ViewModel binds(EnvScoreDetailViewModel envScoreDetailViewModel);

        private BindsModule() {
        }
    }

    @Module
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
    public static final class KeyModule {
        private KeyModule() {
        }

        @Provides
        @IntoSet
        public static String provide() {
            return "com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel";
        }
    }
}
