package de.robv.android.xposed;

import java.lang.reflect.Method;

public abstract class XC_MethodHook {
    public static class MethodHookParam {
        public Method method;
        public Object thisObject;
        public Object[] args;
        private Object result;
        private boolean returnEarly;
        public MethodHookParam() {}
        public Object getResult() { return result; }
        public void setResult(Object result) { this.result = result; this.returnEarly = true; }
        public Throwable getThrowable() { return (Throwable) result; }
        public void setThrowable(Throwable throwable) { this.result = throwable; this.returnEarly = true; }
        public boolean isReturnEarly() { return returnEarly; }
    }

    public class Unhook {
        private final Method hookMethod;
        public Unhook(Method hookMethod) { this.hookMethod = hookMethod; }
        public Method getHookMethod() { return hookMethod; }
        public void unhook() {}
    }

    public XC_MethodHook() {}
    public XC_MethodHook(int priority) {}
    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {}
    protected void afterHookedMethod(MethodHookParam param) throws Throwable {}
}
