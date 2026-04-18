package de.robv.android.xposed.callbacks;

import de.robv.android.xposed.XC_MethodHook;

public abstract class XC_MethodReplacement extends XC_MethodHook {
    public XC_MethodReplacement() {}
    public XC_MethodReplacement(int priority) { super(priority); }
    protected abstract Object replaceHookedMethod(MethodHookParam param) throws Throwable;
    @Override
    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
        param.setResult(replaceHookedMethod(param));
    }
    public static XC_MethodReplacement returnConstant(Object value) { return null; }
}
