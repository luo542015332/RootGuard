package com.github.kyuubiran.ezxhelper.utils.parasitics;

import android.content.ComponentName;
import android.content.Intent;
import com.github.kyuubiran.ezxhelper.init.InitFields;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: ActivityHelper.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J4\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nH\u0096\u0002¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;", "Ljava/lang/reflect/InvocationHandler;", "mOrigin", "", "(Ljava/lang/Object;)V", "invoke", "proxy", "method", "Ljava/lang/reflect/Method;", "args", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class IActivityManagerHandler implements InvocationHandler {
    private final Object mOrigin;

    public IActivityManagerHandler(Object mOrigin) {
        Intrinsics.checkNotNullParameter(mOrigin, "mOrigin");
        this.mOrigin = mOrigin;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) {
        int index$iv;
        Intrinsics.checkNotNull(method);
        if (Intrinsics.areEqual("startActivity", method.getName())) {
            if (args == null) {
                index$iv = -1;
            } else {
                index$iv = 0;
                int length = args.length;
                while (true) {
                    if (index$iv < length) {
                        Object it = args[index$iv];
                        if (it instanceof Intent) {
                            break;
                        }
                        index$iv++;
                    } else {
                        index$iv = -1;
                        break;
                    }
                }
            }
            int index = index$iv;
            if (index != -1 && args != null) {
                Object obj = args[index];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.content.Intent");
                Intent raw = (Intent) obj;
                ComponentName component = raw.getComponent();
                if (component != null && Intrinsics.areEqual(InitFields.INSTANCE.getAppContext().getPackageName(), component.getPackageName())) {
                    String className = component.getClassName();
                    Intrinsics.checkNotNullExpressionValue(className, "component.className");
                    if (StringsKt.startsWith$default(className, ActivityProxyManager.INSTANCE.getMODULE_PACKAGE_NAME_ID(), false, 2, (Object) null)) {
                        Intent wrapper = new Intent();
                        wrapper.setClassName(component.getPackageName(), ActivityProxyManager.INSTANCE.getHOST_ACTIVITY_PROXY_NAME());
                        wrapper.putExtra(ActivityProxyManager.INSTANCE.getACTIVITY_PROXY_INTENT(), raw);
                        args[index] = wrapper;
                    }
                }
            }
        }
        try {
            return args != null ? method.invoke(this.mOrigin, Arrays.copyOf(args, args.length)) : method.invoke(this.mOrigin, new Object[0]);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            Intrinsics.checkNotNullExpressionValue(targetException, "e.targetException");
            throw targetException;
        }
    }
}
