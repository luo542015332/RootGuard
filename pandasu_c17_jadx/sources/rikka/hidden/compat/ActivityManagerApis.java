package rikka.hidden.compat;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.ContentProviderHolder;
import android.app.IActivityManager;
import android.app.IApplicationThread;
import android.app.IProcessObserver;
import android.app.ITaskStackListener;
import android.app.IUidObserver;
import android.app.ProfilerInfo;
import android.content.BroadcastReceiver;
import android.content.IContentProvider;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.system.Os;
import java.util.List;
import rikka.hidden.compat.adapter.IntentReceiver;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class ActivityManagerApis {
    public static int checkPermission(String permission, int pid, int uid) throws RemoteException {
        return Services.activityManager.get().checkPermission(permission, pid, uid);
    }

    public static void registerProcessObserver(IProcessObserver processObserver) throws RemoteException {
        Services.activityManager.get().registerProcessObserver(processObserver);
    }

    public static void unregisterProcessObserver(IProcessObserver observer) throws RemoteException {
        Services.activityManager.get().unregisterProcessObserver(observer);
    }

    public static void registerUidObserver(IUidObserver observer, int which, int cutpoint, String callingPackage) throws RemoteException {
        Services.activityManager.get().registerUidObserver(observer, which, cutpoint, callingPackage);
    }

    public static void unregisterUidObserver(IUidObserver observer) throws RemoteException {
        Services.activityManager.get().unregisterUidObserver(observer);
    }

    public static IContentProvider getContentProviderExternal(String name, int userId, IBinder token, String tag) throws RemoteException {
        IActivityManager am = Services.activityManager.get();
        if (Build.VERSION.SDK_INT >= 29) {
            ContentProviderHolder contentProviderHolder = am.getContentProviderExternal(name, userId, token, tag);
            IContentProvider provider = contentProviderHolder != null ? contentProviderHolder.provider : null;
            return provider;
        }
        ContentProviderHolder contentProviderHolder2 = am.getContentProviderExternal(name, userId, token);
        IContentProvider provider2 = contentProviderHolder2 != null ? contentProviderHolder2.provider : null;
        return provider2;
    }

    public static void removeContentProviderExternal(String name, IBinder token) throws RemoteException {
        Services.activityManager.get().removeContentProviderExternal(name, token);
    }

    public static void forceStopPackageNoThrow(String packageName, int userId) {
        try {
            Services.activityManager.get().forceStopPackage(packageName, userId);
        } catch (Exception e) {
        }
    }

    public static void startActivity(Intent intent, String mimeType, int userId) throws RemoteException {
        IActivityManager iActivityManager = Services.activityManager.get();
        iActivityManager.startActivityAsUser((IApplicationThread) null, Os.getuid() == 2000 ? "com.android.shell" : null, intent, mimeType, (IBinder) null, (String) null, 0, 0, (ProfilerInfo) null, (Bundle) null, userId);
    }

    public static void startActivityNoThrow(Intent intent, String mimeType, int userId) {
        try {
            startActivity(intent, mimeType, userId);
        } catch (Throwable th) {
        }
    }

    public static void broadcastIntent(Intent intent, String resolvedType, IIntentReceiver resultTo, int resultCode, String resultData, Bundle map, String[] requiredPermissions, int appOp, Bundle options, boolean serialized, boolean sticky, int userId) throws RemoteException {
        Services.activityManager.get().broadcastIntent((IApplicationThread) null, intent, (String) null, resultTo, 0, (String) null, (Bundle) null, (String[]) null, -1, (Bundle) null, true, sticky, userId);
    }

    public static void broadcastIntent(Intent intent, int userId) throws RemoteException {
        boolean sticky = intent.getComponent() == null;
        broadcastIntent(intent, null, new IntentReceiver(), 0, null, null, null, -1, null, true, sticky, userId);
    }

    public static int getPackageProcessState(String pkg, int userId, String callingPackage) throws RemoteException {
        IActivityManager am = Services.activityManager.get();
        return am.getUidProcessState(PackageManagerApis.getPackageUid(pkg, 0L, userId), callingPackage);
    }

    public static void forceStopPackage(String packageName, int userId) throws RemoteException {
        Services.activityManager.get().forceStopPackage(packageName, userId);
    }

    public static void startDelegateShellPermissionIdentity(int uid, String[] permissions) throws RemoteException {
        Services.activityManager.get().startDelegateShellPermissionIdentity(uid, permissions);
    }

    public static void stopDelegateShellPermissionIdentity() throws RemoteException {
        Services.activityManager.get().stopDelegateShellPermissionIdentity();
    }

    public static List<String> getDelegatedShellPermissions() throws RemoteException {
        return Services.activityManager.get().getDelegatedShellPermissions();
    }

    public static ActivityTaskManager.RootTaskInfo getFocusedRootTaskInfo() throws RemoteException {
        return Services.activityManager.get().getFocusedRootTaskInfo();
    }

    public static void registerTaskStackListener(ITaskStackListener listener) throws RemoteException {
        Services.activityManager.get().registerTaskStackListener(listener);
    }

    public static void unregisterTaskStackListener(ITaskStackListener listener) throws RemoteException {
        Services.activityManager.get().unregisterTaskStackListener(listener);
    }

    public static List<ActivityManager.RunningTaskInfo> getTasks(int maxNum) throws RemoteException {
        if (Build.VERSION.SDK_INT >= 28) {
            return Services.activityManager.get().getTasks(maxNum);
        }
        return Services.activityManager.get().getTasks(maxNum, 0);
    }

    public static Intent registerReceiver(String callerPackage, String callingFeatureId, String receiverId, final BroadcastReceiver receiver, IntentFilter filter, String requiredPermission, int userId, int flags) throws RemoteException {
        IIntentReceiver.Stub stub;
        if (receiver != null) {
            stub = new IIntentReceiver.Stub() { // from class: rikka.hidden.compat.ActivityManagerApis.1
                public void performReceive(Intent intent, int resultCode, String data, Bundle extras, boolean ordered, boolean sticky, int sendingUser) throws RemoteException {
                    receiver.onReceive(null, intent);
                }
            };
        } else {
            stub = null;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Services.activityManager.get().registerReceiverWithFeature((IApplicationThread) null, callerPackage, callingFeatureId, receiverId, stub, filter, requiredPermission, userId, flags);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            return Services.activityManager.get().registerReceiverWithFeature((IApplicationThread) null, callerPackage, callingFeatureId, stub, filter, requiredPermission, userId, flags);
        }
        return Services.activityManager.get().registerReceiver((IApplicationThread) null, callerPackage, stub, filter, requiredPermission, userId, flags);
    }

    public static void unregisterReceiver(IIntentReceiver receiver) throws RemoteException {
        Services.activityManager.get().unregisterReceiver(receiver);
    }
}
