package dagger.hilt.android.internal.managers;

import dagger.hilt.internal.GeneratedComponentManager;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class ApplicationComponentManager implements GeneratedComponentManager<Object> {
    private volatile Object component;
    private final ComponentSupplier componentCreator;
    private final Object componentLock = new Object();

    public ApplicationComponentManager(ComponentSupplier componentCreator) {
        this.componentCreator = componentCreator;
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public Object generatedComponent() {
        if (this.component == null) {
            synchronized (this.componentLock) {
                if (this.component == null) {
                    this.component = this.componentCreator.get();
                }
            }
        }
        return this.component;
    }
}
