package rikka.hidden.compat;

import android.os.BatteryProperty;
import android.os.IBatteryPropertiesRegistrar;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class BatteryPropertiesRegistrarApis {
    private static long queryProperty(int id) throws RemoteException {
        BatteryProperty prop = new BatteryProperty();
        IBatteryPropertiesRegistrar batteryPropertiesRegistrar = Services.batteryPropertiesRegistrar.get();
        if (batteryPropertiesRegistrar != null && batteryPropertiesRegistrar.getProperty(id, prop) == 0) {
            long ret = prop.getLong();
            return ret;
        }
        return Long.MIN_VALUE;
    }

    public static int getIntProperty(int id) throws RemoteException {
        long value = queryProperty(id);
        if (value == Long.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        return (int) value;
    }

    public static long getLongProperty(int id) throws RemoteException {
        return queryProperty(id);
    }

    public static void scheduleUpdate() throws RemoteException {
        Services.batteryPropertiesRegistrar.get().scheduleUpdate();
    }
}
