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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/rootguard/app/data/magisk/MagiskModule;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$readModuleInfo$2", f = "MagiskProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class MagiskProvider$readModuleInfo$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MagiskModule>, Object> {
    final /* synthetic */ String $moduleId;
    int label;
    final /* synthetic */ MagiskProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagiskProvider$readModuleInfo$2(String str, MagiskProvider magiskProvider, Continuation<? super MagiskProvider$readModuleInfo$2> continuation) {
        super(2, continuation);
        this.$moduleId = str;
        this.this$0 = magiskProvider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$readModuleInfo$2(this.$moduleId, this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MagiskModule> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        MagiskModule parseModuleProp;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                try {
                    String modulePath = "/data/adb/modules/" + this.$moduleId;
                    boolean z = false;
                    Process propProcess = Runtime.getRuntime().exec(new String[]{"su", "-c", "cat", modulePath + "/module.prop"});
                    InputStream inputStream = propProcess.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                    Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                    String propContent = TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
                    propProcess.waitFor();
                    Process disableFile = Runtime.getRuntime().exec(new String[]{"su", "-c", "test", "-f", modulePath + "/disable"});
                    disableFile.waitFor();
                    Process disableFile2 = disableFile.exitValue() == 0 ? 1 : null;
                    Process removeFile = Runtime.getRuntime().exec(new String[]{"su", "-c", "test", "-f", modulePath + "/remove"});
                    removeFile.waitFor();
                    Process removeFile2 = removeFile.exitValue() == 0 ? 1 : null;
                    MagiskProvider magiskProvider = this.this$0;
                    String str = this.$moduleId;
                    if (disableFile2 == null && removeFile2 == null) {
                        z = true;
                    }
                    parseModuleProp = magiskProvider.parseModuleProp(propContent, str, z);
                    return parseModuleProp;
                } catch (Exception e) {
                    Logger.INSTANCE.e("Failed to read module info: " + this.$moduleId, e);
                    return null;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
