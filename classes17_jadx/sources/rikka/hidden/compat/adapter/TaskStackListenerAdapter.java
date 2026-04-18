package rikka.hidden.compat.adapter;

import android.app.ITaskStackListener;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class TaskStackListenerAdapter extends ITaskStackListener.Stub {
    public void onTaskStackChanged() {
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (Throwable th) {
            return true;
        }
    }
}
