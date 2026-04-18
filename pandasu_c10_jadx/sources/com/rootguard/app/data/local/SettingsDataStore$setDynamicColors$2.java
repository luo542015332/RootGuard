package com.rootguard.app.data.local;

import androidx.datastore.preferences.core.MutablePreferences;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: SettingsDataStore.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.local.SettingsDataStore$setDynamicColors$2", f = "SettingsDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
final class SettingsDataStore$setDynamicColors$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $enabled;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsDataStore$setDynamicColors$2(boolean z, Continuation<? super SettingsDataStore$setDynamicColors$2> continuation) {
        super(2, continuation);
        this.$enabled = z;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> settingsDataStore$setDynamicColors$2 = new SettingsDataStore$setDynamicColors$2(this.$enabled, continuation);
        settingsDataStore$setDynamicColors$2.L$0 = obj;
        return settingsDataStore$setDynamicColors$2;
    }

    public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
        return create(mutablePreferences, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                MutablePreferences it = (MutablePreferences) this.L$0;
                it.set(SettingsDataStore.INSTANCE.getDYNAMIC_COLORS(), Boxing.boxBoolean(this.$enabled));
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
