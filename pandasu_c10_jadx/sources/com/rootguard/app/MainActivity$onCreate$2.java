package com.rootguard.app;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.LifecycleOwnerKt;
import com.rootguard.app.ui.components.RootPermissionGuideKt;
import com.rootguard.app.ui.theme.ThemeKt;
import com.rootguard.app.util.RootEnvironmentDetector;
import com.rootguard.app.utils.Logger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\u000b¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "(Landroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class MainActivity$onCreate$2 extends Lambda implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MainActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$onCreate$2(MainActivity mainActivity) {
        super(2);
        this.this$0 = mainActivity;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
        invoke((Composer) p1, ((Number) p2).intValue());
        return Unit.INSTANCE;
    }

    private static final RootEnvironmentDetector.AuthorizationStatus invoke$lambda$1(MutableState<RootEnvironmentDetector.AuthorizationStatus> mutableState) {
        State $this$getValue$iv = (State) mutableState;
        return (RootEnvironmentDetector.AuthorizationStatus) $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(MutableState<RootEnvironmentDetector.AuthorizationStatus> mutableState, RootEnvironmentDetector.AuthorizationStatus value) {
        mutableState.setValue(value);
    }

    public final void invoke(Composer $composer, int $changed) {
        Object value$iv$iv;
        Object value$iv$iv2;
        Object value$iv$iv3;
        Object value$iv;
        ComposerKt.sourceInformation($composer, "C86@3127L79,87@3247L33,88@3293L358,97@3704L33,98@3796L35,99@3889L31,100@3989L31,102@4034L70:MainActivity.kt#sci7zr");
        if (($changed & 11) == 2 && $composer.getSkipping()) {
            $composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(279818031, $changed, -1, "com.rootguard.app.MainActivity.onCreate.<anonymous> (MainActivity.kt:86)");
        }
        $composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation($composer, "CC(remember):Composables.kt#9igjgp");
        Object it$iv$iv = $composer.rememberedValue();
        if (it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = SnapshotStateKt.mutableStateOf$default((Object) null, (SnapshotMutationPolicy) null, 2, (Object) null);
            $composer.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer.endReplaceableGroup();
        final MutableState authorizationStatus$delegate = (MutableState) value$iv$iv;
        $composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation($composer, "CC(remember):Composables.kt#9igjgp");
        Object it$iv$iv2 = $composer.rememberedValue();
        if (it$iv$iv2 == Composer.Companion.getEmpty()) {
            value$iv$iv2 = SnapshotStateKt.mutableStateOf$default(true, (SnapshotMutationPolicy) null, 2, (Object) null);
            $composer.updateRememberedValue(value$iv$iv2);
        } else {
            value$iv$iv2 = it$iv$iv2;
        }
        $composer.endReplaceableGroup();
        MutableState isCheckingPermission$delegate = (MutableState) value$iv$iv2;
        EffectsKt.LaunchedEffect(Unit.INSTANCE, new AnonymousClass1(this.this$0, authorizationStatus$delegate, isCheckingPermission$delegate, null), $composer, 70);
        $composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation($composer, "CC(remember):Composables.kt#9igjgp");
        Object it$iv$iv3 = $composer.rememberedValue();
        if (it$iv$iv3 == Composer.Companion.getEmpty()) {
            value$iv$iv3 = SnapshotStateKt.mutableStateOf$default(true, (SnapshotMutationPolicy) null, 2, (Object) null);
            $composer.updateRememberedValue(value$iv$iv3);
        } else {
            value$iv$iv3 = it$iv$iv3;
        }
        $composer.endReplaceableGroup();
        MutableState isLoading$delegate = (MutableState) value$iv$iv3;
        State themeId$delegate = SnapshotStateKt.collectAsState(this.this$0.getSettingsDataStore().getCurrentTheme(), "classic", (CoroutineContext) null, $composer, 56, 2);
        State isDarkMode$delegate = SnapshotStateKt.collectAsState(this.this$0.getSettingsDataStore().getDarkMode(), false, (CoroutineContext) null, $composer, 56, 2);
        State useDynamicColors$delegate = SnapshotStateKt.collectAsState(this.this$0.getSettingsDataStore().getDynamicColors(), false, (CoroutineContext) null, $composer, 56, 2);
        Unit unit = Unit.INSTANCE;
        $composer.startReplaceableGroup(168758094);
        boolean invalid$iv = $composer.changed(isLoading$delegate);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.Companion.getEmpty()) {
            value$iv = new MainActivity$onCreate$2$2$1(isLoading$delegate, null);
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        $composer.endReplaceableGroup();
        EffectsKt.LaunchedEffect(unit, (Function2) value$iv, $composer, 70);
        if (invoke$lambda$4(isCheckingPermission$delegate)) {
            $composer.startReplaceableGroup(-177962475);
            ComposerKt.sourceInformation($composer, "107@4162L570");
            ThemeKt.RootGuardTheme(false, false, (String) null, ComposableSingletons$MainActivityKt.INSTANCE.m0getLambda1$app_debug(), $composer, 3072, 7);
            $composer.endReplaceableGroup();
        } else {
            RootEnvironmentDetector.AuthorizationStatus invoke$lambda$1 = invoke$lambda$1(authorizationStatus$delegate);
            if (!(invoke$lambda$1 != null && invoke$lambda$1.getHasPermission())) {
                $composer.startReplaceableGroup(-177961819);
                ComposerKt.sourceInformation($composer, "122@4818L377");
                final MainActivity mainActivity = this.this$0;
                RootPermissionGuideKt.RootPermissionGuide(new Function0<Unit>() { // from class: com.rootguard.app.MainActivity$onCreate$2.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    public /* bridge */ /* synthetic */ Object invoke() {
                        m25invoke();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: MainActivity.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.rootguard.app.MainActivity$onCreate$2$3$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: com.rootguard.app.MainActivity$onCreate$2$3$1, reason: invalid class name */
                    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ MutableState<RootEnvironmentDetector.AuthorizationStatus> $authorizationStatus$delegate;
                        int label;
                        final /* synthetic */ MainActivity this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(MainActivity mainActivity, MutableState<RootEnvironmentDetector.AuthorizationStatus> mutableState, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.this$0 = mainActivity;
                            this.$authorizationStatus$delegate = mutableState;
                        }

                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.this$0, this.$authorizationStatus$delegate, continuation);
                        }

                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
                        }

                        public final Object invokeSuspend(Object obj) {
                            IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            switch (this.label) {
                                case 0:
                                    ResultKt.throwOnFailure(obj);
                                    RootEnvironmentDetector.AuthorizationStatus newStatus = RootEnvironmentDetector.INSTANCE.getAuthorizationStatus((Context) this.this$0);
                                    MainActivity$onCreate$2.invoke$lambda$2(this.$authorizationStatus$delegate, newStatus);
                                    return Unit.INSTANCE;
                                default:
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        }
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m25invoke() {
                        BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope(MainActivity.this), (CoroutineContext) null, (CoroutineStart) null, new AnonymousClass1(MainActivity.this, authorizationStatus$delegate, null), 3, (Object) null);
                    }
                }, (Modifier) null, $composer, 0, 2);
                $composer.endReplaceableGroup();
            } else if (invoke$lambda$7(isLoading$delegate)) {
                $composer.startReplaceableGroup(-177960778);
                $composer.endReplaceableGroup();
            } else {
                $composer.startReplaceableGroup(-177961388);
                ComposerKt.sourceInformation($composer, "132@5249L578");
                ThemeKt.RootGuardTheme(invoke$lambda$10(isDarkMode$delegate), invoke$lambda$11(useDynamicColors$delegate), invoke$lambda$9(themeId$delegate), ComposableSingletons$MainActivityKt.INSTANCE.m2getLambda3$app_debug(), $composer, 3072, 0);
                $composer.endReplaceableGroup();
            }
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.rootguard.app.MainActivity$onCreate$2$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.rootguard.app.MainActivity$onCreate$2$1, reason: invalid class name */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableState<RootEnvironmentDetector.AuthorizationStatus> $authorizationStatus$delegate;
        final /* synthetic */ MutableState<Boolean> $isCheckingPermission$delegate;
        int label;
        final /* synthetic */ MainActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MainActivity mainActivity, MutableState<RootEnvironmentDetector.AuthorizationStatus> mutableState, MutableState<Boolean> mutableState2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = mainActivity;
            this.$authorizationStatus$delegate = mutableState;
            this.$isCheckingPermission$delegate = mutableState2;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$authorizationStatus$delegate, this.$isCheckingPermission$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    RootEnvironmentDetector.AuthorizationStatus status = RootEnvironmentDetector.INSTANCE.getAuthorizationStatus((Context) this.this$0);
                    MainActivity$onCreate$2.invoke$lambda$2(this.$authorizationStatus$delegate, status);
                    MainActivity$onCreate$2.invoke$lambda$5(this.$isCheckingPermission$delegate, false);
                    Logger.INSTANCE.d("Permission check result: hasPermission=" + status.getHasPermission() + ", rootMode=" + status.getRootMode());
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private static final boolean invoke$lambda$4(MutableState<Boolean> mutableState) {
        State $this$getValue$iv = (State) mutableState;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$5(MutableState<Boolean> mutableState, boolean value) {
        Object value$iv = Boolean.valueOf(value);
        mutableState.setValue(value$iv);
    }

    private static final boolean invoke$lambda$7(MutableState<Boolean> mutableState) {
        State $this$getValue$iv = (State) mutableState;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$8(MutableState<Boolean> mutableState, boolean value) {
        Object value$iv = Boolean.valueOf(value);
        mutableState.setValue(value$iv);
    }

    private static final String invoke$lambda$9(State<String> state) {
        Object thisObj$iv = state.getValue();
        return (String) thisObj$iv;
    }

    private static final boolean invoke$lambda$10(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    private static final boolean invoke$lambda$11(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }
}
