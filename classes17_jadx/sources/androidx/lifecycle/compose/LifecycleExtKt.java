package androidx.lifecycle.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;

/* compiled from: LifecycleExt.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"currentStateAsState", "Landroidx/compose/runtime/State;", "Landroidx/lifecycle/Lifecycle$State;", "Landroidx/lifecycle/Lifecycle;", "(Landroidx/lifecycle/Lifecycle;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "lifecycle-runtime-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class LifecycleExtKt {
    public static final State<Lifecycle.State> currentStateAsState(Lifecycle $this$currentStateAsState, Composer $composer, int $changed) {
        $composer.startReplaceableGroup(-1892357376);
        ComposerKt.sourceInformation($composer, "C(currentStateAsState)31@1273L16:LifecycleExt.kt#2vxrgp");
        State<Lifecycle.State> collectAsState = SnapshotStateKt.collectAsState($this$currentStateAsState.getCurrentStateFlow(), (CoroutineContext) null, $composer, 8, 1);
        $composer.endReplaceableGroup();
        return collectAsState;
    }
}
