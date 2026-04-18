package rikka.hidden.compat;

import android.os.Build;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class DeviceIdleControllerApis {
    public static void addPowerSaveTempWhitelistApp(String name, long duration, int userId, int reasonCode, String reason) {
        if (Build.VERSION.SDK_INT >= 31) {
            Services.deviceIdleController.get().addPowerSaveTempWhitelistApp(name, duration, userId, reasonCode, reason);
        } else if (Build.VERSION.SDK_INT >= 30) {
            Services.deviceIdleController.get().addPowerSaveTempWhitelistApp(name, duration, userId, reason);
        }
    }
}
