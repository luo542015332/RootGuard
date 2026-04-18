package com.rootguard.app.lspoed.hook;

import android.os.Binder;
import android.os.Build;
import android.util.Log;
import com.github.kyuubiran.ezxhelper.utils.HookUtilsKt;
import com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PmsHookTarget36.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\u000b\u001a\u0002H\f\"\u0004\b\u0000\u0010\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\f0\u000eH\u0082\b¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/rootguard/app/lspoed/hook/PmsHookTarget36;", "Lcom/rootguard/app/lspoed/hook/PmsHookTargetBase;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "getPackagesForUidMethod", "Ljava/lang/reflect/Method;", "getGetPackagesForUidMethod", "()Ljava/lang/reflect/Method;", "getPackagesForUidMethod$delegate", "Lkotlin/Lazy;", "binderLocalScope", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "load", "", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class PmsHookTarget36 extends PmsHookTargetBase {

    /* renamed from: getPackagesForUidMethod$delegate, reason: from kotlin metadata */
    private final Lazy getPackagesForUidMethod;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PmsHookTarget36(HMAService service) {
        super(service);
        Intrinsics.checkNotNullParameter(service, "service");
        this.getPackagesForUidMethod = LazyKt.lazy(new Function0<Method>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget36$getPackagesForUidMethod$2
            public final Method invoke() {
                return MethodUtilsKt.findMethod$default("com.android.server.pm.Computer", (ClassLoader) null, false, new Function1<Method, Boolean>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget36$getPackagesForUidMethod$2.1
                    public final Boolean invoke(Method $this$findMethod) {
                        Intrinsics.checkNotNullParameter($this$findMethod, "$this$findMethod");
                        return Boolean.valueOf(Intrinsics.areEqual($this$findMethod.getName(), "getPackagesForUid"));
                    }
                }, 6, (Object) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Method getGetPackagesForUidMethod() {
        return (Method) this.getPackagesForUidMethod.getValue();
    }

    @Override // com.rootguard.app.lspoed.hook.PmsHookTargetBase, com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        Log.i("PandaSU-PmsHook36", "Loading Android 16 hooks (SDK " + Build.VERSION.SDK_INT + ")");
        XposedBridge.log("[PandaSU] PmsHookTarget36.load() called");
        try {
            Log.i("PandaSU-PmsHook36", "Looking for AppsFilterImpl.shouldFilterApplication...");
            XposedBridge.log("[PandaSU] Looking for AppsFilterImpl.shouldFilterApplication...");
            Method method = MethodUtilsKt.findMethod$default("com.android.server.pm.AppsFilterImpl", (ClassLoader) null, true, new Function1<Method, Boolean>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget36$load$method$1
                public final Boolean invoke(Method $this$findMethod) {
                    Intrinsics.checkNotNullParameter($this$findMethod, "$this$findMethod");
                    return Boolean.valueOf(Intrinsics.areEqual($this$findMethod.getName(), "shouldFilterApplication"));
                }
            }, 2, (Object) null);
            Class<?>[] parameterTypes = method.getParameterTypes();
            Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
            Log.i("PandaSU-PmsHook36", "Found shouldFilterApplication: " + ArraysKt.joinToString$default(parameterTypes, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1<Class<?>, CharSequence>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget36$load$1
                public final CharSequence invoke(Class<?> cls) {
                    String simpleName = cls.getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                    return simpleName;
                }
            }, 31, (Object) null));
            Class<?>[] parameterTypes2 = method.getParameterTypes();
            Intrinsics.checkNotNullExpressionValue(parameterTypes2, "getParameterTypes(...)");
            XposedBridge.log("[PandaSU] Found shouldFilterApplication: " + ArraysKt.joinToString$default(parameterTypes2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1<Class<?>, CharSequence>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget36$load$2
                public final CharSequence invoke(Class<?> cls) {
                    String simpleName = cls.getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                    return simpleName;
                }
            }, 31, (Object) null));
            getHooks().add(HookUtilsKt.hookBefore(method, new Function1<XC_MethodHook.MethodHookParam, Unit>() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget36$load$3
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                    invoke((XC_MethodHook.MethodHookParam) p1);
                    return Unit.INSTANCE;
                }

                public final void invoke(XC_MethodHook.MethodHookParam param) {
                    Object obj;
                    Method getPackagesForUidMethod;
                    String str;
                    Intrinsics.checkNotNullParameter(param, "param");
                    PmsHookTarget36 $this$invoke_u24lambda_u242 = PmsHookTarget36.this;
                    try {
                        Result.Companion companion = Result.Companion;
                        Object obj2 = param.args[1];
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
                        int callingUid = ((Integer) obj2).intValue();
                        switch (callingUid) {
                            case 0:
                            case 1000:
                                return;
                            default:
                                String targetApp = $this$invoke_u24lambda_u242.getPackageNameFromPackageState(param.args[3]);
                                if (targetApp == null) {
                                    Log.d("PandaSU-PmsHook36", "Failed to get target package name");
                                    return;
                                }
                                Object snapshot = param.args[0];
                                long identity$iv = Binder.clearCallingIdentity();
                                getPackagesForUidMethod = $this$invoke_u24lambda_u242.getGetPackagesForUidMethod();
                                String[] callingApps = (String[]) getPackagesForUidMethod.invoke(snapshot, Integer.valueOf(callingUid));
                                Binder.restoreCallingIdentity(identity$iv);
                                if (callingApps == null) {
                                    return;
                                }
                                int length = callingApps.length;
                                int i = 0;
                                while (true) {
                                    if (i < length) {
                                        str = callingApps[i];
                                        if (!$this$invoke_u24lambda_u242.getService().shouldHide(str, targetApp)) {
                                            i++;
                                        }
                                    } else {
                                        str = null;
                                    }
                                }
                                String caller = str;
                                if (caller != null) {
                                    param.setResult(true);
                                    Log.i("PandaSU-PmsHook36", "Filtered: " + caller + " -> " + targetApp);
                                    XposedBridge.log("[PandaSU] Filtered: " + caller + " -> " + targetApp);
                                }
                                obj = Result.constructor-impl(Unit.INSTANCE);
                                break;
                        }
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.Companion;
                        obj = Result.constructor-impl(ResultKt.createFailure(th));
                    }
                    Throwable it = Result.exceptionOrNull-impl(obj);
                    if (it != null) {
                        Log.e("PandaSU-PmsHook36", "Error in shouldFilterApplication hook", it);
                        XposedBridge.log("[PandaSU] Error in shouldFilterApplication: " + it.getMessage());
                    }
                }
            }));
            Log.i("PandaSU-PmsHook36", "Hooked shouldFilterApplication successfully");
            XposedBridge.log("[PandaSU] Hooked shouldFilterApplication");
        } catch (Throwable e) {
            Log.e("PandaSU-PmsHook36", "Failed to hook shouldFilterApplication: " + e.getMessage());
            XposedBridge.log("[PandaSU] Failed to hook shouldFilterApplication: " + e.getMessage());
        }
        Log.i("PandaSU-PmsHook36", "Android 16 hooks loaded");
        super.load();
    }

    private final <T> T binderLocalScope(Function0<? extends T> block) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        T t = (T) block.invoke();
        Binder.restoreCallingIdentity(clearCallingIdentity);
        return t;
    }
}
