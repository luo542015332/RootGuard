package rikka.hidden.compat.adapter;

import android.hardware.display.IDisplayManagerCallback;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class DisplayManagerCallbackAdapter extends IDisplayManagerCallback.Stub {
    public void onDisplayEvent(int displayId, int event) {
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (Throwable th) {
            return true;
        }
    }
}
