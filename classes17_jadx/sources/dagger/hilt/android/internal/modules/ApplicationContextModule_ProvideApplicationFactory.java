package dagger.hilt.android.internal.modules;

import android.app.Application;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class ApplicationContextModule_ProvideApplicationFactory implements Factory<Application> {
    private final ApplicationContextModule module;

    public ApplicationContextModule_ProvideApplicationFactory(ApplicationContextModule module) {
        this.module = module;
    }

    @Override // javax.inject.Provider
    public Application get() {
        return provideApplication(this.module);
    }

    public static ApplicationContextModule_ProvideApplicationFactory create(ApplicationContextModule module) {
        return new ApplicationContextModule_ProvideApplicationFactory(module);
    }

    public static Application provideApplication(ApplicationContextModule instance) {
        return (Application) Preconditions.checkNotNullFromProvides(instance.provideApplication());
    }
}
