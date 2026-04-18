package de.robv.android.xposed;

import java.lang.reflect.Method;

public class XposedBridge {
    public static XC_MethodHook.Unhook hookMethod(Method hookMethod, XC_MethodHook callback) { return null; }
    public static void log(String text) {}
    public static void log(String text, Throwable t) {}
}
