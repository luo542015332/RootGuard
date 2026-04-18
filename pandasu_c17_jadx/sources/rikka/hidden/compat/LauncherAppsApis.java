package rikka.hidden.compat;

import android.content.pm.IOnAppsChangedListener;
import android.os.RemoteException;
import rikka.buildcompat.BuildCompat;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class LauncherAppsApis {
    public static void addOnAppsChangedListener(String callingPackage, IOnAppsChangedListener listener) throws RemoteException {
        if (BuildCompat.isAtLeastN()) {
            Services.launcherApps.get().addOnAppsChangedListener(callingPackage, listener);
        } else {
            Services.launcherApps.get().addOnAppsChangedListener(listener);
        }
    }

    public static void removeOnAppsChangedListener(IOnAppsChangedListener listener) throws RemoteException {
        Services.launcherApps.get().removeOnAppsChangedListener(listener);
    }
}
