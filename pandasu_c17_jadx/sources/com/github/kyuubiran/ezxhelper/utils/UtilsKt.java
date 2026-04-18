package com.github.kyuubiran.ezxhelper.utils;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import dalvik.system.BaseDexClassLoader;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Utils.kt */
@Metadata(d1 = {"\u0000d\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001a\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007H\u0086\bø\u0001\u0000\u001a\u001a\u0010\b\u001a\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007H\u0086\bø\u0001\u0000\u001a\u001a\u0010\t\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007H\u0086\bø\u0001\u0000\u001a)\u0010\n\u001a\u0004\u0018\u0001H\u000b\"\u0004\b\u0000\u0010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000b0\u0007H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\f\u001a)\u0010\r\u001a\u0004\u0018\u0001H\u000b\"\u0004\b\u0000\u0010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000b0\u0007H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\f\u001aN\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\bø\u0001\u0000\u001a6\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00160\u0015\"\u0004\b\u0000\u0010\u0016*\b\u0012\u0004\u0012\u0002H\u00160\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\bø\u0001\u0000\u001aN\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\bø\u0001\u0000\u001a6\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00160\u0018\"\u0004\b\u0000\u0010\u0016*\b\u0012\u0004\u0012\u0002H\u00160\u00182\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\bø\u0001\u0000\u001a(\u0010\u0019\u001a\u0004\u0018\u00010\u001a*\u00020\u001b2\u0014\b\u0006\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u0017H\u0086\bø\u0001\u0000\u001a&\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e*\u00020\u001b2\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u0017\u001aB\u0010 \u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\bø\u0001\u0000\u001a0\u0010!\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0016*\b\u0012\u0004\u0012\u0002H\u00160\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\bø\u0001\u0000\u001aB\u0010!\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u0011*\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00050\u0013H\u0086\bø\u0001\u0000\u001a0\u0010!\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0016*\b\u0012\u0004\u0012\u0002H\u00160\u00182\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00050\u0017H\u0086\bø\u0001\u0000\u001a-\u0010\"\u001a\u00020\u0005*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030$0#2\u0012\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00020&0#\"\u00020&¢\u0006\u0002\u0010'\u001a-\u0010\"\u001a\u00020\u0005*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030$0\u001e2\u0012\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00020&0#\"\u00020&¢\u0006\u0002\u0010(\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, d2 = {"restartHostApp", "", "activity", "Landroid/app/Activity;", "tryOrFalse", "", "block", "Lkotlin/Function0;", "tryOrLog", "tryOrLogFalse", "tryOrLogNull", "T", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "tryOrNull", "applyRemoveIf", "", "K", "V", "predicate", "Lkotlin/Function2;", "applyRetainIf", "", "E", "Lkotlin/Function1;", "", "findDexClassLoader", "Ldalvik/system/BaseDexClassLoader;", "Ljava/lang/ClassLoader;", "delegator", "getAllClassesList", "", "", "removeIf", "retainIf", "sameAs", "", "Ljava/lang/Class;", "other", "", "([Ljava/lang/Class;[Ljava/lang/Object;)Z", "(Ljava/util/List;[Ljava/lang/Object;)Z", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class UtilsKt {
    public static final boolean tryOrFalse(Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            block.invoke();
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static final void tryOrLog(Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            block.invoke();
        } catch (Throwable thr) {
            Log.e$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
        }
    }

    public static final boolean tryOrLogFalse(Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            block.invoke();
            return true;
        } catch (Throwable thr) {
            Log.e$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
            return false;
        }
    }

    public static final <T> T tryOrNull(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke();
        } catch (Throwable th) {
            return null;
        }
    }

    public static final <T> T tryOrLogNull(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke();
        } catch (Throwable thr) {
            Log.e$default(Log.INSTANCE, thr, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> void retainIf(List<E> list, Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        List<E> $this$filter$iv = list;
        ArrayList arrayList = new ArrayList();
        for (Object element$iv$iv : $this$filter$iv) {
            if (predicate.invoke(element$iv$iv).booleanValue()) {
                arrayList.add(element$iv$iv);
            }
        }
        ArrayList destination$iv$iv = arrayList;
        ArrayList $this$forEach$iv = destination$iv$iv;
        for (Object element$iv : $this$forEach$iv) {
            list.remove(element$iv);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> List<E> applyRetainIf(List<E> list, Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        List<E> $this$filter$iv$iv = list;
        ArrayList arrayList = new ArrayList();
        for (Object element$iv$iv$iv : $this$filter$iv$iv) {
            if (predicate.invoke(element$iv$iv$iv).booleanValue()) {
                arrayList.add(element$iv$iv$iv);
            }
        }
        ArrayList destination$iv$iv$iv = arrayList;
        ArrayList $this$forEach$iv$iv = destination$iv$iv$iv;
        for (Object element$iv$iv : $this$forEach$iv$iv) {
            list.remove(element$iv$iv);
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> void retainIf(Set<E> set, Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Set<E> $this$filter$iv = set;
        ArrayList arrayList = new ArrayList();
        for (Object element$iv$iv : $this$filter$iv) {
            if (predicate.invoke(element$iv$iv).booleanValue()) {
                arrayList.add(element$iv$iv);
            }
        }
        ArrayList destination$iv$iv = arrayList;
        ArrayList $this$forEach$iv = destination$iv$iv;
        for (Object element$iv : $this$forEach$iv) {
            set.remove(element$iv);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> Set<E> applyRetainIf(Set<E> set, Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Set<E> $this$filter$iv$iv = set;
        ArrayList arrayList = new ArrayList();
        for (Object element$iv$iv$iv : $this$filter$iv$iv) {
            if (predicate.invoke(element$iv$iv$iv).booleanValue()) {
                arrayList.add(element$iv$iv$iv);
            }
        }
        ArrayList destination$iv$iv$iv = arrayList;
        ArrayList $this$forEach$iv$iv = destination$iv$iv$iv;
        for (Object element$iv$iv : $this$forEach$iv$iv) {
            set.remove(element$iv$iv);
        }
        return set;
    }

    public static final <K, V> void retainIf(Map<K, V> map, Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Map destination$iv$iv = new LinkedHashMap();
        for (Map.Entry element$iv$iv : map.entrySet()) {
            Object key = element$iv$iv.getKey();
            Object value = element$iv$iv.getValue();
            if (predicate.invoke(key, value).booleanValue()) {
                destination$iv$iv.put(element$iv$iv.getKey(), element$iv$iv.getValue());
            }
        }
        for (Map.Entry element$iv : destination$iv$iv.entrySet()) {
            map.remove(element$iv.getKey());
        }
    }

    public static final <K, V> Map<K, V> applyRetainIf(Map<K, V> map, Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Map destination$iv$iv$iv = new LinkedHashMap();
        for (Map.Entry element$iv$iv$iv : map.entrySet()) {
            Object key$iv = element$iv$iv$iv.getKey();
            Object value$iv = element$iv$iv$iv.getValue();
            if (predicate.invoke(key$iv, value$iv).booleanValue()) {
                destination$iv$iv$iv.put(element$iv$iv$iv.getKey(), element$iv$iv$iv.getValue());
            }
        }
        for (Map.Entry element$iv$iv : destination$iv$iv$iv.entrySet()) {
            map.remove(element$iv$iv.getKey());
        }
        return map;
    }

    public static final <K, V> void removeIf(Map<K, V> map, Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Map destination$iv$iv = new LinkedHashMap();
        for (Map.Entry element$iv$iv : map.entrySet()) {
            Object key = element$iv$iv.getKey();
            Object value = element$iv$iv.getValue();
            if (predicate.invoke(key, value).booleanValue()) {
                destination$iv$iv.put(element$iv$iv.getKey(), element$iv$iv.getValue());
            }
        }
        for (Map.Entry element$iv : destination$iv$iv.entrySet()) {
            map.remove(element$iv.getKey());
        }
    }

    public static final <K, V> Map<K, V> applyRemoveIf(Map<K, V> map, Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Map destination$iv$iv$iv = new LinkedHashMap();
        for (Map.Entry element$iv$iv$iv : map.entrySet()) {
            Object key$iv = element$iv$iv$iv.getKey();
            Object value$iv = element$iv$iv$iv.getValue();
            if (predicate.invoke(key$iv, value$iv).booleanValue()) {
                destination$iv$iv$iv.put(element$iv$iv$iv.getKey(), element$iv$iv$iv.getValue());
            }
        }
        for (Map.Entry element$iv$iv : destination$iv$iv$iv.entrySet()) {
            map.remove(element$iv$iv.getKey());
        }
        return map;
    }

    public static /* synthetic */ BaseDexClassLoader findDexClassLoader$default(ClassLoader $this$findDexClassLoader_u24default, Function1 delegator, int i, Object obj) {
        if ((i & 1) != 0) {
            Function1 delegator2 = new Function1<BaseDexClassLoader, BaseDexClassLoader>() { // from class: com.github.kyuubiran.ezxhelper.utils.UtilsKt$findDexClassLoader$1
                @Override // kotlin.jvm.functions.Function1
                public final BaseDexClassLoader invoke(BaseDexClassLoader x) {
                    Intrinsics.checkNotNullParameter(x, "x");
                    return x;
                }
            };
            delegator = delegator2;
        }
        Intrinsics.checkNotNullParameter($this$findDexClassLoader_u24default, "<this>");
        Intrinsics.checkNotNullParameter(delegator, "delegator");
        ClassLoader classLoader = $this$findDexClassLoader_u24default;
        while (!(classLoader instanceof BaseDexClassLoader)) {
            if (classLoader.getParent() == null) {
                return null;
            }
            ClassLoader parent = classLoader.getParent();
            Intrinsics.checkNotNullExpressionValue(parent, "classLoader.parent");
            classLoader = parent;
        }
        return (BaseDexClassLoader) delegator.invoke(classLoader);
    }

    public static final BaseDexClassLoader findDexClassLoader(ClassLoader $this$findDexClassLoader, Function1<? super BaseDexClassLoader, ? extends BaseDexClassLoader> delegator) {
        Intrinsics.checkNotNullParameter($this$findDexClassLoader, "<this>");
        Intrinsics.checkNotNullParameter(delegator, "delegator");
        ClassLoader classLoader = $this$findDexClassLoader;
        while (!(classLoader instanceof BaseDexClassLoader)) {
            if (classLoader.getParent() == null) {
                return null;
            }
            ClassLoader parent = classLoader.getParent();
            Intrinsics.checkNotNullExpressionValue(parent, "classLoader.parent");
            classLoader = parent;
        }
        return delegator.invoke(classLoader);
    }

    public static /* synthetic */ List getAllClassesList$default(ClassLoader classLoader, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<BaseDexClassLoader, BaseDexClassLoader>() { // from class: com.github.kyuubiran.ezxhelper.utils.UtilsKt$getAllClassesList$1
                @Override // kotlin.jvm.functions.Function1
                public final BaseDexClassLoader invoke(BaseDexClassLoader loader) {
                    Intrinsics.checkNotNullParameter(loader, "loader");
                    return loader;
                }
            };
        }
        return getAllClassesList(classLoader, function1);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<java.lang.String> getAllClassesList(java.lang.ClassLoader r16, kotlin.jvm.functions.Function1<? super dalvik.system.BaseDexClassLoader, ? extends dalvik.system.BaseDexClassLoader> r17) {
        /*
            r0 = r17
            java.lang.String r1 = "<this>"
            r2 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            java.lang.String r1 = "delegator"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r1 = r16
            r3 = 0
            r4 = r1
        L12:
            boolean r5 = r4 instanceof dalvik.system.BaseDexClassLoader
            r6 = 0
            if (r5 != 0) goto L2a
            java.lang.ClassLoader r5 = r4.getParent()
            if (r5 == 0) goto L28
            java.lang.ClassLoader r5 = r4.getParent()
            java.lang.String r6 = "classLoader.parent"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            r4 = r5
            goto L12
        L28:
            r5 = r6
            goto L30
        L2a:
            java.lang.Object r5 = r0.invoke(r4)
            dalvik.system.BaseDexClassLoader r5 = (dalvik.system.BaseDexClassLoader) r5
        L30:
            if (r5 == 0) goto L92
            java.lang.String r1 = "pathList"
            r3 = 2
            java.lang.Object r1 = com.github.kyuubiran.ezxhelper.utils.FieldUtilsKt.getObjectOrNull$default(r5, r1, r6, r3, r6)
            if (r1 == 0) goto L92
        L3c:
            java.lang.String r4 = "dexElements"
            java.lang.Object r1 = com.github.kyuubiran.ezxhelper.utils.FieldUtilsKt.getObjectOrNullAs$default(r1, r4, r6, r3, r6)
            java.lang.Object[] r1 = (java.lang.Object[]) r1
            if (r1 == 0) goto L92
        L48:
            r4 = 0
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Collection r5 = (java.util.Collection) r5
            r7 = r1
            r8 = 0
            int r9 = r7.length
            r10 = 0
            r11 = r10
        L55:
            if (r11 >= r9) goto L8c
            r12 = r7[r11]
            r13 = r12
            r14 = 0
            java.lang.String r15 = "dexFile"
            java.lang.Object r15 = com.github.kyuubiran.ezxhelper.utils.FieldUtilsKt.getObjectOrNull$default(r13, r15, r6, r3, r6)
            if (r15 == 0) goto L7b
            java.lang.String r3 = "entries"
            java.lang.Object[] r6 = new java.lang.Object[r10]
            java.lang.Object r3 = com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt.invokeMethodAutoAs(r15, r3, r6)
            java.util.Enumeration r3 = (java.util.Enumeration) r3
            if (r3 == 0) goto L7b
            java.util.ArrayList r3 = java.util.Collections.list(r3)
            java.lang.String r6 = "list(this)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r6)
            java.util.List r3 = (java.util.List) r3
            goto L7c
        L7b:
            r3 = 0
        L7c:
            if (r3 != 0) goto L82
            java.util.List r3 = kotlin.collections.CollectionsKt.emptyList()
        L82:
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            kotlin.collections.CollectionsKt.addAll(r5, r3)
            int r11 = r11 + 1
            r3 = 2
            r6 = 0
            goto L55
        L8c:
            r6 = r5
            java.util.List r6 = (java.util.List) r6
            goto L93
        L92:
            r6 = 0
        L93:
            if (r6 != 0) goto L99
            java.util.List r6 = kotlin.collections.CollectionsKt.emptyList()
        L99:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.kyuubiran.ezxhelper.utils.UtilsKt.getAllClassesList(java.lang.ClassLoader, kotlin.jvm.functions.Function1):java.util.List");
    }

    public static final void restartHostApp(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        PackageManager pm = activity.getPackageManager();
        Intent intent = pm.getLaunchIntentForPackage(activity.getPackageName());
        activity.finishAffinity();
        activity.startActivity(intent);
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    public static final boolean sameAs(Class<?>[] clsArr, Object... other) {
        Intrinsics.checkNotNullParameter(clsArr, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (clsArr.length != other.length) {
            return false;
        }
        int length = clsArr.length;
        for (int i = 0; i < length; i++) {
            Object otherClazz = other[i];
            if (otherClazz instanceof Class) {
                if (!Intrinsics.areEqual(clsArr[i], otherClazz)) {
                    return false;
                }
            } else if (otherClazz instanceof String) {
                if (!Intrinsics.areEqual(clsArr[i].getName(), otherClazz)) {
                    return false;
                }
            } else {
                throw new IllegalArgumentException("Only support Class<*> or String");
            }
        }
        return true;
    }

    public static final boolean sameAs(List<? extends Class<?>> list, Object... other) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (list.size() != other.length) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object otherClazz = other[i];
            if (otherClazz instanceof Class) {
                if (!Intrinsics.areEqual(list.get(i), otherClazz)) {
                    return false;
                }
            } else if (otherClazz instanceof String) {
                if (!Intrinsics.areEqual(list.get(i).getName(), otherClazz)) {
                    return false;
                }
            } else {
                throw new IllegalArgumentException("Only support Class<*> or String");
            }
        }
        return true;
    }
}
