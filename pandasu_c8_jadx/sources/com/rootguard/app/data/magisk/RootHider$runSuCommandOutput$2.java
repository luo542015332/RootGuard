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

/* compiled from: RootHider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.RootHider$runSuCommandOutput$2", f = "RootHider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class RootHider$runSuCommandOutput$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    final /* synthetic */ String $cmd;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHider$runSuCommandOutput$2(String str, Continuation<? super RootHider$runSuCommandOutput$2> continuation) {
        super(2, continuation);
        this.$cmd = str;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RootHider$runSuCommandOutput$2(this.$cmd, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                try {
                    Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", this.$cmd});
                    InputStream inputStream = process.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                    Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                    String output = StringsKt.trim(TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192))).toString();
                    process.waitFor();
                    int exitCode = process.exitValue();
                    if (exitCode == 0) {
                        return output;
                    }
                    InputStream errorStream = process.getErrorStream();
                    Intrinsics.checkNotNullExpressionValue(errorStream, "getErrorStream(...)");
                    Reader inputStreamReader2 = new InputStreamReader(errorStream, Charsets.UTF_8);
                    String error = StringsKt.trim(TextStreamsKt.readText(inputStreamReader2 instanceof BufferedReader ? (BufferedReader) inputStreamReader2 : new BufferedReader(inputStreamReader2, 8192))).toString();
                    Logger.INSTANCE.d("su cmd output failed: " + this.$cmd + ", exitCode=" + exitCode + ", error=" + error);
                    return "";
                } catch (Exception e) {
                    Logger.INSTANCE.e("su cmd output exception: " + this.$cmd, e);
                    return "";
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
