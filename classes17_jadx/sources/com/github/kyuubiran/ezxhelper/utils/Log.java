package com.github.kyuubiran.ezxhelper.utils;

import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.github.kyuubiran.ezxhelper.init.InitFields;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Log.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017J1\u0010\u0012\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u001f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00170 \"\u00020\u00172\b\b\u0002\u0010!\u001a\u00020\"¢\u0006\u0002\u0010#J\u0018\u0010\u0012\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010!\u001a\u00020\"J\u001a\u0010$\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010$\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u001a\u0010%\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0018\u0010%\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u0016\u001a\u00020\u0017JF\u0010&\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+JF\u0010,\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+JF\u0010-\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+JF\u0010.\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+JF\u0010/\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+JF\u00100\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+JF\u00101\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+JF\u00102\u001a\u0004\u0018\u00010\u0015\"\u0004\b\u0000\u0010'*\b\u0012\u0004\u0012\u0002H'0(2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0014\b\u0002\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150*H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010+R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b\u009920\u0001\n\u0002\b\u0019¨\u00063"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/Log;", "", "()V", "cancelLastToast", "", "getCancelLastToast", "()Z", "setCancelLastToast", "(Z)V", "value", "Lcom/github/kyuubiran/ezxhelper/utils/Logger;", "currentLogger", "getCurrentLogger", "()Lcom/github/kyuubiran/ezxhelper/utils/Logger;", "setCurrentLogger", "(Lcom/github/kyuubiran/ezxhelper/utils/Logger;)V", "defaultLogger", "logger", "toast", "Landroid/widget/Toast;", "d", "", NotificationCompat.CATEGORY_MESSAGE, "", "thr", "", "dx", "e", "ex", "i", "ix", "formats", "", "duration", "", "(Ljava/lang/String;[Ljava/lang/String;I)V", "w", "wx", "logdIfThrow", "R", "Lkotlin/Result;", "then", "Lkotlin/Function1;", "(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;", "logdxIfThrow", "logeIfThrow", "logexIfThrow", "logiIfThrow", "logixIfThrow", "logwIfThrow", "logwxIfThrow", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class Log {
    private static boolean cancelLastToast;
    private static Logger logger;
    private static Toast toast;
    public static final Log INSTANCE = new Log();
    private static final Logger defaultLogger = new Logger();

    private Log() {
    }

    public final Logger getCurrentLogger() {
        Logger logger2 = logger;
        return logger2 == null ? defaultLogger : logger2;
    }

    public final void setCurrentLogger(Logger value) {
        Intrinsics.checkNotNullParameter(value, "value");
        logger = value;
    }

    public final boolean getCancelLastToast() {
        return cancelLastToast;
    }

    public final void setCancelLastToast(boolean z) {
        cancelLastToast = z;
    }

    public static /* synthetic */ void i$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.i(str, th);
    }

    public final void i(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().i(r2, thr);
    }

    public static /* synthetic */ void d$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.d(str, th);
    }

    public final void d(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().d(r2, thr);
    }

    public static /* synthetic */ void w$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.w(str, th);
    }

    public final void w(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().w(r2, thr);
    }

    public static /* synthetic */ void e$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.e(str, th);
    }

    public final void e(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().e(r2, thr);
    }

    public static /* synthetic */ void ix$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.ix(str, th);
    }

    public final void ix(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().ix(r2, thr);
    }

    public static /* synthetic */ void wx$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.wx(str, th);
    }

    public final void wx(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().wx(r2, thr);
    }

    public static /* synthetic */ void dx$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.dx(str, th);
    }

    public final void dx(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().dx(r2, thr);
    }

    public static /* synthetic */ void ex$default(Log log, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        log.ex(str, th);
    }

    public final void ex(String r2, Throwable thr) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        getCurrentLogger().ex(r2, thr);
    }

    public static /* synthetic */ void i$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.i(th, str);
    }

    public final void i(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().i(thr, r3);
    }

    public static /* synthetic */ void d$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.d(th, str);
    }

    public final void d(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().d(thr, r3);
    }

    public static /* synthetic */ void w$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.w(th, str);
    }

    public final void w(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().w(thr, r3);
    }

    public static /* synthetic */ void e$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.e(th, str);
    }

    public final void e(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().e(thr, r3);
    }

    public static /* synthetic */ void ix$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.ix(th, str);
    }

    public final void ix(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().ix(thr, r3);
    }

    public static /* synthetic */ void wx$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.wx(th, str);
    }

    public final void wx(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().wx(thr, r3);
    }

    public static /* synthetic */ void dx$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.dx(th, str);
    }

    public final void dx(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().dx(thr, r3);
    }

    public static /* synthetic */ void ex$default(Log log, Throwable th, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        log.ex(th, str);
    }

    public final void ex(Throwable thr, String r3) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(r3, "msg");
        getCurrentLogger().ex(thr, r3);
    }

    public static /* synthetic */ void toast$default(Log log, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        log.toast(str, i);
    }

    public final void toast(final String r2, final int duration) {
        Intrinsics.checkNotNullParameter(r2, "msg");
        AndroidUtilsKt.runOnMainThread(new Runnable() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Log.m975toast$lambda1(duration, r2);
            }
        });
    }

    /* renamed from: toast$lambda-1 */
    public static final void m975toast$lambda1(int $duration, String msg) {
        Toast toast2;
        Intrinsics.checkNotNullParameter(msg, "$msg");
        Log log = INSTANCE;
        if (cancelLastToast && (toast2 = toast) != null) {
            toast2.cancel();
        }
        toast = null;
        Toast $this$toast_u24lambda_u2d1_u24lambda_u2d0 = Toast.makeText(InitFields.INSTANCE.getAppContext(), (CharSequence) null, $duration);
        $this$toast_u24lambda_u2d1_u24lambda_u2d0.setText(log.getCurrentLogger().getToastTag() != null ? log.getCurrentLogger().getToastTag() + ": " + msg : msg);
        $this$toast_u24lambda_u2d1_u24lambda_u2d0.show();
        toast = $this$toast_u24lambda_u2d1_u24lambda_u2d0;
    }

    public static /* synthetic */ void toast$default(Log log, String str, String[] strArr, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        log.toast(str, strArr, i);
    }

    public final void toast(String r3, String[] formats, int duration) {
        Intrinsics.checkNotNullParameter(r3, "msg");
        Intrinsics.checkNotNullParameter(formats, "formats");
        Object[] copyOf = Arrays.copyOf(formats, formats.length);
        String format = String.format(r3, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        toast(format, duration);
    }

    public static /* synthetic */ Unit logiIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logiIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().i(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logiIfThrow(Object $this$logiIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logiIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().i(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit logixIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logixIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().i(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logixIfThrow(Object $this$logixIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logixIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().i(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit logdIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logdIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().d(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logdIfThrow(Object $this$logdIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logdIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().d(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit logdxIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logdxIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().dx(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logdxIfThrow(Object $this$logdxIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logdxIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().dx(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit logwIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logwIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().w(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logwIfThrow(Object $this$logwIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logwIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().w(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit logwxIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logwxIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().wx(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logwxIfThrow(Object $this$logwxIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logwxIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().wx(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit logeIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logeIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().e(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logeIfThrow(Object $this$logeIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logeIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().e(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ Unit logexIfThrow$default(Log $this, Object $receiver, String msg, Function1 then, int i, Object obj) {
        if ((i & 1) != 0) {
            msg = "";
        }
        if ((i & 2) != 0) {
            Function1 then2 = new Function1<Throwable, Unit>() { // from class: com.github.kyuubiran.ezxhelper.utils.Log$logexIfThrow$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
            then = then2;
        }
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($receiver);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().ex(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }

    public final <R> Unit logexIfThrow(Object $this$logexIfThrow, String msg, Function1<? super Throwable, Unit> then) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(then, "then");
        Throwable it = Result.m1016exceptionOrNullimpl($this$logexIfThrow);
        if (it == null) {
            return null;
        }
        INSTANCE.getCurrentLogger().ex(it, msg);
        then.invoke(it);
        return Unit.INSTANCE;
    }
}
