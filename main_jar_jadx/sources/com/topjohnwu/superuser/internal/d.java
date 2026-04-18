package com.topjohnwu.superuser.internal;

import android.content.res.Resources;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class d extends Resources {
    public d(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        Method declaredMethod = Resources.class.getDeclaredMethod("getImpl", null);
        declaredMethod.setAccessible(true);
        Method declaredMethod2 = Resources.class.getDeclaredMethod("setImpl", declaredMethod.getReturnType());
        declaredMethod2.setAccessible(true);
        declaredMethod2.invoke(this, declaredMethod.invoke(resources, null));
    }

    @Override // android.content.res.Resources
    public final boolean getBoolean(int i) {
        try {
            return super.getBoolean(i);
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }
}
