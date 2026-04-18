package com.rootguard.app.data.local;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class SettingsDataStore_Factory implements Factory<SettingsDataStore> {
    private final Provider<Context> contextProvider;

    public SettingsDataStore_Factory(Provider<Context> contextProvider) {
        this.contextProvider = contextProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public SettingsDataStore m27get() {
        return newInstance((Context) this.contextProvider.get());
    }

    public static SettingsDataStore_Factory create(Provider<Context> contextProvider) {
        return new SettingsDataStore_Factory(contextProvider);
    }

    public static SettingsDataStore newInstance(Context context) {
        return new SettingsDataStore(context);
    }
}
