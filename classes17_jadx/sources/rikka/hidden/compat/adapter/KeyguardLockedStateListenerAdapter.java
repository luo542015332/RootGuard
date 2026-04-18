package rikka.hidden.compat.adapter;

import android.os.Parcel;
import android.os.RemoteException;
import com.android.internal.policy.IKeyguardLockedStateListener;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class KeyguardLockedStateListenerAdapter extends IKeyguardLockedStateListener.Stub {
    public void onKeyguardLockedStateChanged(boolean isKeyguardLocked) {
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (Throwable th) {
            return true;
        }
    }
}
