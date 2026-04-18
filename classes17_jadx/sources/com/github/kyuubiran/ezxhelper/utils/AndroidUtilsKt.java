package com.github.kyuubiran.ezxhelper.utils;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.github.kyuubiran.ezxhelper.init.EzXHelperInit;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidUtils.kt */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e\u001a\n\u0010\u000f\u001a\u00020\f*\u00020\u0010\u001a\n\u0010\u000f\u001a\u00020\f*\u00020\u0011\u001a\n\u0010\u0012\u001a\u00020\f*\u00020\u000e\u001a9\u0010\u0013\u001a\u00020\f*\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00180\u0017\"\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001b\u001a\u001c\u0010\u0013\u001a\u00020\f*\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0019\u001a\u00020\u001a\"\u001b\u0010\u0000\u001a\u00020\u00018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003\"\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u0005\u001a\u0004\b\b\u0010\t¨\u0006\u001c"}, d2 = {"mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "mainHandler$delegate", "Lkotlin/Lazy;", "runtimeProcess", "Ljava/lang/Runtime;", "getRuntimeProcess", "()Ljava/lang/Runtime;", "runtimeProcess$delegate", "runOnMainThread", "", "runnable", "Ljava/lang/Runnable;", "addModuleAssetPath", "Landroid/content/Context;", "Landroid/content/res/Resources;", "postOnMainThread", "showToast", NotificationCompat.CATEGORY_MESSAGE, "", "args", "", "", "length", "", "(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class AndroidUtilsKt {
    private static final Lazy mainHandler$delegate = LazyKt.lazy(new Function0<Handler>() { // from class: com.github.kyuubiran.ezxhelper.utils.AndroidUtilsKt$mainHandler$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    });
    private static final Lazy runtimeProcess$delegate = LazyKt.lazy(new Function0<Runtime>() { // from class: com.github.kyuubiran.ezxhelper.utils.AndroidUtilsKt$runtimeProcess$2
        @Override // kotlin.jvm.functions.Function0
        public final Runtime invoke() {
            return Runtime.getRuntime();
        }
    });

    public static final Handler getMainHandler() {
        return (Handler) mainHandler$delegate.getValue();
    }

    public static final Runtime getRuntimeProcess() {
        Object value = runtimeProcess$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-runtimeProcess>(...)");
        return (Runtime) value;
    }

    public static final void postOnMainThread(Runnable $this$postOnMainThread) {
        Intrinsics.checkNotNullParameter($this$postOnMainThread, "<this>");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            $this$postOnMainThread.run();
        } else {
            getMainHandler().post($this$postOnMainThread);
        }
    }

    public static final void runOnMainThread(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        postOnMainThread(runnable);
    }

    public static final void showToast(final Context $this$showToast, final String msg, final int length) {
        Intrinsics.checkNotNullParameter($this$showToast, "<this>");
        Intrinsics.checkNotNullParameter(msg, "msg");
        runOnMainThread(new Runnable() { // from class: com.github.kyuubiran.ezxhelper.utils.AndroidUtilsKt$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilsKt.m958showToast$lambda0($this$showToast, msg, length);
            }
        });
    }

    public static /* synthetic */ void showToast$default(Context context, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        showToast(context, str, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showToast$lambda-0, reason: not valid java name */
    public static final void m958showToast$lambda0(Context this_showToast, String msg, int $length) {
        Intrinsics.checkNotNullParameter(this_showToast, "$this_showToast");
        Intrinsics.checkNotNullParameter(msg, "$msg");
        Toast.makeText(this_showToast, msg, $length).show();
    }

    public static final void showToast(final Context $this$showToast, final String msg, final Object[] args, final int length) {
        Intrinsics.checkNotNullParameter($this$showToast, "<this>");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(args, "args");
        runOnMainThread(new Runnable() { // from class: com.github.kyuubiran.ezxhelper.utils.AndroidUtilsKt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilsKt.m959showToast$lambda1($this$showToast, msg, args, length);
            }
        });
    }

    public static /* synthetic */ void showToast$default(Context context, String str, Object[] objArr, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        showToast(context, str, objArr, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showToast$lambda-1, reason: not valid java name */
    public static final void m959showToast$lambda1(Context this_showToast, String msg, Object[] args, int $length) {
        Intrinsics.checkNotNullParameter(this_showToast, "$this_showToast");
        Intrinsics.checkNotNullParameter(msg, "$msg");
        Intrinsics.checkNotNullParameter(args, "$args");
        String format = String.format(msg, Arrays.copyOf(new Object[]{args}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        Toast.makeText(this_showToast, format, $length).show();
    }

    public static final void addModuleAssetPath(Context $this$addModuleAssetPath) {
        Intrinsics.checkNotNullParameter($this$addModuleAssetPath, "<this>");
        EzXHelperInit.INSTANCE.addModuleAssetPath($this$addModuleAssetPath);
    }

    public static final void addModuleAssetPath(Resources $this$addModuleAssetPath) {
        Intrinsics.checkNotNullParameter($this$addModuleAssetPath, "<this>");
        EzXHelperInit.INSTANCE.addModuleAssetPath($this$addModuleAssetPath);
    }
}
