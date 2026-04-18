package rikka.hidden.compat.adapter;

import android.content.pm.IOnAppsChangedListener;
import android.content.pm.ParceledListSlice;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.UserHandle;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class OnAppsChangedListenerAdapter extends IOnAppsChangedListener.Stub {
    public void onPackageRemoved(UserHandle user, String packageName) throws RemoteException {
    }

    public void onPackageAdded(UserHandle user, String packageName) throws RemoteException {
    }

    public void dispatchPackageChanged(UserHandle user, String packageName) throws RemoteException {
    }

    public void onPackageChanged(UserHandle user, String packageName) throws RemoteException {
    }

    public void onPackagesAvailable(UserHandle user, String[] packageNames, boolean replacing) throws RemoteException {
    }

    public void onPackagesUnavailable(UserHandle user, String[] packageNames, boolean replacing) throws RemoteException {
    }

    public void onPackagesSuspended(UserHandle user, String[] packageNames, Bundle launcherExtras) throws RemoteException {
    }

    public void onPackagesUnsuspended(UserHandle user, String[] packageNames) throws RemoteException {
    }

    public void onShortcutChanged(UserHandle user, String packageName, ParceledListSlice shortcuts) throws RemoteException {
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (Throwable th) {
            return true;
        }
    }
}
