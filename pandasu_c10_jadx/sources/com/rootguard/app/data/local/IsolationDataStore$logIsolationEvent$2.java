package com.rootguard.app.data.local;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.rootguard.app.data.model.IsolationEvent;
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
import kotlin.jvm.functions.Function2;
import kotlinx.serialization.StringFormat;
import kotlinx.serialization.json.Json;

/* compiled from: IsolationDataStore.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$logIsolationEvent$2", f = "IsolationDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
final class IsolationDataStore$logIsolationEvent$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
    final /* synthetic */ IsolationEvent $event;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ IsolationDataStore this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationDataStore$logIsolationEvent$2(IsolationEvent isolationEvent, IsolationDataStore isolationDataStore, Continuation<? super IsolationDataStore$logIsolationEvent$2> continuation) {
        super(2, continuation);
        this.$event = isolationEvent;
        this.this$0 = isolationDataStore;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> isolationDataStore$logIsolationEvent$2 = new IsolationDataStore$logIsolationEvent$2(this.$event, this.this$0, continuation);
        isolationDataStore$logIsolationEvent$2.L$0 = obj;
        return isolationDataStore$logIsolationEvent$2;
    }

    public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
        return create(mutablePreferences, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Preferences.Key key;
        Preferences.Key key2;
        StringFormat stringFormat;
        IsolationEvent isolationEvent;
        Json this_$iv;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                MutablePreferences preferences = (MutablePreferences) this.L$0;
                try {
                    key = IsolationDataStore.ISOLATION_EVENTS_KEY;
                    Set currentEvents = (Set) preferences.get(key);
                    if (currentEvents == null) {
                        currentEvents = SetsKt.emptySet();
                    }
                    Set $this$forEach$iv$iv$iv = currentEvents;
                    IsolationDataStore isolationDataStore = this.this$0;
                    Collection destination$iv$iv = new ArrayList();
                    for (Object element$iv$iv : $this$forEach$iv$iv$iv) {
                        String jsonString = (String) element$iv$iv;
                        try {
                            this_$iv = isolationDataStore.json;
                            this_$iv.getSerializersModule();
                            isolationEvent = (IsolationEvent) this_$iv.decodeFromString(IsolationEvent.Companion.serializer(), jsonString);
                        } catch (Exception e) {
                            isolationEvent = null;
                        }
                        if (isolationEvent != null) {
                            destination$iv$iv.add(isolationEvent);
                        }
                    }
                    List eventList = CollectionsKt.toMutableList((List) destination$iv$iv);
                    eventList.add(this.$event);
                    if (eventList.size() > 100) {
                        eventList.remove(0);
                    }
                    key2 = IsolationDataStore.ISOLATION_EVENTS_KEY;
                    List $this$map$iv = eventList;
                    IsolationDataStore isolationDataStore2 = this.this$0;
                    Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
                    for (Object item$iv$iv : $this$map$iv) {
                        IsolationEvent it = (IsolationEvent) item$iv$iv;
                        stringFormat = isolationDataStore2.json;
                        StringFormat $this$encodeToString$iv = stringFormat;
                        $this$encodeToString$iv.getSerializersModule();
                        destination$iv$iv2.add($this$encodeToString$iv.encodeToString(IsolationEvent.Companion.serializer(), it));
                    }
                    preferences.set(key2, CollectionsKt.toSet((List) destination$iv$iv2));
                    Logger.INSTANCE.d("Logged isolation event for " + this.$event.getPackageName() + ": " + this.$event.getType());
                } catch (Exception e2) {
                    Logger.INSTANCE.e("Failed to log isolation event", e2);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
