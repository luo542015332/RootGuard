package com.rootguard.app.data.magisk;

import com.rootguard.app.utils.Logger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/data/magisk/MagiskLog;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$getLogs$2", f = "MagiskProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class MagiskProvider$getLogs$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends MagiskLog>>, Object> {
    int label;
    final /* synthetic */ MagiskProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagiskProvider$getLogs$2(MagiskProvider magiskProvider, Continuation<? super MagiskProvider$getLogs$2> continuation) {
        super(2, continuation);
        this.this$0 = magiskProvider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$getLogs$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<MagiskLog>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        SimpleDateFormat simpleDateFormat;
        SimpleDateFormat simpleDateFormat2;
        MagiskLog parseLogLine;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                List logs = new ArrayList();
                List localLogs = Logger.INSTANCE.getLocalLogs();
                boolean z = true;
                if (!localLogs.isEmpty()) {
                    return CollectionsKt.reversed(localLogs);
                }
                try {
                } catch (Exception e) {
                    Logger.INSTANCE.e("Failed to get logs", e);
                    String str = "无法获取日志: " + e.getMessage();
                    LogLevel logLevel = LogLevel.WARNING;
                    simpleDateFormat = MagiskProvider.dateFormat;
                    String format = simpleDateFormat.format(new Date());
                    Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                    logs.add(new MagiskLog("0", str, logLevel, format));
                    LogLevel logLevel2 = LogLevel.INFO;
                    simpleDateFormat2 = MagiskProvider.dateFormat;
                    String format2 = simpleDateFormat2.format(new Date());
                    Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
                    logs.add(new MagiskLog("1", "日志系统已初始化", logLevel2, format2));
                }
                if (!this.this$0.isMagiskInstalled()) {
                    throw new Exception("Magisk 未安装");
                }
                Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", "logcat", "-d", "-v", "time", "*:I"});
                InputStream inputStream = process.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                String output = TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
                process.waitFor();
                Iterable lines = CollectionsKt.takeLast(StringsKt.lines(output), 100);
                Iterable $this$forEachIndexed$iv = lines;
                MagiskProvider magiskProvider = this.this$0;
                int index$iv = 0;
                for (Object item$iv : $this$forEachIndexed$iv) {
                    int index$iv2 = index$iv + 1;
                    if (index$iv < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    String line = (String) item$iv;
                    int index = index$iv;
                    if ((StringsKt.isBlank(line) ^ z) && !StringsKt.contains$default(line, "Magisk", false, 2, (Object) null)) {
                        parseLogLine = magiskProvider.parseLogLine(line, index);
                        logs.add(parseLogLine);
                    }
                    index$iv = index$iv2;
                    z = true;
                }
                return CollectionsKt.reversed(logs);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
