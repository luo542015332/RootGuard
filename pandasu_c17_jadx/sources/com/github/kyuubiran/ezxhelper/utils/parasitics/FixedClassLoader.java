package com.github.kyuubiran.ezxhelper.utils.parasitics;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FixedClassLoader.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;", "Ljava/lang/ClassLoader;", "mModuleClassLoader", "mHostClassLoader", "(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V", "loadClass", "Ljava/lang/Class;", "name", "", "resolve", "", "Companion", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class FixedClassLoader extends ClassLoader {
    private static final ClassLoader mBootstrap;
    private final ClassLoader mHostClassLoader;
    private final ClassLoader mModuleClassLoader;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedClassLoader(ClassLoader mModuleClassLoader, ClassLoader mHostClassLoader) {
        super(mBootstrap);
        Intrinsics.checkNotNullParameter(mModuleClassLoader, "mModuleClassLoader");
        Intrinsics.checkNotNullParameter(mHostClassLoader, "mHostClassLoader");
        this.mModuleClassLoader = mModuleClassLoader;
        this.mHostClassLoader = mHostClassLoader;
    }

    static {
        ClassLoader classLoader = ActivityHelper.class.getClassLoader();
        Intrinsics.checkNotNull(classLoader);
        mBootstrap = classLoader;
    }

    @Override // java.lang.ClassLoader
    protected Class<?> loadClass(String name, boolean resolve) {
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            Result.Companion companion = Result.INSTANCE;
            FixedClassLoader fixedClassLoader = this;
            Class<?> loadClass = mBootstrap.loadClass(name);
            Intrinsics.checkNotNullExpressionValue(loadClass, "mBootstrap.loadClass(name)");
            return loadClass;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m1013constructorimpl(ResultKt.createFailure(th));
            try {
                Result.Companion companion3 = Result.INSTANCE;
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                Result.m1013constructorimpl(ResultKt.createFailure(th2));
            }
            if (!Intrinsics.areEqual("androidx.lifecycle.ReportFragment", name)) {
                Result.m1013constructorimpl(Unit.INSTANCE);
                try {
                    Class<?> loadClass2 = this.mModuleClassLoader.loadClass(name);
                    Intrinsics.checkNotNullExpressionValue(loadClass2, "{\n            mModuleCla…loadClass(name)\n        }");
                    return loadClass2;
                } catch (Exception e) {
                    Class<?> loadClass3 = this.mHostClassLoader.loadClass(name);
                    Intrinsics.checkNotNullExpressionValue(loadClass3, "{\n            mHostClass…loadClass(name)\n        }");
                    return loadClass3;
                }
            }
            Class<?> loadClass4 = this.mHostClassLoader.loadClass(name);
            Intrinsics.checkNotNullExpressionValue(loadClass4, "mHostClassLoader.loadClass(name)");
            return loadClass4;
        }
    }
}
