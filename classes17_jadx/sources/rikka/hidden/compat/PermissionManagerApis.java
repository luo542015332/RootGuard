package rikka.hidden.compat;

import android.content.pm.IPackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.os.Build;
import android.os.RemoteException;
import android.permission.IPermissionManager;
import java.util.Objects;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class PermissionManagerApis {
    public static int checkPermission(String permName, int uid) throws RemoteException {
        if (Build.VERSION.SDK_INT != 30) {
            return Services.packageManager.get().checkUidPermission(permName, uid);
        }
        return Services.permissionManager.get().checkUidPermission(permName, uid);
    }

    public static void grantRuntimePermission(String packageName, String permissionName, int userId) throws RemoteException {
        grantRuntimePermission(packageName, permissionName, "default:0", userId);
    }

    public static void grantRuntimePermission(String packageName, String permissionName, String persistentDeviceId, int userId) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 34) {
            IPermissionManager perm = Services.permissionManager.get();
            Objects.requireNonNull(perm);
            try {
                perm.grantRuntimePermission(packageName, permissionName, persistentDeviceId, userId);
                return;
            } catch (NoSuchMethodError e) {
                try {
                    perm.grantRuntimePermission(packageName, permissionName, 0, userId);
                    return;
                } catch (NoSuchMethodError e2) {
                    perm.grantRuntimePermission(packageName, permissionName, userId);
                    return;
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 30) {
            IPermissionManager perm2 = Services.permissionManager.get();
            Objects.requireNonNull(perm2);
            perm2.grantRuntimePermission(packageName, permissionName, userId);
        } else {
            IPackageManager pm = Services.packageManager.get();
            Objects.requireNonNull(pm);
            pm.grantRuntimePermission(packageName, permissionName, userId);
        }
    }

    public static void revokeRuntimePermission(String packageName, String permissionName, int userId) throws RemoteException {
        revokeRuntimePermission(packageName, permissionName, "default:0", userId);
    }

    public static void revokeRuntimePermission(String packageName, String permissionName, String persistentDeviceId, int userId) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 34) {
            IPermissionManager perm = Services.permissionManager.get();
            Objects.requireNonNull(perm);
            try {
                perm.revokeRuntimePermission(packageName, permissionName, persistentDeviceId, userId, (String) null);
                return;
            } catch (NoSuchMethodError e) {
                try {
                    perm.revokeRuntimePermission(packageName, permissionName, 0, userId, (String) null);
                    return;
                } catch (NoSuchMethodError e2) {
                    perm.revokeRuntimePermission(packageName, permissionName, userId, (String) null);
                    return;
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 30) {
            IPermissionManager perm2 = Services.permissionManager.get();
            Objects.requireNonNull(perm2);
            try {
                perm2.revokeRuntimePermission(packageName, permissionName, userId, (String) null);
                return;
            } catch (NoSuchMethodError e3) {
                perm2.revokeRuntimePermission(packageName, permissionName, userId);
                return;
            }
        }
        IPackageManager pm = Services.packageManager.get();
        Objects.requireNonNull(pm);
        pm.revokeRuntimePermission(packageName, permissionName, userId);
    }

    public static int checkPermission(String permName, String pkgName, int userId) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 31) {
            return Services.packageManager.get().checkPermission(permName, pkgName, userId);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            return Services.permissionManager.get().checkPermission(permName, pkgName, userId);
        }
        return Services.packageManager.get().checkPermission(permName, pkgName, userId);
    }

    public static int getPermissionFlags(String permissionName, String packageName, int userId) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 31) {
            return Services.permissionManager.get().getPermissionFlags(packageName, permissionName, userId);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            return Services.permissionManager.get().getPermissionFlags(permissionName, packageName, userId);
        }
        return Services.packageManager.get().getPermissionFlags(permissionName, packageName, userId);
    }

    public static void updatePermissionFlags(String permissionName, String packageName, int flagMask, int flagValues, boolean checkAdjustPolicyFlagPermission, int userId) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 31) {
            Services.permissionManager.get().updatePermissionFlags(packageName, permissionName, flagMask, flagValues, checkAdjustPolicyFlagPermission, userId);
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            Services.permissionManager.get().updatePermissionFlags(permissionName, packageName, flagMask, flagValues, checkAdjustPolicyFlagPermission, userId);
        } else if (Build.VERSION.SDK_INT >= 29) {
            Services.packageManager.get().updatePermissionFlags(permissionName, packageName, flagMask, flagValues, checkAdjustPolicyFlagPermission, userId);
        } else {
            Services.packageManager.get().updatePermissionFlags(permissionName, packageName, flagMask, flagValues, userId);
        }
    }

    public static PermissionGroupInfo getPermissionGroupInfo(String groupName, int flags) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 30) {
            return Services.permissionManager.get().getPermissionGroupInfo(groupName, flags);
        }
        return Services.packageManager.get().getPermissionGroupInfo(groupName, flags);
    }

    public static PermissionInfo getPermissionInfo(String permissionName, String packageName, int flags) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 30) {
            return Services.permissionManager.get().getPermissionInfo(permissionName, packageName, flags);
        }
        return Services.packageManager.get().getPermissionInfo(permissionName, packageName, flags);
    }
}
