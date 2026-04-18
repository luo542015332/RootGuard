package dagger.internal;

import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class SingleCheck<T> implements Provider<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private SingleCheck(Provider<T> provider) {
        if (provider == null) {
            throw new AssertionError();
        }
        this.provider = provider;
    }

    @Override // javax.inject.Provider
    public T get() {
        T t = (T) this.instance;
        if (t == UNINITIALIZED) {
            Provider<T> provider = this.provider;
            if (provider == null) {
                return (T) this.instance;
            }
            T t2 = provider.get();
            this.instance = t2;
            this.provider = null;
            return t2;
        }
        return t;
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P provider) {
        if ((provider instanceof SingleCheck) || (provider instanceof DoubleCheck)) {
            return provider;
        }
        return new SingleCheck((Provider) Preconditions.checkNotNull(provider));
    }
}
