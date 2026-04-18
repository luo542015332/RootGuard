package androidx.datastore.preferences;

import androidx.datastore.migrations.SharedPreferencesView;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: SharedPreferencesMigration.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "sharedPrefs", "Landroidx/datastore/migrations/SharedPreferencesView;", "currentData"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1", f = "SharedPreferencesMigration.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
final class SharedPreferencesMigrationKt$getMigrationFunction$1 extends SuspendLambda implements Function3<SharedPreferencesView, Preferences, Continuation<? super Preferences>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SharedPreferencesMigrationKt$getMigrationFunction$1(Continuation<? super SharedPreferencesMigrationKt$getMigrationFunction$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(SharedPreferencesView sharedPreferencesView, Preferences preferences, Continuation<? super Preferences> continuation) {
        SharedPreferencesMigrationKt$getMigrationFunction$1 sharedPreferencesMigrationKt$getMigrationFunction$1 = new SharedPreferencesMigrationKt$getMigrationFunction$1(continuation);
        sharedPreferencesMigrationKt$getMigrationFunction$1.L$0 = sharedPreferencesView;
        sharedPreferencesMigrationKt$getMigrationFunction$1.L$1 = preferences;
        return sharedPreferencesMigrationKt$getMigrationFunction$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                SharedPreferencesView sharedPrefs = (SharedPreferencesView) this.L$0;
                Preferences currentData = (Preferences) this.L$1;
                Iterable $this$map$iv = currentData.asMap().keySet();
                Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                for (Object item$iv$iv : $this$map$iv) {
                    Preferences.Key it = (Preferences.Key) item$iv$iv;
                    destination$iv$iv.add(it.getName());
                }
                List currentKeys = (List) destination$iv$iv;
                Map $this$filter$iv = sharedPrefs.getAll();
                Map destination$iv$iv2 = new LinkedHashMap();
                for (Map.Entry element$iv$iv : $this$filter$iv.entrySet()) {
                    if (Boxing.boxBoolean(!currentKeys.contains((String) element$iv$iv.getKey())).booleanValue()) {
                        destination$iv$iv2.put(element$iv$iv.getKey(), element$iv$iv.getValue());
                    }
                }
                MutablePreferences mutablePreferences = currentData.toMutablePreferences();
                for (Map.Entry entry : destination$iv$iv2.entrySet()) {
                    String key = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof Boolean) {
                        mutablePreferences.set(PreferencesKeys.booleanKey(key), value);
                    } else if (value instanceof Float) {
                        mutablePreferences.set(PreferencesKeys.floatKey(key), value);
                    } else if (value instanceof Integer) {
                        mutablePreferences.set(PreferencesKeys.intKey(key), value);
                    } else if (value instanceof Long) {
                        mutablePreferences.set(PreferencesKeys.longKey(key), value);
                    } else if (value instanceof String) {
                        mutablePreferences.set(PreferencesKeys.stringKey(key), value);
                    } else if (value instanceof Set) {
                        Preferences.Key<Set<String>> stringSetKey = PreferencesKeys.stringSetKey(key);
                        if (value != null) {
                            mutablePreferences.set(stringSetKey, (Set) value);
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                        }
                    } else {
                        continue;
                    }
                }
                return mutablePreferences.toPreferences();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
