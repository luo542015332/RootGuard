package androidx.lifecycle;

import androidx.arch.core.internal.SafeIterableMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {
    private SafeIterableMap<LiveData<?>, Source<?>> mSources;

    public MediatorLiveData() {
        this.mSources = new SafeIterableMap<>();
    }

    public MediatorLiveData(T value) {
        super(value);
        this.mSources = new SafeIterableMap<>();
    }

    public <S> void addSource(LiveData<S> source, Observer<? super S> onChanged) {
        if (source == null) {
            throw new NullPointerException("source cannot be null");
        }
        Source<S> e = new Source<>(source, onChanged);
        Source<?> existing = (Source) this.mSources.putIfAbsent(source, e);
        if (existing != null && existing.mObserver != onChanged) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (existing == null && hasActiveObservers()) {
            e.plug();
        }
    }

    public <S> void removeSource(LiveData<S> toRemote) {
        Source<?> source = (Source) this.mSources.remove(toRemote);
        if (source != null) {
            source.unplug();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        Iterator it = this.mSources.iterator();
        while (it.hasNext()) {
            Map.Entry<LiveData<?>, Source<?>> source = (Map.Entry) it.next();
            source.getValue().plug();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        Iterator it = this.mSources.iterator();
        while (it.hasNext()) {
            Map.Entry<LiveData<?>, Source<?>> source = (Map.Entry) it.next();
            source.getValue().unplug();
        }
    }

    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    private static class Source<V> implements Observer<V> {
        final LiveData<V> mLiveData;
        final Observer<? super V> mObserver;
        int mVersion = -1;

        Source(LiveData<V> liveData, Observer<? super V> observer) {
            this.mLiveData = liveData;
            this.mObserver = observer;
        }

        void plug() {
            this.mLiveData.observeForever(this);
        }

        void unplug() {
            this.mLiveData.removeObserver(this);
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(V v) {
            if (this.mVersion != this.mLiveData.getVersion()) {
                this.mVersion = this.mLiveData.getVersion();
                this.mObserver.onChanged(v);
            }
        }
    }
}
