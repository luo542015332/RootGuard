package rikka.hidden.compat;

import android.hardware.display.IDisplayManagerCallback;
import android.os.RemoteException;
import android.view.DisplayInfo;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class DisplayManagerApis {
    public static DisplayInfo getDisplayInfo(int displayId) throws RemoteException {
        return Services.displayManager.get().getDisplayInfo(displayId);
    }

    public static void registerCallback(IDisplayManagerCallback callback) throws RemoteException {
        Services.displayManager.get().registerCallback(callback);
    }
}
