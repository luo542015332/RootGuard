package com.rootguard.app.data.local;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: SettingsDataStore.kt */
@Singleton
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0010\b\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010'\u001a\u00020#2\u0006\u0010(\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010)J\u0016\u0010*\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010+\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010,\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010-\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010.\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u0010/\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u00100\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%J\u0016\u00101\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010%R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\tR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\tR\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\tR\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\tR\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\tR\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\tR\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\tR\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\tR\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\t¨\u00063"}, d2 = {"Lcom/rootguard/app/data/local/SettingsDataStore;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "autoDenyUnknown", "Lkotlinx/coroutines/flow/Flow;", "", "getAutoDenyUnknown", "()Lkotlinx/coroutines/flow/Flow;", "checkModuleUpdates", "getCheckModuleUpdates", "currentTheme", "", "getCurrentTheme", "darkMode", "getDarkMode", "dataStore", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "defaultUnmountModules", "getDefaultUnmountModules", "dynamicColors", "getDynamicColors", "kernelUnmountModules", "getKernelUnmountModules", "showFloatingDialog", "getShowFloatingDialog", "showNotifications", "getShowNotifications", "traditionalSuSupport", "getTraditionalSuSupport", "webViewDebugging", "getWebViewDebugging", "setAutoDenyUnknown", "", "enabled", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setCheckModuleUpdates", "setCurrentTheme", "themeId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setDarkMode", "setDefaultUnmountModules", "setDynamicColors", "setKernelUnmountModules", "setShowFloatingDialog", "setShowNotifications", "setTraditionalSuSupport", "setWebViewDebugging", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class SettingsDataStore {
    private final Flow<Boolean> autoDenyUnknown;
    private final Flow<Boolean> checkModuleUpdates;
    private final Context context;
    private final Flow<String> currentTheme;
    private final Flow<Boolean> darkMode;
    private final DataStore<Preferences> dataStore;
    private final Flow<Boolean> defaultUnmountModules;
    private final Flow<Boolean> dynamicColors;
    private final Flow<Boolean> kernelUnmountModules;
    private final Flow<Boolean> showFloatingDialog;
    private final Flow<Boolean> showNotifications;
    private final Flow<Boolean> traditionalSuSupport;
    private final Flow<Boolean> webViewDebugging;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final Preferences.Key<Boolean> DARK_MODE = PreferencesKeys.booleanKey("dark_mode");
    private static final Preferences.Key<Boolean> DYNAMIC_COLORS = PreferencesKeys.booleanKey("dynamic_colors");
    private static final Preferences.Key<Boolean> AUTO_DENY_UNKNOWN = PreferencesKeys.booleanKey("auto_deny_unknown");
    private static final Preferences.Key<Boolean> SHOW_NOTIFICATIONS = PreferencesKeys.booleanKey("show_notifications");
    private static final Preferences.Key<Boolean> SHOW_FLOATING_DIALOG = PreferencesKeys.booleanKey("show_floating_dialog");
    private static final Preferences.Key<String> CURRENT_THEME = PreferencesKeys.stringKey("current_theme");
    private static final Preferences.Key<Boolean> CHECK_MODULE_UPDATES = PreferencesKeys.booleanKey("check_module_updates");
    private static final Preferences.Key<Boolean> TRADITIONAL_SU_SUPPORT = PreferencesKeys.booleanKey("traditional_su_support");
    private static final Preferences.Key<Boolean> KERNEL_UNMOUNT_MODULES = PreferencesKeys.booleanKey("kernel_unmount_modules");
    private static final Preferences.Key<Boolean> DEFAULT_UNMOUNT_MODULES = PreferencesKeys.booleanKey("default_unmount_modules");
    private static final Preferences.Key<Boolean> WEBVIEW_DEBUGGING = PreferencesKeys.booleanKey("webview_debugging");

    @Inject
    public SettingsDataStore(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        DataStore<Preferences> access$getDataStore = SettingsDataStoreKt.access$getDataStore(context);
        this.dataStore = access$getDataStore;
        final Flow $this$map$iv = access$getDataStore.getData();
        this.darkMode = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1$2$1, reason: invalid class name */
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
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L19:
                        r8 = r0
                        java.lang.Object r0 = r8.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r8.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L2d:
                        r7 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L60
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r6
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r8
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        androidx.datastore.preferences.core.Preferences r7 = (androidx.datastore.preferences.core.Preferences) r7
                        r4 = 0
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getDARK_MODE$cp()
                        java.lang.Object r5 = r7.get(r5)
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        if (r5 == 0) goto L50
                        boolean r5 = r5.booleanValue()
                        goto L51
                    L50:
                        r5 = 0
                    L51:
                        java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                        r4 = 1
                        r8.label = r4
                        java.lang.Object r7 = r2.emit(r7, r8)
                        if (r7 != r1) goto L5f
                        return r1
                    L5f:
                        r7 = r3
                    L60:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv2 = access$getDataStore.getData();
        this.dynamicColors = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2$2$1, reason: invalid class name */
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
                        boolean r0 = r9 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r9
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r9 = r0.label
                        int r9 = r9 - r2
                        r0.label = r9
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2$2$1
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
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getDYNAMIC_COLORS$cp()
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
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv2.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv3 = access$getDataStore.getData();
        this.autoDenyUnknown = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3$2$1, reason: invalid class name */
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
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3$2$1
                        r0.<init>(r8)
                    L19:
                        r8 = r0
                        java.lang.Object r0 = r8.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r8.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L2d:
                        r7 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L60
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r6
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r8
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        androidx.datastore.preferences.core.Preferences r7 = (androidx.datastore.preferences.core.Preferences) r7
                        r4 = 0
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getAUTO_DENY_UNKNOWN$cp()
                        java.lang.Object r5 = r7.get(r5)
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        if (r5 == 0) goto L50
                        boolean r5 = r5.booleanValue()
                        goto L51
                    L50:
                        r5 = 0
                    L51:
                        java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                        r4 = 1
                        r8.label = r4
                        java.lang.Object r7 = r2.emit(r7, r8)
                        if (r7 != r1) goto L5f
                        return r1
                    L5f:
                        r7 = r3
                    L60:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv3.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv4 = access$getDataStore.getData();
        this.showNotifications = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4$2$1, reason: invalid class name */
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
                        boolean r0 = r9 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r9
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r9 = r0.label
                        int r9 = r9 - r2
                        r0.label = r9
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4$2$1
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
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getSHOW_NOTIFICATIONS$cp()
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
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$4.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv4.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv5 = access$getDataStore.getData();
        this.showFloatingDialog = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5$2$1, reason: invalid class name */
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
                        boolean r0 = r9 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r9
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r9 = r0.label
                        int r9 = r9 - r2
                        r0.label = r9
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5$2$1
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
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getSHOW_FLOATING_DIALOG$cp()
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
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$5.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv5.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv6 = access$getDataStore.getData();
        this.currentTheme = new Flow<String>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6$2$1, reason: invalid class name */
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
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6$2$1
                        r0.<init>(r8)
                    L19:
                        r8 = r0
                        java.lang.Object r0 = r8.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r8.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L2d:
                        r7 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L58
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r6
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r8
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        androidx.datastore.preferences.core.Preferences r7 = (androidx.datastore.preferences.core.Preferences) r7
                        r4 = 0
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getCURRENT_THEME$cp()
                        java.lang.Object r5 = r7.get(r5)
                        java.lang.String r5 = (java.lang.String) r5
                        if (r5 != 0) goto L4d
                        java.lang.String r5 = "classic"
                    L4d:
                        r7 = 1
                        r8.label = r7
                        java.lang.Object r7 = r2.emit(r5, r8)
                        if (r7 != r1) goto L57
                        return r1
                    L57:
                        r7 = r3
                    L58:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$6.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv6.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv7 = access$getDataStore.getData();
        this.checkModuleUpdates = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7$2$1, reason: invalid class name */
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
                        boolean r0 = r9 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r9
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r9 = r0.label
                        int r9 = r9 - r2
                        r0.label = r9
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7$2$1
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
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getCHECK_MODULE_UPDATES$cp()
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
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$7.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv7.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv8 = access$getDataStore.getData();
        this.traditionalSuSupport = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8$2$1, reason: invalid class name */
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
                        boolean r0 = r9 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r9
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r9 = r0.label
                        int r9 = r9 - r2
                        r0.label = r9
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8$2$1
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
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getTRADITIONAL_SU_SUPPORT$cp()
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
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$8.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv8.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv9 = access$getDataStore.getData();
        this.kernelUnmountModules = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9$2$1, reason: invalid class name */
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
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9$2$1
                        r0.<init>(r8)
                    L19:
                        r8 = r0
                        java.lang.Object r0 = r8.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r8.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L2d:
                        r7 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L60
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r6
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r8
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        androidx.datastore.preferences.core.Preferences r7 = (androidx.datastore.preferences.core.Preferences) r7
                        r4 = 0
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getKERNEL_UNMOUNT_MODULES$cp()
                        java.lang.Object r5 = r7.get(r5)
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        if (r5 == 0) goto L50
                        boolean r5 = r5.booleanValue()
                        goto L51
                    L50:
                        r5 = 0
                    L51:
                        java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                        r4 = 1
                        r8.label = r4
                        java.lang.Object r7 = r2.emit(r7, r8)
                        if (r7 != r1) goto L5f
                        return r1
                    L5f:
                        r7 = r3
                    L60:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$9.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv9.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv10 = access$getDataStore.getData();
        this.defaultUnmountModules = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10$2$1, reason: invalid class name */
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
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10$2$1
                        r0.<init>(r8)
                    L19:
                        r8 = r0
                        java.lang.Object r0 = r8.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r8.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L2d:
                        r7 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L60
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r6
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r8
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        androidx.datastore.preferences.core.Preferences r7 = (androidx.datastore.preferences.core.Preferences) r7
                        r4 = 0
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getDEFAULT_UNMOUNT_MODULES$cp()
                        java.lang.Object r5 = r7.get(r5)
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        if (r5 == 0) goto L50
                        boolean r5 = r5.booleanValue()
                        goto L51
                    L50:
                        r5 = 0
                    L51:
                        java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                        r4 = 1
                        r8.label = r4
                        java.lang.Object r7 = r2.emit(r7, r8)
                        if (r7 != r1) goto L5f
                        return r1
                    L5f:
                        r7 = r3
                    L60:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$10.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv10.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
        final Flow $this$map$iv11 = access$getDataStore.getData();
        this.webViewDebugging = new Flow<Boolean>() { // from class: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11

            /* compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11$2, reason: invalid class name */
            /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11$2", f = "SettingsDataStore.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                /* renamed from: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11$2$1, reason: invalid class name */
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
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11$2$1 r0 = (com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11$2$1 r0 = new com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11$2$1
                        r0.<init>(r8)
                    L19:
                        r8 = r0
                        java.lang.Object r0 = r8.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r8.label
                        switch(r2) {
                            case 0: goto L32;
                            case 1: goto L2d;
                            default: goto L25;
                        }
                    L25:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L2d:
                        r7 = 0
                        kotlin.ResultKt.throwOnFailure(r0)
                        goto L60
                    L32:
                        kotlin.ResultKt.throwOnFailure(r0)
                        r2 = r6
                        kotlinx.coroutines.flow.FlowCollector r2 = r2.$this_unsafeFlow
                        r3 = 0
                        r4 = r8
                        kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                        androidx.datastore.preferences.core.Preferences r7 = (androidx.datastore.preferences.core.Preferences) r7
                        r4 = 0
                        androidx.datastore.preferences.core.Preferences$Key r5 = com.rootguard.app.data.local.SettingsDataStore.access$getWEBVIEW_DEBUGGING$cp()
                        java.lang.Object r5 = r7.get(r5)
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        if (r5 == 0) goto L50
                        boolean r5 = r5.booleanValue()
                        goto L51
                    L50:
                        r5 = 0
                    L51:
                        java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                        r4 = 1
                        r8.label = r4
                        java.lang.Object r7 = r2.emit(r7, r8)
                        if (r7 != r1) goto L5f
                        return r1
                    L5f:
                        r7 = r3
                    L60:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.local.SettingsDataStore$special$$inlined$map$11.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            public Object collect(FlowCollector collector, Continuation $completion) {
                Object collect = $this$map$iv11.collect(new AnonymousClass2(collector), $completion);
                return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
            }
        };
    }

    /* compiled from: SettingsDataStore.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0007R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0007R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0007R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0007R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0007R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0007R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0007R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0007R\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0007¨\u0006\u001d"}, d2 = {"Lcom/rootguard/app/data/local/SettingsDataStore$Companion;", "", "()V", "AUTO_DENY_UNKNOWN", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "getAUTO_DENY_UNKNOWN", "()Landroidx/datastore/preferences/core/Preferences$Key;", "CHECK_MODULE_UPDATES", "getCHECK_MODULE_UPDATES", "CURRENT_THEME", "", "getCURRENT_THEME", "DARK_MODE", "getDARK_MODE", "DEFAULT_UNMOUNT_MODULES", "getDEFAULT_UNMOUNT_MODULES", "DYNAMIC_COLORS", "getDYNAMIC_COLORS", "KERNEL_UNMOUNT_MODULES", "getKERNEL_UNMOUNT_MODULES", "SHOW_FLOATING_DIALOG", "getSHOW_FLOATING_DIALOG", "SHOW_NOTIFICATIONS", "getSHOW_NOTIFICATIONS", "TRADITIONAL_SU_SUPPORT", "getTRADITIONAL_SU_SUPPORT", "WEBVIEW_DEBUGGING", "getWEBVIEW_DEBUGGING", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Preferences.Key<Boolean> getDARK_MODE() {
            return SettingsDataStore.DARK_MODE;
        }

        public final Preferences.Key<Boolean> getDYNAMIC_COLORS() {
            return SettingsDataStore.DYNAMIC_COLORS;
        }

        public final Preferences.Key<Boolean> getAUTO_DENY_UNKNOWN() {
            return SettingsDataStore.AUTO_DENY_UNKNOWN;
        }

        public final Preferences.Key<Boolean> getSHOW_NOTIFICATIONS() {
            return SettingsDataStore.SHOW_NOTIFICATIONS;
        }

        public final Preferences.Key<Boolean> getSHOW_FLOATING_DIALOG() {
            return SettingsDataStore.SHOW_FLOATING_DIALOG;
        }

        public final Preferences.Key<String> getCURRENT_THEME() {
            return SettingsDataStore.CURRENT_THEME;
        }

        public final Preferences.Key<Boolean> getCHECK_MODULE_UPDATES() {
            return SettingsDataStore.CHECK_MODULE_UPDATES;
        }

        public final Preferences.Key<Boolean> getTRADITIONAL_SU_SUPPORT() {
            return SettingsDataStore.TRADITIONAL_SU_SUPPORT;
        }

        public final Preferences.Key<Boolean> getKERNEL_UNMOUNT_MODULES() {
            return SettingsDataStore.KERNEL_UNMOUNT_MODULES;
        }

        public final Preferences.Key<Boolean> getDEFAULT_UNMOUNT_MODULES() {
            return SettingsDataStore.DEFAULT_UNMOUNT_MODULES;
        }

        public final Preferences.Key<Boolean> getWEBVIEW_DEBUGGING() {
            return SettingsDataStore.WEBVIEW_DEBUGGING;
        }
    }

    public final Flow<Boolean> getDarkMode() {
        return this.darkMode;
    }

    public final Flow<Boolean> getDynamicColors() {
        return this.dynamicColors;
    }

    public final Flow<Boolean> getAutoDenyUnknown() {
        return this.autoDenyUnknown;
    }

    public final Flow<Boolean> getShowNotifications() {
        return this.showNotifications;
    }

    public final Flow<Boolean> getShowFloatingDialog() {
        return this.showFloatingDialog;
    }

    public final Object setDarkMode(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setDarkMode$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Object setDynamicColors(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setDynamicColors$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Object setAutoDenyUnknown(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setAutoDenyUnknown$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Object setShowNotifications(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setShowNotifications$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Object setShowFloatingDialog(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setShowFloatingDialog$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<String> getCurrentTheme() {
        return this.currentTheme;
    }

    public final Object setCurrentTheme(String themeId, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setCurrentTheme$2(themeId, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<Boolean> getCheckModuleUpdates() {
        return this.checkModuleUpdates;
    }

    public final Object setCheckModuleUpdates(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setCheckModuleUpdates$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<Boolean> getTraditionalSuSupport() {
        return this.traditionalSuSupport;
    }

    public final Object setTraditionalSuSupport(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setTraditionalSuSupport$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<Boolean> getKernelUnmountModules() {
        return this.kernelUnmountModules;
    }

    public final Object setKernelUnmountModules(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setKernelUnmountModules$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<Boolean> getDefaultUnmountModules() {
        return this.defaultUnmountModules;
    }

    public final Object setDefaultUnmountModules(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setDefaultUnmountModules$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }

    public final Flow<Boolean> getWebViewDebugging() {
        return this.webViewDebugging;
    }

    public final Object setWebViewDebugging(boolean enabled, Continuation<? super Unit> continuation) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsDataStore$setWebViewDebugging$2(enabled, null), continuation);
        return edit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? edit : Unit.INSTANCE;
    }
}
