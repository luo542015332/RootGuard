package rikka.hidden.compat;

import android.os.RemoteException;
import com.android.internal.policy.IKeyguardLockedStateListener;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class WindowManagerApis {
    public static void addKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
        Services.windowManager.get().addKeyguardLockedStateListener(listener);
    }

    public static void removeKeyguardLockedStateListener(IKeyguardLockedStateListener listener) throws RemoteException {
        Services.windowManager.get().removeKeyguardLockedStateListener(listener);
    }
}
