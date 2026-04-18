package rikka.hidden.compat.adapter;

import android.app.IUidObserver;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class UidObserverAdapter extends IUidObserver.Stub {
    public final void onUidGone(int uid) throws RemoteException {
        onUidGone(uid, false);
    }

    public void onUidGone(int uid, boolean disabled) throws RemoteException {
    }

    public void onUidActive(int uid) throws RemoteException {
    }

    public final void onUidIdle(int uid) throws RemoteException {
        onUidIdle(uid, false);
    }

    public void onUidIdle(int uid, boolean disabled) throws RemoteException {
    }

    public final void onUidStateChanged(int uid, int procState) throws RemoteException {
        onUidStateChanged(uid, procState, 0L);
    }

    public final void onUidStateChanged(int uid, int procState, long procStateSeq) throws RemoteException {
        onUidStateChanged(uid, procState, procStateSeq, 0);
    }

    public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) throws RemoteException {
    }

    public void onUidCachedChanged(int uid, boolean cached) throws RemoteException {
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (Throwable th) {
            return true;
        }
    }
}
