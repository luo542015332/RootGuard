package com.rootguard.app.lspoed.hook;

import android.util.Log;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: PmsHookTarget33.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002J'\u0010\b\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/rootguard/app/lspoed/hook/PmsHookTarget33;", "Lcom/rootguard/app/lspoed/hook/PmsHookTargetBase;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "load", "", "tryHookAlternativeClasses", "tryHookFilterMethods", "clazz", "Ljava/lang/Class;", "methods", "", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public class PmsHookTarget33 extends PmsHookTargetBase {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PmsHookTarget33(HMAService service) {
        super(service);
        Intrinsics.checkNotNullParameter(service, "service");
    }

    @Override // com.rootguard.app.lspoed.hook.PmsHookTargetBase, com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        Method method;
        Log.i("PandaSU-PmsHook33", "Loading Android 13+ hooks");
        XposedBridge.log("[PandaSU] PmsHookTarget33.load() called");
        try {
            String className = "com.android.server.pm.AppsFilterImpl";
            Log.i("PandaSU-PmsHook33", "Looking for class: com.android.server.pm.AppsFilterImpl");
            try {
                Class clazz = XposedHelpers.findClass("com.android.server.pm.AppsFilterImpl", getService().getClass().getClassLoader());
                Method[] methods = clazz.getDeclaredMethods();
                Log.i("PandaSU-PmsHook33", "AppsFilterImpl has " + methods.length + " declared methods");
                Intrinsics.checkNotNull(methods);
                Method[] methodArr = methods;
                Collection destination$iv$iv = new ArrayList();
                int length = methodArr.length;
                int i = 0;
                while (i < length) {
                    Method method2 = methodArr[i];
                    String name = method2.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String className2 = className;
                    Method[] methodArr2 = methodArr;
                    boolean z = true;
                    if (!StringsKt.contains(name, "filter", true)) {
                        String name2 = method2.getName();
                        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                        if (!StringsKt.contains(name2, "app", true)) {
                            String name3 = method2.getName();
                            Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                            if (!StringsKt.contains(name3, "hide", true)) {
                                String name4 = method2.getName();
                                Intrinsics.checkNotNullExpressionValue(name4, "getName(...)");
                                if (!StringsKt.contains(name4, "show", true)) {
                                    z = false;
                                }
                            }
                        }
                    }
                    if (z) {
                        destination$iv$iv.add(method2);
                    }
                    i++;
                    methodArr = methodArr2;
                    className = className2;
                }
                Iterable $this$forEach$iv = (List) destination$iv$iv;
                for (Object element$iv : $this$forEach$iv) {
                    Method m = (Method) element$iv;
                    String name5 = m.getName();
                    Class<?>[] parameterTypes = m.getParameterTypes();
                    Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                    Log.i("PandaSU-PmsHook33", "  Relevant method: " + name5 + " - " + ArraysKt.joinToString$default(parameterTypes, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1<Class<?>, CharSequence>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget33$load$2$1
                        public final CharSequence invoke(Class<?> cls) {
                            String simpleName = cls.getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                            return simpleName;
                        }
                    }, 31, (Object) null));
                }
                int length2 = methods.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length2) {
                        method = methods[i2];
                        if (Intrinsics.areEqual(method.getName(), "shouldFilterApplication")) {
                            break;
                        } else {
                            i2++;
                        }
                    } else {
                        method = null;
                        break;
                    }
                }
                Method method3 = method;
                if (method3 == null) {
                    Log.e("PandaSU-PmsHook33", "shouldFilterApplication not found in AppsFilterImpl");
                    Intrinsics.checkNotNull(clazz);
                    tryHookFilterMethods(clazz, methods);
                    return;
                }
                Log.i("PandaSU-PmsHook33", "Found shouldFilterApplication: " + ArraysKt.contentDeepToString(method3.getParameterTypes()));
                XC_MethodHook.Unhook unhook = XposedBridge.hookMethod(method3, new XC_MethodHook() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget33$load$unhook$1
                    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
                        String str;
                        Intrinsics.checkNotNullParameter(param, "param");
                        try {
                            Log.d("PandaSU-PmsHook33", "shouldFilterApplication called with " + param.args.length + " args");
                            Object[] objArr = param.args;
                            Intrinsics.checkNotNullExpressionValue(objArr, "args");
                            int i3 = 0;
                            int length3 = objArr.length;
                            int i4 = 0;
                            while (true) {
                                r6 = null;
                                String str2 = null;
                                if (i4 >= length3) {
                                    break;
                                }
                                Object obj = objArr[i4];
                                int i5 = i3 + 1;
                                if (obj != null) {
                                    Intrinsics.checkNotNull(obj);
                                    Class<?> cls = obj.getClass();
                                    if (cls != null) {
                                        str2 = cls.getSimpleName();
                                    }
                                }
                                if (str2 == null) {
                                    str2 = "null";
                                } else {
                                    Intrinsics.checkNotNull(str2);
                                }
                                Log.d("PandaSU-PmsHook33", "  arg[" + i3 + "]: " + str2 + " = " + obj);
                                i4++;
                                i3 = i5;
                            }
                            Object obj2 = param.args[1];
                            Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                            if (num == null) {
                                return;
                            }
                            int intValue = num.intValue();
                            switch (intValue) {
                                case 0:
                                case 1000:
                                    return;
                                default:
                                    String packageNameFromSettings = PmsHookTarget33.this.getPackageNameFromSettings(param.args[3]);
                                    if (packageNameFromSettings == null) {
                                        Log.d("PandaSU-PmsHook33", "Could not get target package name");
                                        return;
                                    }
                                    String[] packagesForUid = PmsHookTarget33.this.getPackagesForUid(intValue);
                                    if (packagesForUid != null && (str = (String) ArraysKt.firstOrNull(packagesForUid)) != null) {
                                        Log.d("PandaSU-PmsHook33", "Check hide: caller=" + str + ", target=" + packageNameFromSettings);
                                        if (PmsHookTarget33.this.getService().shouldHide(str, packageNameFromSettings)) {
                                            param.setResult(true);
                                            Log.i("PandaSU-PmsHook33", "Filtered: " + str + " -> " + packageNameFromSettings);
                                            return;
                                        }
                                        return;
                                    }
                                    PmsHookTarget33$load$unhook$1 pmsHookTarget33$load$unhook$1 = this;
                                    Log.d("PandaSU-PmsHook33", "Could not get caller package for uid: " + intValue);
                                    return;
                            }
                        } catch (Throwable th) {
                            Log.e("PandaSU-PmsHook33", "Error in hook", th);
                        }
                    }
                });
                List<XC_MethodHook.Unhook> hooks = getHooks();
                Intrinsics.checkNotNull(unhook);
                hooks.add(unhook);
                Log.i("PandaSU-PmsHook33", "shouldFilterApplication hooked successfully");
            } catch (Throwable e) {
                String className3 = e.getMessage();
                Log.e("PandaSU-PmsHook33", "AppsFilterImpl class not found: " + className3);
                XposedBridge.log("[PandaSU] AppsFilterImpl not found, trying alternatives");
                tryHookAlternativeClasses();
            }
        } catch (Throwable e2) {
            Log.e("PandaSU-PmsHook33", "Failed to load Android 13+ hooks", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void tryHookFilterMethods(java.lang.Class<?> r24, java.lang.reflect.Method[] r25) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.lspoed.hook.PmsHookTarget33.tryHookFilterMethods(java.lang.Class, java.lang.reflect.Method[]):void");
    }

    private final void tryHookAlternativeClasses() {
        Log.i("PandaSU-PmsHook33", "Trying alternative classes...");
        try {
            Class pmsClass = XposedHelpers.findClass("com.android.server.pm.PackageManagerServiceUtils", getService().getClass().getClassLoader());
            Log.i("PandaSU-PmsHook33", "Found PackageManagerServiceUtils");
            Method[] methods = pmsClass.getDeclaredMethods();
            Intrinsics.checkNotNull(methods);
            Collection destination$iv$iv = new ArrayList();
            for (Method method : methods) {
                String name = method.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.contains(name, "filter", true)) {
                    destination$iv$iv.add(method);
                }
            }
            Iterable $this$forEach$iv = (List) destination$iv$iv;
            for (Object element$iv : $this$forEach$iv) {
                Method m = (Method) element$iv;
                String name2 = m.getName();
                Class<?>[] parameterTypes = m.getParameterTypes();
                Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                Log.i("PandaSU-PmsHook33", "  Method: " + name2 + " - " + ArraysKt.joinToString$default(parameterTypes, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1<Class<?>, CharSequence>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget33$tryHookAlternativeClasses$2$1
                    public final CharSequence invoke(Class<?> cls) {
                        String simpleName = cls.getSimpleName();
                        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                        return simpleName;
                    }
                }, 31, (Object) null));
            }
        } catch (Throwable e) {
            Log.d("PandaSU-PmsHook33", "PackageManagerServiceUtils not found: " + e.getMessage());
        }
    }
}
