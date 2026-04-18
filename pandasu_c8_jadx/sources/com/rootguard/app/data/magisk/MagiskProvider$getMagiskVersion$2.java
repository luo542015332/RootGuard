package com.rootguard.app.data.magisk;

import com.rootguard.app.utils.Logger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/rootguard/app/data/magisk/MagiskVersion;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$getMagiskVersion$2", f = "MagiskProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class MagiskProvider$getMagiskVersion$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MagiskVersion>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MagiskProvider$getMagiskVersion$2(Continuation<? super MagiskProvider$getMagiskVersion$2> continuation) {
        super(2, continuation);
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$getMagiskVersion$2(continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MagiskVersion> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                try {
                    Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", MagiskProvider.ROOT_TYPE_MAGISK, "-V"});
                    InputStream inputStream = process.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                    Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                    Integer intOrNull = StringsKt.toIntOrNull(StringsKt.trim(TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192))).toString());
                    int versionCode = intOrNull != null ? intOrNull.intValue() : 0;
                    process.waitFor();
                    Process versionNameProcess = Runtime.getRuntime().exec(new String[]{"su", "-c", MagiskProvider.ROOT_TYPE_MAGISK, "-v"});
                    InputStream inputStream2 = versionNameProcess.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream2, "getInputStream(...)");
                    Reader inputStreamReader2 = new InputStreamReader(inputStream2, Charsets.UTF_8);
                    String versionName = StringsKt.trim(TextStreamsKt.readText(inputStreamReader2 instanceof BufferedReader ? (BufferedReader) inputStreamReader2 : new BufferedReader(inputStreamReader2, 8192))).toString();
                    versionNameProcess.waitFor();
                    return new MagiskVersion(versionName, versionCode, true);
                } catch (Exception e) {
                    Logger.INSTANCE.e("Failed to get Magisk version", e);
                    return new MagiskVersion("Unknown", 0, false);
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
