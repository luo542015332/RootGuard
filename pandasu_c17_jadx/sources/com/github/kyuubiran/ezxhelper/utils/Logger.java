package com.github.kyuubiran.ezxhelper.utils;

import androidx.core.app.NotificationCompat;
import de.robv.android.xposed.XposedBridge;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Log.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\f\b\u0016\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nJ\u001c\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010 \u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nJ\u001c\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nJ*\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001c\u0010&\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010&\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nJ\u001a\u0010'\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0018\u0010'\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001b\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000e¨\u0006)"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/Logger;", "", "()V", "logLevel", "", "getLogLevel", "()I", "setLogLevel", "(I)V", "logTag", "", "getLogTag", "()Ljava/lang/String;", "setLogTag", "(Ljava/lang/String;)V", "<set-?>", "", "logXp", "getLogXp", "()Z", "setLogXp$EzXHelper_release", "(Z)V", "toastTag", "getToastTag", "setToastTag", "d", "", NotificationCompat.CATEGORY_MESSAGE, "thr", "", "dx", "e", "ex", "i", "ix", "px", "levelInt", "level", "w", "wx", "LogLevel", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class Logger {
    public static final int DEBUG = 1;
    public static final int ERROR = 4;
    public static final int INFO = 2;
    public static final int VERBOSE = 0;
    public static final int WARN = 3;
    private int logLevel;
    private String logTag = "EZXHelper";
    private boolean logXp = true;
    private String toastTag;

    public final int getLogLevel() {
        return this.logLevel;
    }

    public final void setLogLevel(int i) {
        this.logLevel = i;
    }

    public final String getLogTag() {
        return this.logTag;
    }

    public final void setLogTag(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.logTag = str;
    }

    public final boolean getLogXp() {
        return this.logXp;
    }

    public final void setLogXp$EzXHelper_release(boolean z) {
        this.logXp = z;
    }

    public final String getToastTag() {
        return this.toastTag;
    }

    public final void setToastTag(String str) {
        this.toastTag = str;
    }

    public static /* synthetic */ void i$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: i");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.i(str, th);
    }

    public void i(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (this.logLevel > 2) {
            return;
        }
        android.util.Log.i(this.logTag, msg, thr);
    }

    public static /* synthetic */ void d$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: d");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.d(str, th);
    }

    public void d(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (this.logLevel > 1) {
            return;
        }
        android.util.Log.d(this.logTag, msg, thr);
    }

    public static /* synthetic */ void w$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: w");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.w(str, th);
    }

    public void w(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (this.logLevel > 3) {
            return;
        }
        android.util.Log.w(this.logTag, msg, thr);
    }

    public static /* synthetic */ void e$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: e");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.e(str, th);
    }

    public void e(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (this.logLevel > 4) {
            return;
        }
        android.util.Log.e(this.logTag, msg, thr);
    }

    public void px(int levelInt, String level, String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (this.logLevel <= levelInt && this.logXp) {
            XposedBridge.log("[" + level + "/" + this.logTag + "] " + msg + ": " + (thr != null ? ExceptionsKt.stackTraceToString(thr) : null));
        }
    }

    public static /* synthetic */ void i$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: i");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.i(th, str);
    }

    public final void i(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        i(msg, thr);
    }

    public static /* synthetic */ void d$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: d");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.d(th, str);
    }

    public final void d(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        d(msg, thr);
    }

    public static /* synthetic */ void w$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: w");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.w(th, str);
    }

    public final void w(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        w(msg, thr);
    }

    public static /* synthetic */ void e$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: e");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.e(th, str);
    }

    public final void e(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        e(msg, thr);
    }

    public static /* synthetic */ void ix$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ix");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.ix(str, th);
    }

    public final void ix(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        i(msg, thr);
        px(2, "I", msg, thr);
    }

    public static /* synthetic */ void ix$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ix");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.ix(th, str);
    }

    public final void ix(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        ix(msg, thr);
    }

    public static /* synthetic */ void wx$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: wx");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.wx(str, th);
    }

    public final void wx(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        w(msg, thr);
        px(3, "W", msg, thr);
    }

    public static /* synthetic */ void wx$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: wx");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.wx(th, str);
    }

    public final void wx(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        wx(msg, thr);
    }

    public static /* synthetic */ void dx$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: dx");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.dx(str, th);
    }

    public final void dx(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        d(msg, thr);
        px(1, "D", msg, thr);
    }

    public static /* synthetic */ void dx$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: dx");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.dx(th, str);
    }

    public final void dx(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        dx(msg, thr);
    }

    public static /* synthetic */ void ex$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ex");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.ex(str, th);
    }

    public final void ex(String msg, Throwable thr) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        e(msg, thr);
        px(4, "E", msg, thr);
    }

    public static /* synthetic */ void ex$default(Logger logger, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ex");
        }
        if ((i & 2) != 0) {
            str = "";
        }
        logger.ex(th, str);
    }

    public final void ex(Throwable thr, String msg) {
        Intrinsics.checkNotNullParameter(thr, "thr");
        Intrinsics.checkNotNullParameter(msg, "msg");
        ex(msg, thr);
    }
}
