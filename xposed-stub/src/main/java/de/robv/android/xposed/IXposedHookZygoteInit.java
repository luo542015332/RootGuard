package de.robv.android.xposed;

/**
 * Get notified when the Zygote process starts up.
 * Used by Xposed modules that need to hook into the Zygote initialization.
 */
interface IXposedHookZygoteInit extends IXposedMod {
    class StartupParam {
        public String modulePath;
        public boolean startsSystemServer;
    }
    
    void initZygote(StartupParam startupParam) throws Throwable;
}
