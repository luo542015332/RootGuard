package androidx.lifecycle.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LifecycleOwner;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SpreadBuilder;

/* compiled from: LifecycleEffect.kt */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007H\u0007¢\u0006\u0002\u0010\b\u001a:\u0010\t\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001aD\u0010\t\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0013\u001aN\u0010\t\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0015\u001aH\u0010\t\u001a\u00020\u00012\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000b0\u0017\"\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0018\u001a6\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000e2\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0003¢\u0006\u0002\u0010\u001b\u001a:\u0010\u001c\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001aD\u0010\u001c\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0013\u001aN\u0010\u001c\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0015\u001aH\u0010\u001c\u001a\u00020\u00012\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000b0\u0017\"\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\r¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0018\u001a6\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001d2\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\r¢\u0006\u0002\b\u0010H\u0003¢\u0006\u0002\u0010 ¨\u0006!²\u0006\u0010\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007X\u008a\u0084\u0002"}, d2 = {"LifecycleEventEffect", "", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "onEvent", "Lkotlin/Function0;", "(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "LifecycleResumeEffect", "key1", "", "effects", "Lkotlin/Function1;", "Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;", "Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "key2", "(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "key3", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "keys", "", "([Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "LifecycleResumeEffectImpl", "scope", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "LifecycleStartEffect", "Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;", "Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;", "LifecycleStartEffectImpl", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "lifecycle-runtime-compose_release", "currentOnEvent"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class LifecycleEffectKt {
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
    
        if (r1 != 0) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleEventEffect(final androidx.lifecycle.Lifecycle.Event r10, androidx.lifecycle.LifecycleOwner r11, final kotlin.jvm.functions.Function0<kotlin.Unit> r12, androidx.compose.runtime.Composer r13, final int r14, final int r15) {
        /*
            r0 = -709389590(0xffffffffd5b792ea, float:-2.52302024E13)
            androidx.compose.runtime.Composer r13 = r13.startRestartGroup(r0)
            java.lang.String r0 = "C(LifecycleEventEffect)56@2466L7,66@2897L29,67@2931L332:LifecycleEffect.kt#2vxrgp"
            androidx.compose.runtime.ComposerKt.sourceInformation(r13, r0)
            r0 = r14
            r1 = r15 & 1
            r2 = 2
            if (r1 == 0) goto L15
            r0 = r0 | 6
            goto L23
        L15:
            r1 = r14 & 14
            if (r1 != 0) goto L23
            boolean r1 = r13.changed(r10)
            if (r1 == 0) goto L21
            r1 = 4
            goto L22
        L21:
            r1 = r2
        L22:
            r0 = r0 | r1
        L23:
            r1 = r15 & 2
            if (r1 == 0) goto L29
            r0 = r0 | 16
        L29:
            r3 = r15 & 4
            if (r3 == 0) goto L30
            r0 = r0 | 384(0x180, float:5.38E-43)
            goto L40
        L30:
            r3 = r14 & 896(0x380, float:1.256E-42)
            if (r3 != 0) goto L40
            boolean r3 = r13.changed(r12)
            if (r3 == 0) goto L3d
            r3 = 256(0x100, float:3.59E-43)
            goto L3f
        L3d:
            r3 = 128(0x80, float:1.794E-43)
        L3f:
            r0 = r0 | r3
        L40:
            if (r1 != r2) goto L53
            r2 = r0 & 731(0x2db, float:1.024E-42)
            r3 = 146(0x92, float:2.05E-43)
            if (r2 != r3) goto L53
            boolean r2 = r13.getSkipping()
            if (r2 != 0) goto L4f
            goto L53
        L4f:
            r13.skipToGroupEnd()
            goto La0
        L53:
            r13.startDefaults()
            r2 = r14 & 1
            if (r2 == 0) goto L67
            boolean r2 = r13.getDefaultsInvalid()
            if (r2 == 0) goto L61
            goto L67
        L61:
            r13.skipToGroupEnd()
            if (r1 == 0) goto L85
            goto L83
        L67:
            if (r1 == 0) goto L85
            androidx.compose.runtime.ProvidableCompositionLocal r1 = androidx.compose.ui.platform.AndroidCompositionLocals_androidKt.getLocalLifecycleOwner()
            androidx.compose.runtime.CompositionLocal r1 = (androidx.compose.runtime.CompositionLocal) r1
            r2 = 0
            r3 = 0
            r4 = 103361330(0x6292b32, float:3.1817102E-35)
            java.lang.String r5 = "C:CompositionLocal.kt#9igjgp"
            androidx.compose.runtime.ComposerKt.sourceInformationMarkerStart(r13, r4, r5)
            java.lang.Object r4 = r13.consume(r1)
            androidx.compose.runtime.ComposerKt.sourceInformationMarkerEnd(r13)
            r11 = r4
            androidx.lifecycle.LifecycleOwner r11 = (androidx.lifecycle.LifecycleOwner) r11
        L83:
            r0 = r0 & (-113(0xffffffffffffff8f, float:NaN))
        L85:
            r13.endDefaults()
            androidx.lifecycle.Lifecycle$Event r1 = androidx.lifecycle.Lifecycle.Event.ON_DESTROY
            if (r10 == r1) goto Lb7
            int r1 = r0 >> 6
            r1 = r1 & 14
            androidx.compose.runtime.State r1 = androidx.compose.runtime.SnapshotStateKt.rememberUpdatedState(r12, r13, r1)
            androidx.lifecycle.compose.LifecycleEffectKt$LifecycleEventEffect$1 r2 = new androidx.lifecycle.compose.LifecycleEffectKt$LifecycleEventEffect$1
            r2.<init>(r11, r10, r1)
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            r3 = 8
            androidx.compose.runtime.EffectsKt.DisposableEffect(r11, r2, r13, r3)
        La0:
            androidx.compose.runtime.ScopeUpdateScope r1 = r13.endRestartGroup()
            if (r1 == 0) goto Lb6
            androidx.lifecycle.compose.LifecycleEffectKt$LifecycleEventEffect$2 r2 = new androidx.lifecycle.compose.LifecycleEffectKt$LifecycleEventEffect$2
            r4 = r2
            r5 = r10
            r6 = r11
            r7 = r12
            r8 = r14
            r9 = r15
            r4.<init>()
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r1.updateScope(r2)
        Lb6:
            return
        Lb7:
            java.lang.IllegalArgumentException r15 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "LifecycleEventEffect cannot be used to listen for Lifecycle.Event.ON_DESTROY, since Compose disposes of the composition before ON_DESTROY observers are invoked."
            r15.<init>(r1)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleEventEffect(androidx.lifecycle.Lifecycle$Event, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function0<Unit> LifecycleEventEffect$lambda$0(State<? extends Function0<Unit>> state) {
        Object thisObj$iv = state.getValue();
        return (Function0) thisObj$iv;
    }

    public static final void LifecycleStartEffect(final Object key1, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(-1408314671);
        ComposerKt.sourceInformation($composer2, "C(LifecycleStartEffect)P(1,2)134@5886L7,137@6023L102,140@6130L80:LifecycleEffect.kt#2vxrgp");
        if ((i & 2) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-113);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        $composer2.startReplaceableGroup(-3686552);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1,2):Composables.kt#9igjgp");
        boolean invalid$iv$iv = $composer2.changed(key1) | $composer2.changed(lifecycleOwner2);
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleStartStopEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) value$iv$iv;
        LifecycleStartEffectImpl(lifecycleOwner2, lifecycleStartStopEffectScope, function1, $composer2, 72 | ($dirty & 896));
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffect$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i2) {
                    LifecycleEffectKt.LifecycleStartEffect(key1, lifecycleOwner4, function1, composer, $changed | 1, i);
                }
            });
        }
    }

    public static final void LifecycleStartEffect(final Object key1, final Object key2, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(696924721);
        ComposerKt.sourceInformation($composer2, "C(LifecycleStartEffect)P(1,2,3)197@8922L7,200@9059L108,203@9172L80:LifecycleEffect.kt#2vxrgp");
        if ((i & 4) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-897);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        $composer2.startReplaceableGroup(-3686095);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean invalid$iv$iv = $composer2.changed(key1) | $composer2.changed(key2) | $composer2.changed(lifecycleOwner2);
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleStartStopEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) value$iv$iv;
        LifecycleStartEffectImpl(lifecycleOwner2, lifecycleStartStopEffectScope, function1, $composer2, (($dirty >> 3) & 896) | 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffect$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i2) {
                    LifecycleEffectKt.LifecycleStartEffect(key1, key2, lifecycleOwner4, function1, composer, $changed | 1, i);
                }
            });
        }
    }

    public static final void LifecycleStartEffect(final Object key1, final Object key2, final Object key3, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(574812561);
        ComposerKt.sourceInformation($composer2, "C(LifecycleStartEffect)P(1,2,3,4)262@12063L7,265@12200L114,268@12319L80:LifecycleEffect.kt#2vxrgp");
        if ((i & 8) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-7169);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        Object[] keys$iv = {key1, key2, key3, lifecycleOwner2};
        $composer2.startReplaceableGroup(-3685570);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1):Composables.kt#9igjgp");
        boolean invalid$iv = false;
        int length = keys$iv.length;
        int i2 = 0;
        while (i2 < length) {
            Object key$iv = keys$iv[i2];
            i2++;
            invalid$iv |= $composer2.changed(key$iv);
        }
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleStartStopEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) value$iv$iv;
        LifecycleStartEffectImpl(lifecycleOwner2, lifecycleStartStopEffectScope, function1, $composer2, (($dirty >> 6) & 896) | 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffect$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    LifecycleEffectKt.LifecycleStartEffect(key1, key2, key3, lifecycleOwner4, function1, composer, $changed | 1, i);
                }
            });
        }
    }

    public static final void LifecycleStartEffect(final Object[] keys, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(-1510305724);
        ComposerKt.sourceInformation($composer2, "C(LifecycleStartEffect)P(1,2)323@15029L7,326@15166L103,329@15274L80:LifecycleEffect.kt#2vxrgp");
        if ((i & 2) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-113);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(keys);
        spreadBuilder.add(lifecycleOwner2);
        Object[] keys$iv = spreadBuilder.toArray(new Object[spreadBuilder.size()]);
        $composer2.startReplaceableGroup(-3685570);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1):Composables.kt#9igjgp");
        boolean invalid$iv = false;
        int length = keys$iv.length;
        int i2 = 0;
        while (i2 < length) {
            Object key$iv = keys$iv[i2];
            i2++;
            invalid$iv |= $composer2.changed(key$iv);
        }
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleStartStopEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) value$iv$iv;
        LifecycleStartEffectImpl(lifecycleOwner2, lifecycleStartStopEffectScope, function1, $composer2, ($dirty & 896) | 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffect$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    Object[] objArr = keys;
                    LifecycleEffectKt.LifecycleStartEffect(Arrays.copyOf(objArr, objArr.length), lifecycleOwner4, (Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult>) function1, composer, $changed | 1, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LifecycleStartEffectImpl(final LifecycleOwner lifecycleOwner, final LifecycleStartStopEffectScope scope, final Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult> function1, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(228371534);
        ComposerKt.sourceInformation($composer2, "C(LifecycleStartEffectImpl)P(1,2)338@15578L659:LifecycleEffect.kt#2vxrgp");
        EffectsKt.DisposableEffect(lifecycleOwner, scope, new LifecycleEffectKt$LifecycleStartEffectImpl$1(lifecycleOwner, scope, function1), $composer2, 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffectImpl$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    LifecycleEffectKt.LifecycleStartEffectImpl(LifecycleOwner.this, scope, function1, composer, $changed | 1);
                }
            });
        }
    }

    public static final void LifecycleResumeEffect(final Object key1, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(1220373486);
        ComposerKt.sourceInformation($composer2, "C(LifecycleResumeEffect)P(1,2)446@20254L7,449@20396L104,452@20505L83:LifecycleEffect.kt#2vxrgp");
        if ((i & 2) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-113);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        $composer2.startReplaceableGroup(-3686552);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1,2):Composables.kt#9igjgp");
        boolean invalid$iv$iv = $composer2.changed(key1) | $composer2.changed(lifecycleOwner2);
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleResumePauseEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) value$iv$iv;
        LifecycleResumeEffectImpl(lifecycleOwner2, lifecycleResumePauseEffectScope, function1, $composer2, 72 | ($dirty & 896));
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleResumeEffect$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i2) {
                    LifecycleEffectKt.LifecycleResumeEffect(key1, lifecycleOwner4, function1, composer, $changed | 1, i);
                }
            });
        }
    }

    public static final void LifecycleResumeEffect(final Object key1, final Object key2, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(752680142);
        ComposerKt.sourceInformation($composer2, "C(LifecycleResumeEffect)P(1,2,3)509@23336L7,512@23478L110,515@23593L83:LifecycleEffect.kt#2vxrgp");
        if ((i & 4) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-897);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        $composer2.startReplaceableGroup(-3686095);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean invalid$iv$iv = $composer2.changed(key1) | $composer2.changed(key2) | $composer2.changed(lifecycleOwner2);
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleResumePauseEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) value$iv$iv;
        LifecycleResumeEffectImpl(lifecycleOwner2, lifecycleResumePauseEffectScope, function1, $composer2, (($dirty >> 3) & 896) | 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleResumeEffect$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i2) {
                    LifecycleEffectKt.LifecycleResumeEffect(key1, key2, lifecycleOwner4, function1, composer, $changed | 1, i);
                }
            });
        }
    }

    public static final void LifecycleResumeEffect(final Object key1, final Object key2, final Object key3, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(-485941842);
        ComposerKt.sourceInformation($composer2, "C(LifecycleResumeEffect)P(1,2,3,4)574@26517L7,577@26659L116,580@26780L83:LifecycleEffect.kt#2vxrgp");
        if ((i & 8) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-7169);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        Object[] keys$iv = {key1, key2, key3, lifecycleOwner2};
        $composer2.startReplaceableGroup(-3685570);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1):Composables.kt#9igjgp");
        boolean invalid$iv = false;
        int length = keys$iv.length;
        int i2 = 0;
        while (i2 < length) {
            Object key$iv = keys$iv[i2];
            i2++;
            invalid$iv |= $composer2.changed(key$iv);
        }
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleResumePauseEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) value$iv$iv;
        LifecycleResumeEffectImpl(lifecycleOwner2, lifecycleResumePauseEffectScope, function1, $composer2, (($dirty >> 6) & 896) | 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleResumeEffect$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    LifecycleEffectKt.LifecycleResumeEffect(key1, key2, key3, lifecycleOwner4, function1, composer, $changed | 1, i);
                }
            });
        }
    }

    public static final void LifecycleResumeEffect(final Object[] keys, LifecycleOwner lifecycleOwner, final Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult> function1, Composer $composer, final int $changed, final int i) {
        int $dirty;
        LifecycleOwner lifecycleOwner2;
        Object value$iv$iv;
        Composer $composer2 = $composer.startRestartGroup(-781756895);
        ComposerKt.sourceInformation($composer2, "C(LifecycleResumeEffect)P(1,2)635@29529L7,638@29671L105,641@29781L83:LifecycleEffect.kt#2vxrgp");
        if ((i & 2) != 0) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
            ComposerKt.sourceInformationMarkerStart($composer2, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer2.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            LifecycleOwner lifecycleOwner3 = (LifecycleOwner) consume;
            int $dirty2 = $changed & (-113);
            $dirty = $dirty2;
            lifecycleOwner2 = lifecycleOwner3;
        } else {
            $dirty = $changed;
            lifecycleOwner2 = lifecycleOwner;
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(keys);
        spreadBuilder.add(lifecycleOwner2);
        Object[] keys$iv = spreadBuilder.toArray(new Object[spreadBuilder.size()]);
        $composer2.startReplaceableGroup(-3685570);
        ComposerKt.sourceInformation($composer2, "C(remember)P(1):Composables.kt#9igjgp");
        boolean invalid$iv = false;
        int length = keys$iv.length;
        int i2 = 0;
        while (i2 < length) {
            Object key$iv = keys$iv[i2];
            i2++;
            invalid$iv |= $composer2.changed(key$iv);
        }
        Object it$iv$iv = $composer2.rememberedValue();
        if (invalid$iv || it$iv$iv == Composer.Companion.getEmpty()) {
            value$iv$iv = new LifecycleResumePauseEffectScope(lifecycleOwner2.getLifecycleRegistry());
            $composer2.updateRememberedValue(value$iv$iv);
        } else {
            value$iv$iv = it$iv$iv;
        }
        $composer2.endReplaceableGroup();
        LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) value$iv$iv;
        LifecycleResumeEffectImpl(lifecycleOwner2, lifecycleResumePauseEffectScope, function1, $composer2, ($dirty & 896) | 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final LifecycleOwner lifecycleOwner4 = lifecycleOwner2;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleResumeEffect$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    Object[] objArr = keys;
                    LifecycleEffectKt.LifecycleResumeEffect(Arrays.copyOf(objArr, objArr.length), lifecycleOwner4, (Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult>) function1, composer, $changed | 1, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LifecycleResumeEffectImpl(final LifecycleOwner lifecycleOwner, final LifecycleResumePauseEffectScope scope, final Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult> function1, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(912823238);
        ComposerKt.sourceInformation($composer2, "C(LifecycleResumeEffectImpl)P(1,2)650@30094L668:LifecycleEffect.kt#2vxrgp");
        EffectsKt.DisposableEffect(lifecycleOwner, scope, new LifecycleEffectKt$LifecycleResumeEffectImpl$1(lifecycleOwner, scope, function1), $composer2, 72);
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleResumeEffectImpl$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    LifecycleEffectKt.LifecycleResumeEffectImpl(LifecycleOwner.this, scope, function1, composer, $changed | 1);
                }
            });
        }
    }
}
