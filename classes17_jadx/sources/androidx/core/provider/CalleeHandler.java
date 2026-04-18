package androidx.core.provider;

import android.os.Handler;
import android.os.Looper;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class CalleeHandler {
    private CalleeHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Handler create() {
        if (Looper.myLooper() == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            return handler;
        }
        Handler handler2 = new Handler();
        return handler2;
    }
}
