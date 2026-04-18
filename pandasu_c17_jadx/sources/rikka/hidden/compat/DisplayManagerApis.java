package rikka.hidden.compat;

import android.hardware.display.IDisplayManagerCallback;
import android.os.RemoteException;
import android.view.DisplayInfo;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class DisplayManagerApis {
    public static DisplayInfo getDisplayInfo(int displayId) throws RemoteException {
        return Services.displayManager.get().getDisplayInfo(displayId);
    }

    public static void registerCallback(IDisplayManagerCallback callback) throws RemoteException {
        Services.displayManager.get().registerCallback(callback);
    }
}
