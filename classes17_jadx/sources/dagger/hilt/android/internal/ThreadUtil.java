package dagger.hilt.android.internal;

import android.os.Looper;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class ThreadUtil {
    private static Thread mainThread;

    private ThreadUtil() {
    }

    public static boolean isMainThread() {
        if (mainThread == null) {
            mainThread = Looper.getMainLooper().getThread();
        }
        return Thread.currentThread() == mainThread;
    }

    public static void ensureMainThread() {
        if (!isMainThread()) {
            throw new IllegalStateException("Must be called on the Main thread.");
        }
    }
}
