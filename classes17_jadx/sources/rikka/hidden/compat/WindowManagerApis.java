package rikka.hidden.compat;

import android.os.RemoteException;
import com.android.internal.policy.IKeyguardLockedStateListener;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class WindowManagerApis {
    public static void addKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
        Services.windowManager.get().addKeyguardLockedStateListener(listener);
    }

    public static void removeKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
        Services.windowManager.get().removeKeyguardLockedStateListener(listener);
    }
}
