package com.rootguard.app.data.local;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.rootguard.app.data.model.IsolationConfig;
import com.rootguard.app.utils.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.StringFormat;
import kotlinx.serialization.json.Json;

/* compiled from: IsolationDataStore.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$removeIsolationConfig$2", f = "IsolationDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
final class IsolationDataStore$removeIsolationConfig$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $packageName;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ IsolationDataStore this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationDataStore$removeIsolationConfig$2(String str, IsolationDataStore isolationDataStore, Continuation<? super IsolationDataStore$removeIsolationConfig$2> continuation) {
        super(2, continuation);
        this.$packageName = str;
        this.this$0 = isolationDataStore;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> isolationDataStore$removeIsolationConfig$2 = new IsolationDataStore$removeIsolationConfig$2(this.$packageName, this.this$0, continuation);
        isolationDataStore$removeIsolationConfig$2.L$0 = obj;
        return isolationDataStore$removeIsolationConfig$2;
    }

    public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
        return create(mutablePreferences, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Preferences.Key key;
        Preferences.Key key2;
        StringFormat stringFormat;
        IsolationConfig isolationConfig;
        Json this_$iv;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                MutablePreferences preferences = (MutablePreferences) this.L$0;
                try {
                    key = IsolationDataStore.ISOLATION_CONFIGS_KEY;
                    Set currentConfigs = (Set) preferences.get(key);
                    if (currentConfigs == null) {
                        currentConfigs = SetsKt.emptySet();
                    }
                    Set $this$forEach$iv$iv$iv = currentConfigs;
                    IsolationDataStore isolationDataStore = this.this$0;
                    Collection destination$iv$iv = new ArrayList();
                    for (Object element$iv$iv : $this$forEach$iv$iv$iv) {
                        String jsonString = (String) element$iv$iv;
                        try {
                            this_$iv = isolationDataStore.json;
                            this_$iv.getSerializersModule();
                            isolationConfig = (IsolationConfig) this_$iv.decodeFromString(IsolationConfig.Companion.serializer(), jsonString);
                        } catch (Exception e) {
                            isolationConfig = null;
                        }
                        if (isolationConfig != null) {
                            destination$iv$iv.add(isolationConfig);
                        }
                    }
                    List configList = CollectionsKt.toMutableList((List) destination$iv$iv);
                    final String str = this.$packageName;
                    CollectionsKt.removeAll(configList, new Function1<IsolationConfig, Boolean>() { // from class: com.rootguard.app.data.local.IsolationDataStore$removeIsolationConfig$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        public final Boolean invoke(IsolationConfig it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return Boolean.valueOf(Intrinsics.areEqual(it.getPackageName(), str));
                        }
                    });
                    key2 = IsolationDataStore.ISOLATION_CONFIGS_KEY;
                    List $this$map$iv = configList;
                    IsolationDataStore isolationDataStore2 = this.this$0;
                    Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                    for (Object item$iv$iv : $this$map$iv) {
                        IsolationConfig it = (IsolationConfig) item$iv$iv;
                        stringFormat = isolationDataStore2.json;
                        StringFormat $this$encodeToString$iv = stringFormat;
                        $this$encodeToString$iv.getSerializersModule();
                        destination$iv$iv2.add($this$encodeToString$iv.encodeToString(IsolationConfig.Companion.serializer(), it));
                    }
                    preferences.set(key2, CollectionsKt.toSet((List) destination$iv$iv2));
                    Logger.INSTANCE.d("Removed isolation config for " + this.$packageName);
                } catch (Exception e2) {
                    Logger.INSTANCE.e("Failed to remove isolation config", e2);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
