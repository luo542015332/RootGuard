package com.rootguard.app.data.local;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import com.rootguard.app.data.model.IsolationConfig;
import com.rootguard.app.data.model.IsolationEvent;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/* compiled from: IsolationDataStore.kt */
@Singleton
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0007\u0018\u0000 :2\u00020\u0001:\u0002:;B\u0011\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010#\u001a\u00020$H\u0086@¢\u0006\u0002\u0010%J\u000e\u0010&\u001a\u00020$H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\t2\u0006\u0010(\u001a\u00020)J\u0018\u0010*\u001a\u0004\u0018\u00010\u00192\u0006\u0010(\u001a\u00020)H\u0086@¢\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\nH\u0086@¢\u0006\u0002\u0010%J\u0016\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020\u001cH\u0086@¢\u0006\u0002\u0010/J\u0016\u00100\u001a\u00020$2\u0006\u0010(\u001a\u00020)H\u0086@¢\u0006\u0002\u0010+J\u0016\u00101\u001a\u00020$2\u0006\u00102\u001a\u00020\u0019H\u0086@¢\u0006\u0002\u00103J\u001c\u00104\u001a\u00020$2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0086@¢\u0006\u0002\u00106J\u0016\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\nH\u0086@¢\u0006\u0002\u00109R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\fR\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\fR\u001d\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\fR\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u00180\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\fR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\t¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\f¨\u0006<"}, d2 = {"Lcom/rootguard/app/data/local/IsolationDataStore;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "dataStore", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "globalIsolationEnabled", "Lkotlinx/coroutines/flow/Flow;", "", "getGlobalIsolationEnabled", "()Lkotlinx/coroutines/flow/Flow;", "hasAnyHideBusyboxConfig", "getHasAnyHideBusyboxConfig", "hasAnyHideMagiskAppConfig", "getHasAnyHideMagiskAppConfig", "hasAnyHideMagiskConfig", "getHasAnyHideMagiskConfig", "hasAnyHideSuConfig", "getHasAnyHideSuConfig", "hasAnyHideXposedConfig", "getHasAnyHideXposedConfig", "isolationConfigs", "", "Lcom/rootguard/app/data/model/IsolationConfig;", "getIsolationConfigs", "isolationEvents", "Lcom/rootguard/app/data/model/IsolationEvent;", "getIsolationEvents", "json", "Lkotlinx/serialization/json/Json;", "sandboxStats", "Lcom/rootguard/app/data/local/IsolationDataStore$SandboxStats;", "getSandboxStats", "clearAllConfigs", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearIsolationLogs", "getConfigForApp", "packageName", "", "getConfigForAppSync", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasAnyEnabledIsolation", "logIsolationEvent", "event", "(Lcom/rootguard/app/data/model/IsolationEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeIsolationConfig", "saveIsolationConfig", "config", "(Lcom/rootguard/app/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveIsolationConfigs", "configs", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setGlobalIsolationEnabled", "enabled", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "SandboxStats", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class IsolationDataStore {
    private static final Preferences.Key DENY_LIST_ENABLED_KEY = null;
    private static final Preferences.Key PROP_SPOOF_ENABLED_KEY = null;
    private final Context context;
    private final DataStore<Preferences> dataStore;
    private final Flow<Boolean> globalIsolationEnabled;
    private final Flow<Boolean> hasAnyHideBusyboxConfig;
    private final Flow<Boolean> hasAnyHideMagiskAppConfig;
    private final Flow<Boolean> hasAnyHideMagiskConfig;
    private final Flow<Boolean> hasAnyHideSuConfig;
    private final Flow<Boolean> hasAnyHideXposedConfig;
    private final Flow<List<IsolationConfig>> isolationConfigs;
    private final Flow<List<IsolationEvent>> isolationEvents;
    private final Json json;
    private final Flow<SandboxStats> sandboxStats;
    public static final int $stable = 8;
    private static final Preferences.Key<Set<String>> ISOLATION_CONFIGS_KEY = PreferencesKeys.stringSetKey("isolation_configs");
    private static final Preferences.Key<Boolean> GLOBAL_ISOLATION_ENABLED_KEY = PreferencesKeys.booleanKey("global_isolation_enabled");
    private static final Preferences.Key<String> DEFAULT_ISOLATION_LEVEL_KEY = PreferencesKeys.stringKey("default_isolation_level");
    private static final Preferences.Key<Set<String>> ISOLATION_EVENTS_KEY = PreferencesKeys.stringSetKey("isolation_events");
    private static final Preferences.Key<String> SANDBOX_STATS_KEY = PreferencesKeys.stringKey("sandbox_stats");

    @Inject
    public IsolationDataStore(@ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        DataStore<Preferences> access$getIsolationDataStore = IsolationDataStoreKt.access$getIsolationDataStore(context);
        this.dataStore = access$getIsolationDataStore;
        this.json = JsonKt.Json$default((Json) null, new Function1<JsonBuilder, Unit>() { // from class: com.rootguard.app.data.local.IsolationDataStore$json$1
            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                invoke((JsonBuilder) p1);
                return Unit.INSTANCE;
            }

            public final void invoke(JsonBuilder $this$Json) {
                Intrinsics.checkNotNullParameter($this$Json, "$this$Json");
                $this$Json.setIgnoreUnknownKeys(true);
            }
        }, 1, (Object) null);
        final Flow $this$map$iv = access$getIsolationDataStore.getData();
        this.isolationConfigs = new Flow<List<? extends IsolationConfig>>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ IsolationDataStore this$0;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$1$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, IsolationDataStore isolationDataStore) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = isolationDataStore;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
                /* JADX WARN: Removed duplicated region for block: B:31:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:39:0x00f2 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:40:0x00f3  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x00c2 A[SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r19, kotlin.coroutines.Continuation r20) {
                    /*
                        Method dump skipped, instructions count: 256
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv.collect(new AnonymousClass2(collector, this), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv2 = access$getIsolationDataStore.getData();
        this.globalIsolationEnabled = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r9
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2$2$1 r0 = (com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r9 = r0.label
                        int r9 = r9 - r2
                        r0.label = r9
                        goto L19
                    L14:
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2$2$1 r0 = new com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2$2$1
                        r0.<init>(r9)
                    L19:
                        r9 = r0
                        java.lang.Object r0 = r9.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r9.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r9)
                        throw r8
                    L2d:
                        r8 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L60
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r7
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r9
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        androidx.datastore.preferences.core.Preferences r8 = (androidx.datastore.preferences.core.Preferences) r8
                        r4 = 0
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.IsolationDataStore.access$getGLOBAL_ISOLATION_ENABLED_KEY$cp()
                        java.lang.Object r5 = r8.get(r5)
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        r6 = 1
                        if (r5 == 0) goto L51
                        boolean r5 = r5.booleanValue()
                        goto L52
                    L51:
                        r5 = r6
                    L52:
                        java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                        r9.label = r6
                        java.lang.Object r8 = r2.emit(r8, r9)
                        if (r8 != r1) goto L5f
                        return r1
                    L5f:
                        r8 = r3
                    L60:
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv2.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv3 = access$getIsolationDataStore.getData();
        this.isolationEvents = new Flow<List<? extends IsolationEvent>>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$3

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ IsolationDataStore this$0;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$3$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$3$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, IsolationDataStore isolationDataStore) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = isolationDataStore;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
                /* JADX WARN: Removed duplicated region for block: B:31:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:39:0x0108 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:40:0x0109  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x00c2 A[SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r19, kotlin.coroutines.Continuation r20) {
                    /*
                        Method dump skipped, instructions count: 278
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv3.collect(new AnonymousClass2(collector, this), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv4 = this.isolationEvents;
        this.sandboxStats = new Flow<SandboxStats>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$4

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$4$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$4$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$4$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x0036  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r18, kotlin.coroutines.Continuation r19) {
                    /*
                        Method dump skipped, instructions count: 366
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$4.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv4.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv5 = this.isolationConfigs;
        this.hasAnyHideSuConfig = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
                    /*
                        r11 = this;
                        boolean r0 = r13 instanceof com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r13
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5$2$1 r0 = (com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r13 = r0.label
                        int r13 = r13 - r2
                        r0.label = r13
                        goto L19
                    L14:
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5$2$1 r0 = new com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5$2$1
                        r0.<init>(r13)
                    L19:
                        r13 = r0
                        java.lang.Object r0 = r13.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r13.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        r12.<init>(r13)
                        throw r12
                    L2d:
                        r12 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L86
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r11
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r13
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        java.util.List r12 = (java.util.List) r12
                        r4 = 0
                        java.lang.Iterable r12 = (java.lang.Iterable) r12
                        r5 = 0
                        boolean r6 = r12 instanceof java.util.Collection
                        r7 = 1
                        r8 = 0
                        if (r6 == 0) goto L52
                        r6 = r12
                        java.util.Collection r6 = (java.util.Collection) r6
                        boolean r6 = r6.isEmpty()
                        if (r6 == 0) goto L52
                        goto L77
                    L52:
                        java.util.Iterator r6 = r12.iterator()
                    L56:
                        boolean r12 = r6.hasNext()
                        if (r12 == 0) goto L76
                        java.lang.Object r12 = r6.next()
                        com.rootguard.app.data.model.IsolationConfig r12 = (com.rootguard.app.data.model.IsolationConfig) r12
                        r9 = 0
                        boolean r10 = r12.isEnabled()
                        if (r10 == 0) goto L71
                        boolean r10 = r12.getHideSuBinary()
                        if (r10 == 0) goto L71
                        r12 = r7
                        goto L72
                    L71:
                        r12 = r8
                    L72:
                        if (r12 == 0) goto L56
                        r8 = r7
                        goto L77
                    L76:
                    L77:
                        java.lang.Boolean r12 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
                        r13.label = r7
                        java.lang.Object r12 = r2.emit(r12, r13)
                        if (r12 != r1) goto L85
                        return r1
                    L85:
                        r12 = r3
                    L86:
                        kotlin.Unit r12 = kotlin.Unit.INSTANCE
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$5.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv5.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv6 = this.isolationConfigs;
        this.hasAnyHideMagiskConfig = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
                    /*
                        r11 = this;
                        boolean r0 = r13 instanceof com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r13
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6$2$1 r0 = (com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r13 = r0.label
                        int r13 = r13 - r2
                        r0.label = r13
                        goto L19
                    L14:
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6$2$1 r0 = new com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6$2$1
                        r0.<init>(r13)
                    L19:
                        r13 = r0
                        java.lang.Object r0 = r13.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r13.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        r12.<init>(r13)
                        throw r12
                    L2d:
                        r12 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L86
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r11
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r13
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        java.util.List r12 = (java.util.List) r12
                        r4 = 0
                        java.lang.Iterable r12 = (java.lang.Iterable) r12
                        r5 = 0
                        boolean r6 = r12 instanceof java.util.Collection
                        r7 = 1
                        r8 = 0
                        if (r6 == 0) goto L52
                        r6 = r12
                        java.util.Collection r6 = (java.util.Collection) r6
                        boolean r6 = r6.isEmpty()
                        if (r6 == 0) goto L52
                        goto L77
                    L52:
                        java.util.Iterator r6 = r12.iterator()
                    L56:
                        boolean r12 = r6.hasNext()
                        if (r12 == 0) goto L76
                        java.lang.Object r12 = r6.next()
                        com.rootguard.app.data.model.IsolationConfig r12 = (com.rootguard.app.data.model.IsolationConfig) r12
                        r9 = 0
                        boolean r10 = r12.isEnabled()
                        if (r10 == 0) goto L71
                        boolean r10 = r12.getHideMagisk()
                        if (r10 == 0) goto L71
                        r12 = r7
                        goto L72
                    L71:
                        r12 = r8
                    L72:
                        if (r12 == 0) goto L56
                        r8 = r7
                        goto L77
                    L76:
                    L77:
                        java.lang.Boolean r12 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
                        r13.label = r7
                        java.lang.Object r12 = r2.emit(r12, r13)
                        if (r12 != r1) goto L85
                        return r1
                    L85:
                        r12 = r3
                    L86:
                        kotlin.Unit r12 = kotlin.Unit.INSTANCE
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$6.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv6.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv7 = this.isolationConfigs;
        this.hasAnyHideBusyboxConfig = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
                    /*
                        r11 = this;
                        boolean r0 = r13 instanceof com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r13
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7$2$1 r0 = (com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r13 = r0.label
                        int r13 = r13 - r2
                        r0.label = r13
                        goto L19
                    L14:
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7$2$1 r0 = new com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7$2$1
                        r0.<init>(r13)
                    L19:
                        r13 = r0
                        java.lang.Object r0 = r13.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r13.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        r12.<init>(r13)
                        throw r12
                    L2d:
                        r12 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L86
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r11
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r13
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        java.util.List r12 = (java.util.List) r12
                        r4 = 0
                        java.lang.Iterable r12 = (java.lang.Iterable) r12
                        r5 = 0
                        boolean r6 = r12 instanceof java.util.Collection
                        r7 = 1
                        r8 = 0
                        if (r6 == 0) goto L52
                        r6 = r12
                        java.util.Collection r6 = (java.util.Collection) r6
                        boolean r6 = r6.isEmpty()
                        if (r6 == 0) goto L52
                        goto L77
                    L52:
                        java.util.Iterator r6 = r12.iterator()
                    L56:
                        boolean r12 = r6.hasNext()
                        if (r12 == 0) goto L76
                        java.lang.Object r12 = r6.next()
                        com.rootguard.app.data.model.IsolationConfig r12 = (com.rootguard.app.data.model.IsolationConfig) r12
                        r9 = 0
                        boolean r10 = r12.isEnabled()
                        if (r10 == 0) goto L71
                        boolean r10 = r12.getHideBusybox()
                        if (r10 == 0) goto L71
                        r12 = r7
                        goto L72
                    L71:
                        r12 = r8
                    L72:
                        if (r12 == 0) goto L56
                        r8 = r7
                        goto L77
                    L76:
                    L77:
                        java.lang.Boolean r12 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
                        r13.label = r7
                        java.lang.Object r12 = r2.emit(r12, r13)
                        if (r12 != r1) goto L85
                        return r1
                    L85:
                        r12 = r3
                    L86:
                        kotlin.Unit r12 = kotlin.Unit.INSTANCE
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$7.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv7.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv8 = this.isolationConfigs;
        this.hasAnyHideXposedConfig = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
                    /*
                        r11 = this;
                        boolean r0 = r13 instanceof com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r13
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8$2$1 r0 = (com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r13 = r0.label
                        int r13 = r13 - r2
                        r0.label = r13
                        goto L19
                    L14:
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8$2$1 r0 = new com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8$2$1
                        r0.<init>(r13)
                    L19:
                        r13 = r0
                        java.lang.Object r0 = r13.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r13.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        r12.<init>(r13)
                        throw r12
                    L2d:
                        r12 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L86
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r11
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r13
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        java.util.List r12 = (java.util.List) r12
                        r4 = 0
                        java.lang.Iterable r12 = (java.lang.Iterable) r12
                        r5 = 0
                        boolean r6 = r12 instanceof java.util.Collection
                        r7 = 1
                        r8 = 0
                        if (r6 == 0) goto L52
                        r6 = r12
                        java.util.Collection r6 = (java.util.Collection) r6
                        boolean r6 = r6.isEmpty()
                        if (r6 == 0) goto L52
                        goto L77
                    L52:
                        java.util.Iterator r6 = r12.iterator()
                    L56:
                        boolean r12 = r6.hasNext()
                        if (r12 == 0) goto L76
                        java.lang.Object r12 = r6.next()
                        com.rootguard.app.data.model.IsolationConfig r12 = (com.rootguard.app.data.model.IsolationConfig) r12
                        r9 = 0
                        boolean r10 = r12.isEnabled()
                        if (r10 == 0) goto L71
                        boolean r10 = r12.getHideXposed()
                        if (r10 == 0) goto L71
                        r12 = r7
                        goto L72
                    L71:
                        r12 = r8
                    L72:
                        if (r12 == 0) goto L56
                        r8 = r7
                        goto L77
                    L76:
                    L77:
                        java.lang.Boolean r12 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
                        r13.label = r7
                        java.lang.Object r12 = r2.emit(r12, r13)
                        if (r12 != r1) goto L85
                        return r1
                    L85:
                        r12 = r3
                    L86:
                        kotlin.Unit r12 = kotlin.Unit.INSTANCE
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$8.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv8.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv9 = this.isolationConfigs;
        this.hasAnyHideMagiskAppConfig = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
                    /*
                        r11 = this;
                        boolean r0 = r13 instanceof com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r13
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9$2$1 r0 = (com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r13 = r0.label
                        int r13 = r13 - r2
                        r0.label = r13
                        goto L19
                    L14:
                        com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9$2$1 r0 = new com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9$2$1
                        r0.<init>(r13)
                    L19:
                        r13 = r0
                        java.lang.Object r0 = r13.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r13.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        r12.<init>(r13)
                        throw r12
                    L2d:
                        r12 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L86
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r11
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r13
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        java.util.List r12 = (java.util.List) r12
                        r4 = 0
                        java.lang.Iterable r12 = (java.lang.Iterable) r12
                        r5 = 0
                        boolean r6 = r12 instanceof java.util.Collection
                        r7 = 1
                        r8 = 0
                        if (r6 == 0) goto L52
                        r6 = r12
                        java.util.Collection r6 = (java.util.Collection) r6
                        boolean r6 = r6.isEmpty()
                        if (r6 == 0) goto L52
                        goto L77
                    L52:
                        java.util.Iterator r6 = r12.iterator()
                    L56:
                        boolean r12 = r6.hasNext()
                        if (r12 == 0) goto L76
                        java.lang.Object r12 = r6.next()
                        com.rootguard.app.data.model.IsolationConfig r12 = (com.rootguard.app.data.model.IsolationConfig) r12
                        r9 = 0
                        boolean r10 = r12.isEnabled()
                        if (r10 == 0) goto L71
                        boolean r10 = r12.getHideMagiskApp()
                        if (r10 == 0) goto L71
                        r12 = r7
                        goto L72
                    L71:
                        r12 = r8
                    L72:
                        if (r12 == 0) goto L56
                        r8 = r7
                        goto L77
                    L76:
                    L77:
                        java.lang.Boolean r12 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
                        r13.label = r7
                        java.lang.Object r12 = r2.emit(r12, r13)
                        if (r12 != r1) goto L85
                        return r1
                    L85:
                        r12 = r3
                    L86:
                        kotlin.Unit r12 = kotlin.Unit.INSTANCE
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$special$$inlined$map$9.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv9.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
    }

    public final Flow<List<IsolationConfig>> getIsolationConfigs() {
        return this.isolationConfigs;
    }

    public final Flow<IsolationConfig> getConfigForApp(final String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        final Flow $this$map$iv = this.dataStore.getData();
        return new Flow<IsolationConfig>() { // from class: com.rootguard.app.data.local.IsolationDataStore$getConfigForApp$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.IsolationDataStore$getConfigForApp$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ String $packageName$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ IsolationDataStore this$0;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.IsolationDataStore$getConfigForApp$$inlined$map$1$2", f = "IsolationDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.IsolationDataStore$getConfigForApp$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, (Continuation) this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, IsolationDataStore isolationDataStore, String str) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = isolationDataStore;
                    this.$packageName$inlined = str;
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r20, kotlin.coroutines.Continuation r21) {
                    /*
                        Method dump skipped, instructions count: 242
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore$getConfigForApp$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv.collect(new AnonymousClass2(collector, this, packageName), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
    }

    public final Object getConfigForAppSync(String packageName, Continuation<? super IsolationConfig> continuation) {
        return FlowKt.first(getConfigForApp(packageName), continuation);
    }

    public final Object saveIsolationConfig(IsolationConfig config, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new IsolationDataStore$saveIsolationConfig$2(config, this, null), continuation);
        if (edit == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return edit;
        }
        Unit unit = Unit.INSTANCE;
        LspConfigHelper.exportSingleConfig(config);
        return unit;
    }

    public final Object removeIsolationConfig(String packageName, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new IsolationDataStore$removeIsolationConfig$2(packageName, this, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<Boolean> getGlobalIsolationEnabled() {
        return this.globalIsolationEnabled;
    }

    public final Object setGlobalIsolationEnabled(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new IsolationDataStore$setGlobalIsolationEnabled$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Object clearAllConfigs(Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new IsolationDataStore$clearAllConfigs$2(null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<List<IsolationEvent>> getIsolationEvents() {
        return this.isolationEvents;
    }

    public final Object logIsolationEvent(IsolationEvent event, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new IsolationDataStore$logIsolationEvent$2(event, this, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Object clearIsolationLogs(Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new IsolationDataStore$clearIsolationLogs$2(null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    /* compiled from: IsolationDataStore.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/rootguard/app/data/local/IsolationDataStore$SandboxStats;", "", "totalBlocked", "", "totalAllowed", "commandBlocked", "pathBlocked", "(IIII)V", "getCommandBlocked", "()I", "getPathBlocked", "getTotalAllowed", "getTotalBlocked", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final /* data */ class SandboxStats {
        public static final int $stable = 0;
        private final int commandBlocked;
        private final int pathBlocked;
        private final int totalAllowed;
        private final int totalBlocked;

        public SandboxStats() {
            this(0, 0, 0, 0, 15, null);
        }

        public static /* synthetic */ SandboxStats copy$default(SandboxStats sandboxStats, int i, int i2, int i3, int i4, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i = sandboxStats.totalBlocked;
            }
            if ((i5 & 2) != 0) {
                i2 = sandboxStats.totalAllowed;
            }
            if ((i5 & 4) != 0) {
                i3 = sandboxStats.commandBlocked;
            }
            if ((i5 & 8) != 0) {
                i4 = sandboxStats.pathBlocked;
            }
            return sandboxStats.copy(i, i2, i3, i4);
        }

        /* renamed from: component1, reason: from getter */
        public final int getTotalBlocked() {
            return this.totalBlocked;
        }

        /* renamed from: component2, reason: from getter */
        public final int getTotalAllowed() {
            return this.totalAllowed;
        }

        /* renamed from: component3, reason: from getter */
        public final int getCommandBlocked() {
            return this.commandBlocked;
        }

        /* renamed from: component4, reason: from getter */
        public final int getPathBlocked() {
            return this.pathBlocked;
        }

        public final SandboxStats copy(int totalBlocked, int totalAllowed, int commandBlocked, int pathBlocked) {
            return new SandboxStats(totalBlocked, totalAllowed, commandBlocked, pathBlocked);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SandboxStats)) {
                return false;
            }
            SandboxStats sandboxStats = (SandboxStats) other;
            return this.totalBlocked == sandboxStats.totalBlocked && this.totalAllowed == sandboxStats.totalAllowed && this.commandBlocked == sandboxStats.commandBlocked && this.pathBlocked == sandboxStats.pathBlocked;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.totalBlocked) * 31) + Integer.hashCode(this.totalAllowed)) * 31) + Integer.hashCode(this.commandBlocked)) * 31) + Integer.hashCode(this.pathBlocked);
        }

        public String toString() {
            return "SandboxStats(totalBlocked=" + this.totalBlocked + ", totalAllowed=" + this.totalAllowed + ", commandBlocked=" + this.commandBlocked + ", pathBlocked=" + this.pathBlocked + ")";
        }

        public SandboxStats(int totalBlocked, int totalAllowed, int commandBlocked, int pathBlocked) {
            this.totalBlocked = totalBlocked;
            this.totalAllowed = totalAllowed;
            this.commandBlocked = commandBlocked;
            this.pathBlocked = pathBlocked;
        }

        public /* synthetic */ SandboxStats(int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4);
        }

        public final int getTotalBlocked() {
            return this.totalBlocked;
        }

        public final int getTotalAllowed() {
            return this.totalAllowed;
        }

        public final int getCommandBlocked() {
            return this.commandBlocked;
        }

        public final int getPathBlocked() {
            return this.pathBlocked;
        }
    }

    public final Flow<SandboxStats> getSandboxStats() {
        return this.sandboxStats;
    }

    public final Object saveIsolationConfigs(List<IsolationConfig> list, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new IsolationDataStore$saveIsolationConfigs$2(list, this, null), continuation);
        if (edit == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return edit;
        }
        Unit unit = Unit.INSTANCE;
        LspConfigHelper.exportConfig(list);
        return unit;
    }

    public final Flow<Boolean> getHasAnyHideSuConfig() {
        return this.hasAnyHideSuConfig;
    }

    public final Flow<Boolean> getHasAnyHideMagiskConfig() {
        return this.hasAnyHideMagiskConfig;
    }

    public final Flow<Boolean> getHasAnyHideBusyboxConfig() {
        return this.hasAnyHideBusyboxConfig;
    }

    public final Flow<Boolean> getHasAnyHideXposedConfig() {
        return this.hasAnyHideXposedConfig;
    }

    public final Flow<Boolean> getHasAnyHideMagiskAppConfig() {
        return this.hasAnyHideMagiskAppConfig;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object hasAnyEnabledIsolation(kotlin.coroutines.Continuation<? super java.lang.Boolean> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.rootguard.app.data.local.IsolationDataStore$hasAnyEnabledIsolation$1
            if (r0 == 0) goto L14
            r0 = r9
            com.rootguard.app.data.local.IsolationDataStore$hasAnyEnabledIsolation$1 r0 = (com.rootguard.app.data.local.IsolationDataStore$hasAnyEnabledIsolation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.rootguard.app.data.local.IsolationDataStore$hasAnyEnabledIsolation$1 r0 = new com.rootguard.app.data.local.IsolationDataStore$hasAnyEnabledIsolation$1
            r0.<init>(r8, r9)
        L19:
            r9 = r0
            java.lang.Object r0 = r9.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.label
            r3 = 1
            switch(r2) {
                case 0: goto L33;
                case 1: goto L2e;
                default: goto L26;
            }
        L26:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L2e:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = r0
            goto L42
        L33:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = r8
            kotlinx.coroutines.flow.Flow<java.util.List<com.rootguard.app.data.model.IsolationConfig>> r4 = r2.isolationConfigs
            r9.label = r3
            java.lang.Object r2 = kotlinx.coroutines.flow.FlowKt.first(r4, r9)
            if (r2 != r1) goto L42
            return r1
        L42:
            r1 = r2
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            r2 = 0
            boolean r4 = r1 instanceof java.util.Collection
            r5 = 0
            if (r4 == 0) goto L56
            r4 = r1
            java.util.Collection r4 = (java.util.Collection) r4
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto L56
            r3 = r5
            goto L70
        L56:
            java.util.Iterator r4 = r1.iterator()
        L5a:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r4.next()
            r6 = r1
            com.rootguard.app.data.model.IsolationConfig r6 = (com.rootguard.app.data.model.IsolationConfig) r6
            r7 = 0
            boolean r6 = r6.isEnabled()
            if (r6 == 0) goto L5a
            goto L70
        L6f:
            r3 = r5
        L70:
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.IsolationDataStore.hasAnyEnabledIsolation(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
