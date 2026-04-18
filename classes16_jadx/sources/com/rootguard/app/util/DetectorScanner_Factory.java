package com.rootguard.app.util;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes16.dex */
public final class DetectorScanner_Factory implements Factory<DetectorScanner> {
    private final Provider<Context> contextProvider;

    public DetectorScanner_Factory(Provider<Context> contextProvider) {
        this.contextProvider = contextProvider;
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public DetectorScanner m0get() {
        return newInstance((Context) this.contextProvider.get());
    }

    public static DetectorScanner_Factory create(Provider<Context> contextProvider) {
        return new DetectorScanner_Factory(contextProvider);
    }

    public static DetectorScanner newInstance(Context context) {
        return new DetectorScanner(context);
    }
}
