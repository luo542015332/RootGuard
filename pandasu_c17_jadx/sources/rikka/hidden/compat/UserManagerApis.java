package rikka.hidden.compat;

import android.content.pm.UserInfo;
import android.os.Build;
import android.os.IUserManager;
import android.os.RemoteException;
import androidx.collection.ArraySet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class UserManagerApis {
    public static List<UserInfo> getUsers(boolean excludePartial, boolean excludeDying, boolean excludePreCreated) throws RemoteException {
        IUserManager um = Services.userManager.get();
        if (Build.VERSION.SDK_INT >= 30) {
            List<UserInfo> list = um.getUsers(excludePartial, excludeDying, excludePreCreated);
            return list;
        }
        try {
            List<UserInfo> list2 = um.getUsers(excludeDying);
            return list2;
        } catch (NoSuchMethodError e) {
            List<UserInfo> list3 = um.getUsers(excludePartial, excludeDying, excludePreCreated);
            return list3;
        }
    }

    public static List<UserInfo> getUsersNoThrow(boolean excludePartial, boolean excludeDying, boolean excludePreCreated) {
        List<UserInfo> result = new ArrayList<>();
        try {
            result.addAll(getUsers(excludePartial, excludeDying, excludePreCreated));
        } catch (Throwable th) {
        }
        return result;
    }

    public static boolean isUserUnlocked(int userId) throws RemoteException {
        return Services.userManager.get().isUserUnlocked(userId);
    }

    public static boolean isUserStorageAvailable(int userId) throws RemoteException {
        return Services.userManager.get().isUserRunning(userId) && Services.userManager.get().isUserUnlocked(userId);
    }

    public static UserInfo getUserInfo(int userId) {
        IUserManager um = Services.userManager.get();
        return um.getUserInfo(userId);
    }

    public static Collection<Integer> getUserIdsNoThrow() {
        return getUserIdsNoThrow(true, true, true);
    }

    public static Collection<Integer> getUserIdsNoThrow(boolean excludePartial, boolean excludeDying, boolean excludePreCreated) {
        ArraySet arraySet = new ArraySet();
        try {
            for (UserInfo it : getUsers(excludePartial, excludeDying, excludePreCreated)) {
                arraySet.add(Integer.valueOf(it.id));
            }
        } catch (Throwable th) {
            arraySet.add(0);
        }
        return arraySet;
    }
}
