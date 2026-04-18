package com.rootguard.app.data.local;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.core.Preferences;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: IsolationDataStore.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\"%\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"isolationDataStore", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "Landroid/content/Context;", "getIsolationDataStore", "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", "isolationDataStore$delegate", "Lkotlin/properties/ReadOnlyProperty;", "app_debug"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class IsolationDataStoreKt {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(IsolationDataStoreKt.class, "isolationDataStore", "getIsolationDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1))};
    private static final ReadOnlyProperty isolationDataStore$delegate = PreferenceDataStoreDelegateKt.preferencesDataStore$default("isolation_config", (ReplaceFileCorruptionHandler) null, (Function1) null, (CoroutineScope) null, 14, (Object) null);

    public static final /* synthetic */ DataStore access$getIsolationDataStore(Context $receiver) {
        return getIsolationDataStore($receiver);
    }

    public static final DataStore<Preferences> getIsolationDataStore(Context $this$isolationDataStore) {
        return (DataStore) isolationDataStore$delegate.getValue($this$isolationDataStore, $$delegatedProperties[0]);
    }
}
