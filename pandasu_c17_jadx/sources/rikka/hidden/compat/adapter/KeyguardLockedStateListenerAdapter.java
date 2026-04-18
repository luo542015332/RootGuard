package rikka.hidden.compat.adapter;

import android.os.Parcel;
import android.os.RemoteException;
import com.android.internal.policy.IKeyguardLockedStateListener;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
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
