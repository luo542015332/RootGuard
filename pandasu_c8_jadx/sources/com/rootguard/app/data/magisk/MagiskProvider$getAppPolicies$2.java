package com.rootguard.app.data.magisk;

import android.content.pm.PackageManager;
import com.rootguard.app.utils.Logger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/data/magisk/AppPolicy;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$getAppPolicies$2", f = "MagiskProvider.kt", i = {0}, l = {444}, m = "invokeSuspend", n = {"policies"}, s = {"L$0"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class MagiskProvider$getAppPolicies$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<AppPolicy>>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ MagiskProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagiskProvider$getAppPolicies$2(MagiskProvider magiskProvider, Continuation<? super MagiskProvider$getAppPolicies$2> continuation) {
        super(2, continuation);
        this.this$0 = magiskProvider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$getAppPolicies$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<AppPolicy>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 21, insn: 0x062f: MOVE (r9 I:??[OBJECT, ARRAY]) = (r21 I:??[OBJECT, ARRAY] A[D('$result' java.lang.Object)]), block:B:165:0x062e */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v7 */
    public final Object invokeSuspend(Object $result) {
        Object $result2;
        ?? r9;
        MagiskProvider$getAppPolicies$2 magiskProvider$getAppPolicies$2;
        Object detectRootType;
        Object $result3;
        List policies;
        Object $result4;
        Object $result5;
        String str;
        String str2;
        MagiskProvider magiskProvider;
        boolean success;
        boolean success2;
        String tableName = "uid_policy";
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    magiskProvider$getAppPolicies$2 = this;
                    List policies2 = new ArrayList();
                    Logger.INSTANCE.d("========== Starting getAppPolicies() ==========");
                    magiskProvider$getAppPolicies$2.L$0 = policies2;
                    magiskProvider$getAppPolicies$2.label = 1;
                    detectRootType = magiskProvider$getAppPolicies$2.this$0.detectRootType((Continuation) magiskProvider$getAppPolicies$2);
                    if (detectRootType == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result2 = $result;
                    $result3 = detectRootType;
                    policies = policies2;
                    break;
                case 1:
                    magiskProvider$getAppPolicies$2 = this;
                    $result3 = $result;
                    List policies3 = (List) magiskProvider$getAppPolicies$2.L$0;
                    ResultKt.throwOnFailure($result3);
                    policies = policies3;
                    $result2 = $result3;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            r9 = (String) $result3;
            Logger.INSTANCE.d("Detected root type: " + r9);
            try {
                if (Intrinsics.areEqual((Object) r9, MagiskProvider.ROOT_TYPE_KERNELSU)) {
                    Logger.INSTANCE.d("Root type is KernelSU, detecting manager...");
                    try {
                        Process process = Runtime.getRuntime().exec(new String[]{"su", "-c", "pm", "path", "me.weishu.kernelsu"});
                        process.waitFor();
                        success = process.exitValue() == 0;
                        if (!success) {
                            Logger.INSTANCE.w("Weishu KernelSU not found via pm path");
                        }
                    } catch (Exception e2) {
                        Logger.INSTANCE.w("Failed to check Weishu KernelSU: " + e2.getMessage());
                        success = false;
                    }
                    boolean ksudbWeishu = success;
                    try {
                        Process process2 = Runtime.getRuntime().exec(new String[]{"su", "-c", "pm", "path", "com.tiann.kernelsu"});
                        process2.waitFor();
                        success2 = process2.exitValue() == 0;
                        if (!success2) {
                            Logger.INSTANCE.w("Tiann KernelSU not found via pm path");
                        }
                    } catch (Exception e3) {
                        Logger.INSTANCE.w("Failed to check Tiann KernelSU: " + e3.getMessage());
                        success2 = false;
                    }
                    $result5 = $result2;
                    Logger.INSTANCE.d("ksudbWeishu: " + (ksudbWeishu) + ", ksudbTiann: " + (success2));
                    str = "/data/data/me.weishu.kernelsu/databases/app.db";
                    if (ksudbWeishu) {
                        Logger.INSTANCE.d("Using Weishu KernelSU manager: /data/data/me.weishu.kernelsu/databases/app.db");
                    } else if (success2) {
                        Logger.INSTANCE.d("Using Tiann KernelSU manager: /data/data/com.tiann.kernelsu/databases/kernelsu.db");
                        str = "/data/data/com.tiann.kernelsu/databases/kernelsu.db";
                    } else {
                        Logger.INSTANCE.w("No KernelSU manager found, defaulting to Weishu");
                    }
                } else {
                    $result5 = $result2;
                    boolean areEqual = Intrinsics.areEqual((Object) r9, MagiskProvider.ROOT_TYPE_MAGISK);
                    str = MagiskProvider.MAGISK_DB;
                    if (areEqual) {
                        Logger.INSTANCE.d("Root type is Magisk, using: /data/adb/magisk.db");
                    } else {
                        Logger.INSTANCE.w("Unknown root type (" + r9 + "), trying Magisk DB: /data/adb/magisk.db");
                    }
                }
                String dbPath = str;
                Logger.INSTANCE.d("Database path: " + dbPath);
                Logger.INSTANCE.d("Checking if database exists: " + dbPath);
                Process checkDbProcess = Runtime.getRuntime().exec(new String[]{"su", "-c", "test", "-f", dbPath});
                checkDbProcess.waitFor();
                Logger.INSTANCE.d("Database check exit code: " + checkDbProcess.exitValue());
                if (checkDbProcess.exitValue() != 0) {
                    Logger.INSTANCE.w("Database file not found: " + dbPath);
                    return policies;
                }
                Logger.INSTANCE.d("Database file exists, proceeding to query");
                if (Intrinsics.areEqual((Object) r9, MagiskProvider.ROOT_TYPE_KERNELSU)) {
                    Logger.INSTANCE.d("Querying KernelSU database...");
                    Logger.INSTANCE.d("Checking database tables...");
                    Process tableCheck = Runtime.getRuntime().exec(new String[]{"su", "-c", "sqlite3", dbPath, ".tables"});
                    InputStream inputStream = tableCheck.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                    Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                    String tables = StringsKt.trim(TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192))).toString();
                    tableCheck.waitFor();
                    Logger.INSTANCE.d("KernelSU database tables: " + tables);
                    Logger.INSTANCE.d("Table check exit code: " + tableCheck.exitValue());
                    if (StringsKt.contains$default(tables, "rules", false, 2, (Object) null)) {
                        Logger.INSTANCE.d("Found 'rules' table");
                        tableName = "rules";
                    } else if (StringsKt.contains$default(tables, "uid_policy", false, 2, (Object) null)) {
                        Logger.INSTANCE.d("Found 'uid_policy' table");
                    } else {
                        Logger.INSTANCE.w("Unknown KernelSU database structure, tables: " + tables);
                        return policies;
                    }
                    Logger.INSTANCE.d("Using table: " + tableName);
                    Logger.INSTANCE.d("Executing query: SELECT uid, policy FROM " + tableName);
                    Process process3 = Runtime.getRuntime().exec(new String[]{"su", "-c", "sqlite3", dbPath, "SELECT uid, policy FROM " + tableName});
                    InputStream inputStream2 = process3.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream2, "getInputStream(...)");
                    Reader inputStreamReader2 = new InputStreamReader(inputStream2, Charsets.UTF_8);
                    String output = TextStreamsKt.readText(inputStreamReader2 instanceof BufferedReader ? (BufferedReader) inputStreamReader2 : new BufferedReader(inputStreamReader2, 8192));
                    process3.waitFor();
                    Logger.INSTANCE.d("Query exit code: " + process3.exitValue());
                    Logger.INSTANCE.d("Query output length: " + output.length() + " characters");
                    Logger.INSTANCE.d("Query output lines: " + StringsKt.lines(output).size() + " lines");
                    Logger.INSTANCE.d("Query output preview: " + StringsKt.take(output, 200));
                    Iterable $this$forEach$iv = StringsKt.lines(output);
                    MagiskProvider magiskProvider2 = magiskProvider$getAppPolicies$2.this$0;
                    String output2 = null;
                    for (Object element$iv : $this$forEach$iv) {
                        String line = (String) element$iv;
                        List parts = StringsKt.split$default(line, new String[]{"|"}, false, 0, 6, (Object) null);
                        if (parts.size() < 2) {
                            str2 = output2;
                            magiskProvider = magiskProvider2;
                        } else {
                            Integer intOrNull = StringsKt.toIntOrNull((String) parts.get(0));
                            int uid = intOrNull != null ? intOrNull.intValue() : 0;
                            Integer intOrNull2 = StringsKt.toIntOrNull((String) parts.get(1));
                            int policy = intOrNull2 != null ? intOrNull2.intValue() : 0;
                            try {
                                PackageManager pm = magiskProvider2.getContext().getPackageManager();
                                String[] packages = pm.getPackagesForUid(uid);
                                if (packages == null) {
                                    str2 = output2;
                                    magiskProvider = magiskProvider2;
                                } else {
                                    int length = packages.length;
                                    int i = 0;
                                    while (i < length) {
                                        String str3 = packages[i];
                                        str2 = output2;
                                        try {
                                            Intrinsics.checkNotNull(str3);
                                            magiskProvider = magiskProvider2;
                                        } catch (Exception e4) {
                                            e = e4;
                                            magiskProvider = magiskProvider2;
                                        }
                                        try {
                                            policies.add(new AppPolicy(str3, policy, 1, 1));
                                            i++;
                                            output2 = str2;
                                            magiskProvider2 = magiskProvider;
                                        } catch (Exception e5) {
                                            e = e5;
                                            Logger.INSTANCE.w("Failed to get package for uid " + uid + ": " + e.getMessage());
                                            output2 = str2;
                                            magiskProvider2 = magiskProvider;
                                        }
                                    }
                                    str2 = output2;
                                    magiskProvider = magiskProvider2;
                                }
                            } catch (Exception e6) {
                                e = e6;
                                str2 = output2;
                                magiskProvider = magiskProvider2;
                            }
                        }
                        output2 = str2;
                        magiskProvider2 = magiskProvider;
                    }
                } else if (Intrinsics.areEqual((Object) r9, MagiskProvider.ROOT_TYPE_MAGISK)) {
                    Process process4 = Runtime.getRuntime().exec(new String[]{"su", "-c", "sqlite3", dbPath, "SELECT package_name, policy, logging, notification FROM policies"});
                    InputStream inputStream3 = process4.getInputStream();
                    Intrinsics.checkNotNullExpressionValue(inputStream3, "getInputStream(...)");
                    Reader inputStreamReader3 = new InputStreamReader(inputStream3, Charsets.UTF_8);
                    String output3 = TextStreamsKt.readText(inputStreamReader3 instanceof BufferedReader ? (BufferedReader) inputStreamReader3 : new BufferedReader(inputStreamReader3, 8192));
                    process4.waitFor();
                    Iterable $this$forEach$iv2 = StringsKt.lines(output3);
                    for (Object element$iv2 : $this$forEach$iv2) {
                        String line2 = (String) element$iv2;
                        List parts2 = StringsKt.split$default(line2, new String[]{"|"}, false, 0, 6, (Object) null);
                        if (parts2.size() >= 4) {
                            String str4 = (String) parts2.get(0);
                            Integer intOrNull3 = StringsKt.toIntOrNull((String) parts2.get(1));
                            int intValue = intOrNull3 != null ? intOrNull3.intValue() : 0;
                            Integer intOrNull4 = StringsKt.toIntOrNull((String) parts2.get(2));
                            int intValue2 = intOrNull4 != null ? intOrNull4.intValue() : 1;
                            Integer intOrNull5 = StringsKt.toIntOrNull((String) parts2.get(3));
                            policies.add(new AppPolicy(str4, intValue, intValue2, intOrNull5 != null ? intOrNull5.intValue() : 1));
                        }
                    }
                } else {
                    Logger.INSTANCE.w("Unknown root type, cannot query app policies");
                }
                Logger.INSTANCE.d("Found " + policies.size() + " app policies");
                return policies;
            } catch (Exception e7) {
                e = e7;
                $result2 = policies;
                r9 = $result4;
                Logger.INSTANCE.e("Failed to get app policies", e);
                return $result2;
            }
        } catch (Exception e8) {
            e = e8;
            Object obj = $result2;
            $result2 = policies;
            r9 = obj;
            Logger.INSTANCE.e("Failed to get app policies", e);
            return $result2;
        }
    }
}
