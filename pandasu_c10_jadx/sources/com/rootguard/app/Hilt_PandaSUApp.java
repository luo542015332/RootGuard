package com.rootguard.app;

import android.app.Application;
import dagger.hilt.android.internal.managers.ApplicationComponentManager;
import dagger.hilt.android.internal.managers.ComponentSupplier;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.UnsafeCasts;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public abstract class Hilt_PandaSUApp extends Application implements GeneratedComponentManagerHolder {
    private boolean injected = false;
    private final ApplicationComponentManager componentManager = new ApplicationComponentManager(new ComponentSupplier() { // from class: com.rootguard.app.Hilt_PandaSUApp.1
        public Object get() {
            return DaggerPandaSUApp_HiltComponents_SingletonC.builder().applicationContextModule(new ApplicationContextModule(Hilt_PandaSUApp.this)).build();
        }
    });

    /* renamed from: componentManager, reason: merged with bridge method [inline-methods] */
    public final ApplicationComponentManager m24componentManager() {
        return this.componentManager;
    }

    public final Object generatedComponent() {
        return m24componentManager().generatedComponent();
    }

    @Override // android.app.Application
    public void onCreate() {
        hiltInternalInject();
        super.onCreate();
    }

    protected void hiltInternalInject() {
        if (!this.injected) {
            this.injected = true;
            ((PandaSUApp_GeneratedInjector) generatedComponent()).injectPandaSUApp((PandaSUApp) UnsafeCasts.unsafeCast(this));
        }
    }
}
