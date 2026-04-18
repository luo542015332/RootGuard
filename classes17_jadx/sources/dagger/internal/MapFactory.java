package dagger.internal;

import dagger.internal.AbstractMapFactory;
import java.util.Collections;
import java.util.Map;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class MapFactory<K, V> extends AbstractMapFactory<K, V, V> {
    private static final Provider<Map<Object, Object>> EMPTY = InstanceFactory.create(Collections.emptyMap());

    public static <K, V> Builder<K, V> builder(int size) {
        return new Builder<>(size);
    }

    public static <K, V> Provider<Map<K, V>> emptyMapProvider() {
        return (Provider<Map<K, V>>) EMPTY;
    }

    private MapFactory(Map<K, Provider<V>> map) {
        super(map);
    }

    @Override // javax.inject.Provider
    public Map<K, V> get() {
        Map<K, V> result = DaggerCollections.newLinkedHashMapWithExpectedSize(contributingMap().size());
        for (Map.Entry<K, Provider<V>> entry : contributingMap().entrySet()) {
            result.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(result);
    }

    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static final class Builder<K, V> extends AbstractMapFactory.Builder<K, V, V> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // dagger.internal.AbstractMapFactory.Builder
        public /* bridge */ /* synthetic */ AbstractMapFactory.Builder put(Object obj, Provider provider) {
            return put((Builder<K, V>) obj, provider);
        }

        private Builder(int size) {
            super(size);
        }

        @Override // dagger.internal.AbstractMapFactory.Builder
        public Builder<K, V> put(K key, Provider<V> providerOfValue) {
            super.put((Builder<K, V>) key, (Provider) providerOfValue);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // dagger.internal.AbstractMapFactory.Builder
        public Builder<K, V> putAll(Provider<Map<K, V>> provider) {
            super.putAll((Provider) provider);
            return this;
        }

        public MapFactory<K, V> build() {
            return new MapFactory<>(this.map);
        }
    }
}
