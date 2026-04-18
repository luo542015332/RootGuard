package com.github.kyuubiran.ezxhelper.utils;

import com.github.kyuubiran.ezxhelper.init.InitFields;
import de.robv.android.xposed.XposedHelpers;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: ClassUtil.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001c\n\u0002\b\u0004\u001a\u001c\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a-\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0007\"\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\b\u001a/\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0007\"\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\b\u001a\u001e\u0010\n\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a \u0010\u000b\u001a\u00020\f*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a)\u0010\r\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u0007*\b\u0012\u0004\u0012\u00020\u00030\u00072\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u000e\u001a$\u0010\r\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u000f*\b\u0012\u0004\u0012\u00020\u00030\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a'\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00072\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0011\u0010\b\u001a\u001e\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a)\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00072\b\b\u0002\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0012\u0010\b\u001a \u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a)\u0010\u0013\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u0007*\b\u0012\u0004\u0012\u00020\u00030\u00072\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u000e\u001a$\u0010\u0013\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u000f*\b\u0012\u0004\u0012\u00020\u00030\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u0005¨\u0006\u0014"}, d2 = {"loadClass", "Ljava/lang/Class;", "clzName", "", "clzLoader", "Ljava/lang/ClassLoader;", "loadClassAny", "", "([Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;", "loadClassAnyOrNull", "loadClassOrNull", "isChildClassOf", "", "loadAllClasses", "([Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/lang/Class;", "", "", "loadClassAnyFromArray", "loadClassAnyOrFromList", "loadClassesIfExists", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class ClassUtilKt {
    public static /* synthetic */ Class loadClass$default(String str, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClass(str, classLoader);
    }

    public static final Class<?> loadClass(String clzName, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        if (StringsKt.isBlank(clzName)) {
            throw new IllegalArgumentException("Class name must not be null or empty!");
        }
        Class<?> loadClass = clzLoader.loadClass(clzName);
        Intrinsics.checkNotNullExpressionValue(loadClass, "clzLoader.loadClass(clzName)");
        return loadClass;
    }

    public static /* synthetic */ Class loadClassAny$default(String[] strArr, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassAny(strArr, classLoader);
    }

    public static final Class<?> loadClassAny(String[] clzName, ClassLoader clzLoader) {
        Class<?> cls;
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        int length = clzName.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                cls = null;
                break;
            }
            String it = clzName[i];
            cls = loadClassOrNull(it, clzLoader);
            if (cls != null) {
                break;
            }
            i++;
        }
        if (cls != null) {
            return cls;
        }
        throw new ClassNotFoundException();
    }

    public static /* synthetic */ Class loadClassAnyOrNull$default(String[] strArr, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassAnyOrNull(strArr, classLoader);
    }

    public static final Class<?> loadClassAnyOrNull(String[] clzName, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        for (String it : clzName) {
            Class<?> loadClassOrNull = loadClassOrNull(it, clzLoader);
            if (loadClassOrNull != null) {
                return loadClassOrNull;
            }
        }
        return null;
    }

    public static /* synthetic */ Class loadClassOrNull$default(String str, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassOrNull(str, classLoader);
    }

    public static final Class<?> loadClassOrNull(String clzName, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        if (StringsKt.isBlank(clzName)) {
            throw new IllegalArgumentException("Class name must not be null or empty!");
        }
        return XposedHelpers.findClassIfExists(clzName, clzLoader);
    }

    public static /* synthetic */ Class[] loadAllClasses$default(String[] strArr, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadAllClasses(strArr, classLoader);
    }

    public static final Class<?>[] loadAllClasses(String[] $this$loadAllClasses, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter($this$loadAllClasses, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        int length = $this$loadAllClasses.length;
        Class<?>[] clsArr = new Class[length];
        for (int i = 0; i < length; i++) {
            clsArr[i] = loadClass($this$loadAllClasses[i], clzLoader);
        }
        return clsArr;
    }

    public static /* synthetic */ List loadAllClasses$default(Iterable iterable, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadAllClasses((Iterable<String>) iterable, classLoader);
    }

    public static final List<Class<?>> loadAllClasses(Iterable<String> iterable, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            String it = (String) item$iv$iv;
            destination$iv$iv.add(loadClass(it, clzLoader));
        }
        return (List) destination$iv$iv;
    }

    public static /* synthetic */ Class[] loadClassesIfExists$default(String[] strArr, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassesIfExists(strArr, classLoader);
    }

    public static final Class<?>[] loadClassesIfExists(String[] $this$loadClassesIfExists, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter($this$loadClassesIfExists, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Collection destination$iv$iv = new ArrayList();
        for (String str : $this$loadClassesIfExists) {
            Class<?> loadClassOrNull = loadClassOrNull(str, clzLoader);
            if (loadClassOrNull != null) {
                destination$iv$iv.add(loadClassOrNull);
            }
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new Class[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Class[]) array;
    }

    public static /* synthetic */ List loadClassesIfExists$default(Iterable iterable, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassesIfExists((Iterable<String>) iterable, classLoader);
    }

    public static final List<Class<?>> loadClassesIfExists(Iterable<String> iterable, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv$iv : iterable) {
            String it = (String) element$iv$iv$iv;
            Class<?> loadClassOrNull = loadClassOrNull(it, clzLoader);
            if (loadClassOrNull != null) {
                destination$iv$iv.add(loadClassOrNull);
            }
        }
        return (List) destination$iv$iv;
    }

    public static /* synthetic */ Class loadClassAnyFromArray$default(String[] strArr, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassAnyFromArray(strArr, classLoader);
    }

    public static final Class<?> loadClassAnyFromArray(String[] $this$loadClassAny, ClassLoader clzLoader) {
        Class<?> cls;
        Intrinsics.checkNotNullParameter($this$loadClassAny, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        int length = $this$loadClassAny.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                cls = null;
                break;
            }
            String it = $this$loadClassAny[i];
            cls = loadClassOrNull(it, clzLoader);
            if (cls != null) {
                break;
            }
            i++;
        }
        if (cls != null) {
            return cls;
        }
        throw new ClassNotFoundException();
    }

    public static /* synthetic */ Class loadClassAny$default(Iterable iterable, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassAny((Iterable<String>) iterable, classLoader);
    }

    public static final Class<?> loadClassAny(Iterable<String> iterable, ClassLoader clzLoader) {
        Class<?> cls;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Iterator<String> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                cls = null;
                break;
            }
            String it2 = it.next();
            cls = loadClassOrNull(it2, clzLoader);
            if (cls != null) {
                break;
            }
        }
        if (cls != null) {
            return cls;
        }
        throw new ClassNotFoundException();
    }

    public static /* synthetic */ Class loadClassAnyOrFromList$default(String[] strArr, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassAnyOrFromList(strArr, classLoader);
    }

    public static final Class<?> loadClassAnyOrFromList(String[] $this$loadClassAnyOrNull, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter($this$loadClassAnyOrNull, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        for (String it : $this$loadClassAnyOrNull) {
            Class<?> loadClassOrNull = loadClassOrNull(it, clzLoader);
            if (loadClassOrNull != null) {
                return loadClassOrNull;
            }
        }
        return null;
    }

    public static /* synthetic */ Class loadClassAnyOrNull$default(Iterable iterable, ClassLoader classLoader, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return loadClassAnyOrNull((Iterable<String>) iterable, classLoader);
    }

    public static final Class<?> loadClassAnyOrNull(Iterable<String> iterable, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        for (String it : iterable) {
            Class<?> loadClassOrNull = loadClassOrNull(it, clzLoader);
            if (loadClassOrNull != null) {
                return loadClassOrNull;
            }
        }
        return null;
    }

    public static /* synthetic */ boolean isChildClassOf$default(Class cls, String str, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return isChildClassOf(cls, str, classLoader);
    }

    public static final boolean isChildClassOf(Class<?> cls, String clzName, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        return loadClass(clzName, clzLoader).isAssignableFrom(cls);
    }
}
