package de.robv.android.xposed;
import de.robv.android.xposed.callbacks.XCallback;
public class XC_LoadPackage extends XCallback {
    public static class LoadPackageParam extends Param {
        public String packageName;
        public String processName;
        public ClassLoader classLoader;
        public boolean isFirstApplication;
    }
}
