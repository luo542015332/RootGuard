package com.rootguard.app.util;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class ModuleStatusMonitor_Factory implements Factory<ModuleStatusMonitor> {
    private final Provider<Context> contextProvider;

    public ModuleStatusMonitor_Factory(Provider<Context> contextProvider) {
        this.contextProvider = contextProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public ModuleStatusMonitor m1get() {
        return newInstance((Context) this.contextProvider.get());
    }

    public static ModuleStatusMonitor_Factory create(Provider<Context> contextProvider) {
        return new ModuleStatusMonitor_Factory(contextProvider);
    }

    public static ModuleStatusMonitor newInstance(Context context) {
        return new ModuleStatusMonitor(context);
    }
}
