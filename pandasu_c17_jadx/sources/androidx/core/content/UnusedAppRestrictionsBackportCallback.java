package androidx.core.content;

import android.os.RemoteException;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class UnusedAppRestrictionsBackportCallback {
    private IUnusedAppRestrictionsBackportCallback mCallback;

    public UnusedAppRestrictionsBackportCallback(IUnusedAppRestrictionsBackportCallback callback) {
        this.mCallback = callback;
    }

    public void onResult(boolean success, boolean enabled) throws RemoteException {
        this.mCallback.onIsPermissionRevocationEnabledForAppResult(success, enabled);
    }
}
