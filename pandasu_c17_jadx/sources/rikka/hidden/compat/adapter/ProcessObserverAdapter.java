package rikka.hidden.compat.adapter;

import android.app.IProcessObserver;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class ProcessObserverAdapter extends IProcessObserver.Stub {
    public void onForegroundActivitiesChanged(int pid, int uid, boolean foregroundActivities) throws RemoteException {
    }

    public void onProcessDied(int pid, int uid) throws RemoteException {
    }

    public void onProcessStateChanged(int pid, int uid, int procState) throws RemoteException {
    }

    public void onForegroundServicesChanged(int pid, int uid, int serviceTypes) throws RemoteException {
    }

    public void onProcessStarted(int pid, int processUid, int packageUid, String packageName, String processName) throws RemoteException {
    }
}
