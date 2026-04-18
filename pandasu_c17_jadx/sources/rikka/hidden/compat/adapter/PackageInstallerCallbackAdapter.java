package rikka.hidden.compat.adapter;

import android.content.pm.IPackageInstallerCallback;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class PackageInstallerCallbackAdapter extends IPackageInstallerCallback.Stub {
    public void onSessionCreated(int sessionId) throws RemoteException {
    }

    public void onSessionBadgingChanged(int sessionId) throws RemoteException {
    }

    public void onSessionActiveChanged(int sessionId, boolean active) throws RemoteException {
    }

    public void onSessionProgressChanged(int sessionId, float progress) throws RemoteException {
    }

    public void onSessionFinished(int sessionId, boolean success) throws RemoteException {
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (Throwable th) {
            return true;
        }
    }
}
