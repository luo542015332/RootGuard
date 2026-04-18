package rikka.hidden.compat;

import android.app.IActivityManager;
import android.content.pm.ILauncherApps;
import android.content.pm.IPackageManager;
import android.hardware.display.IDisplayManager;
import android.os.Build;
import android.os.IBatteryPropertiesRegistrar;
import android.os.IBinder;
import android.os.IDeviceIdleController;
import android.os.IUserManager;
import android.permission.IPermissionManager;
import android.view.IWindowManager;
import com.android.internal.app.IAppOpsService;
import rikka.hidden.compat.util.SystemServiceBinder;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
class Services {
    protected static final SystemServiceBinder<IBatteryPropertiesRegistrar> batteryPropertiesRegistrar;
    protected static final SystemServiceBinder<IDeviceIdleController> deviceIdleController;
    protected static final SystemServiceBinder<IDisplayManager> displayManager;
    protected static final SystemServiceBinder<ILauncherApps> launcherApps;
    protected static final SystemServiceBinder<IPermissionManager> permissionManager;
    protected static final SystemServiceBinder<IWindowManager> windowManager;
    protected static final SystemServiceBinder<IAppOpsService> appOps = new SystemServiceBinder<>("appops", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda0
        @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
        public final Object create(IBinder iBinder) {
            IAppOpsService asInterface;
            asInterface = IAppOpsService.Stub.asInterface(iBinder);
            return asInterface;
        }
    });
    protected static final SystemServiceBinder<IActivityManager> activityManager = new SystemServiceBinder<>("activity", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda1
        @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
        public final Object create(IBinder iBinder) {
            IActivityManager asInterface;
            asInterface = IActivityManager.Stub.asInterface(iBinder);
            return asInterface;
        }
    });
    protected static final SystemServiceBinder<IUserManager> userManager = new SystemServiceBinder<>("user", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda2
        @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
        public final Object create(IBinder iBinder) {
            IUserManager asInterface;
            asInterface = IUserManager.Stub.asInterface(iBinder);
            return asInterface;
        }
    });
    protected static final SystemServiceBinder<IPackageManager> packageManager = new SystemServiceBinder<>("package", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda3
        @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
        public final Object create(IBinder iBinder) {
            IPackageManager asInterface;
            asInterface = IPackageManager.Stub.asInterface(iBinder);
            return asInterface;
        }
    });

    Services() {
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            permissionManager = new SystemServiceBinder<>("permissionmgr", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda4
                @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
                public final Object create(IBinder iBinder) {
                    IPermissionManager asInterface;
                    asInterface = IPermissionManager.Stub.asInterface(iBinder);
                    return asInterface;
                }
            });
        } else {
            permissionManager = null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            deviceIdleController = new SystemServiceBinder<>("deviceidle", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda5
                @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
                public final Object create(IBinder iBinder) {
                    IDeviceIdleController asInterface;
                    asInterface = IDeviceIdleController.Stub.asInterface(iBinder);
                    return asInterface;
                }
            });
        } else {
            deviceIdleController = null;
        }
        displayManager = new SystemServiceBinder<>("display", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda6
            @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
            public final Object create(IBinder iBinder) {
                IDisplayManager asInterface;
                asInterface = IDisplayManager.Stub.asInterface(iBinder);
                return asInterface;
            }
        });
        batteryPropertiesRegistrar = new SystemServiceBinder<>("batteryproperties", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda7
            @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
            public final Object create(IBinder iBinder) {
                IBatteryPropertiesRegistrar asInterface;
                asInterface = IBatteryPropertiesRegistrar.Stub.asInterface(iBinder);
                return asInterface;
            }
        });
        launcherApps = new SystemServiceBinder<>("launcherapps", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda8
            @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
            public final Object create(IBinder iBinder) {
                ILauncherApps asInterface;
                asInterface = ILauncherApps.Stub.asInterface(iBinder);
                return asInterface;
            }
        });
        windowManager = new SystemServiceBinder<>("window", new SystemServiceBinder.ServiceCreator() { // from class: rikka.hidden.compat.Services$$ExternalSyntheticLambda9
            @Override // rikka.hidden.compat.util.SystemServiceBinder.ServiceCreator
            public final Object create(IBinder iBinder) {
                IWindowManager asInterface;
                asInterface = IWindowManager.Stub.asInterface(iBinder);
                return asInterface;
            }
        });
    }
}
