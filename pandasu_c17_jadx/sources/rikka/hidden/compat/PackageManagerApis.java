package rikka.hidden.compat;

import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.ParceledListSlice;
import android.content.pm.ProviderInfo;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rikka.buildcompat.BuildCompat;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class PackageManagerApis {
    public static PackageInfo getPackageInfo(String packageName, long flags, int userId) throws RemoteException {
        if (BuildCompat.isAtLeastT()) {
            return Services.packageManager.get().getPackageInfo(packageName, flags, userId);
        }
        return Services.packageManager.get().getPackageInfo(packageName, (int) flags, userId);
    }

    public static ApplicationInfo getApplicationInfo(String packageName, long flags, int userId) throws RemoteException {
        if (BuildCompat.isAtLeastT()) {
            return Services.packageManager.get().getApplicationInfo(packageName, flags, userId);
        }
        return Services.packageManager.get().getApplicationInfo(packageName, (int) flags, userId);
    }

    public static PackageInfo getPackageInfoNoThrow(String packageName, long flags, int userId) {
        try {
            return getPackageInfo(packageName, flags, userId);
        } catch (Throwable th) {
            return null;
        }
    }

    public static ApplicationInfo getApplicationInfoNoThrow(String packageName, long flags, int userId) {
        try {
            return getApplicationInfo(packageName, flags, userId);
        } catch (Throwable th) {
            return null;
        }
    }

    public static String[] getPackagesForUid(int uid) throws RemoteException {
        return Services.packageManager.get().getPackagesForUid(uid);
    }

    public static ParceledListSlice<ApplicationInfo> getInstalledApplications(long flags, int userId) throws RemoteException {
        if (BuildCompat.isAtLeastT()) {
            return Services.packageManager.get().getInstalledApplications(flags, userId);
        }
        return Services.packageManager.get().getInstalledApplications((int) flags, userId);
    }

    public static ParceledListSlice<PackageInfo> getInstalledPackages(long flags, int userId) throws RemoteException {
        if (BuildCompat.isAtLeastT()) {
            return Services.packageManager.get().getInstalledPackages(flags, userId);
        }
        return Services.packageManager.get().getInstalledPackages((int) flags, userId);
    }

    public static List<PackageInfo> getInstalledPackagesNoThrow(long flags, int userId) {
        try {
            ParceledListSlice<PackageInfo> parceledListSlice = getInstalledPackages(flags, userId);
            if (parceledListSlice != null && parceledListSlice.getList() != null) {
                return parceledListSlice.getList();
            }
        } catch (Throwable th) {
        }
        return Collections.emptyList();
    }

    public static List<ApplicationInfo> getInstalledApplicationsNoThrow(long flags, int userId) {
        try {
            ParceledListSlice<ApplicationInfo> parceledListSlice = getInstalledApplications(flags, userId);
            if (parceledListSlice != null && parceledListSlice.getList() != null) {
                return parceledListSlice.getList();
            }
        } catch (Throwable th) {
        }
        return Collections.emptyList();
    }

    public static List<String> getPackagesForUidNoThrow(int uid) {
        ArrayList<String> packages = new ArrayList<>();
        try {
            String[] packagesArray = getPackagesForUid(uid);
            if (packagesArray != null) {
                for (String packageName : packagesArray) {
                    if (packageName != null) {
                        packages.add(packageName);
                    }
                }
            }
        } catch (Throwable th) {
        }
        return packages;
    }

    public static int getPackageUid(String packageName, long flags, int userId) throws RemoteException {
        IPackageManager pm = Services.packageManager.get();
        if (BuildCompat.isAtLeastT()) {
            return pm.getPackageUid(packageName, flags, userId);
        }
        return pm.getPackageUid(packageName, (int) flags, userId);
    }

    public static int getUidForSharedUser(String sharedUserName) throws RemoteException {
        return Services.packageManager.get().getUidForSharedUser(sharedUserName);
    }

    public static int getUidForSharedUserNoThrow(String sharedUserName) {
        try {
            return getUidForSharedUser(sharedUserName);
        } catch (Throwable th) {
            return -1;
        }
    }

    public static ProviderInfo resolveContentProvider(String name, long flags, int userId) throws RemoteException {
        if (BuildCompat.isAtLeastT()) {
            return Services.packageManager.get().resolveContentProvider(name, flags, userId);
        }
        return Services.packageManager.get().resolveContentProvider(name, (int) flags, userId);
    }

    public static boolean getApplicationHiddenSettingAsUser(String packageName, int userId) throws RemoteException {
        return Services.packageManager.get().getApplicationHiddenSettingAsUser(packageName, userId);
    }

    public static boolean getApplicationHiddenSettingAsUserNoThrow(String packageName, int userId) {
        try {
            return getApplicationHiddenSettingAsUser(packageName, userId);
        } catch (Throwable th) {
            return true;
        }
    }

    public int checkSignatures(String pkg1, String pkg2) throws RemoteException {
        return Services.packageManager.get().checkSignatures(pkg1, pkg2);
    }

    public int checkUidSignatures(int uid1, int uid2) throws RemoteException {
        return Services.packageManager.get().checkUidSignatures(uid1, uid2);
    }
}
