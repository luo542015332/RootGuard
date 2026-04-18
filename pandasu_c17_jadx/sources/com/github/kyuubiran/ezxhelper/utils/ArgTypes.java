package com.github.kyuubiran.ezxhelper.utils;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MethodUtils.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u001e\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001a\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u001f\u0010\u0002\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/ArgTypes;", "", "argTypes", "", "Ljava/lang/Class;", "constructor-impl", "([Ljava/lang/Class;)[Ljava/lang/Class;", "getArgTypes", "()[Ljava/lang/Class;", "[Ljava/lang/Class;", "equals", "", "other", "equals-impl", "([Ljava/lang/Class;Ljava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "([Ljava/lang/Class;)I", "toString", "", "toString-impl", "([Ljava/lang/Class;)Ljava/lang/String;", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@JvmInline
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class ArgTypes {
    private final Class<?>[] argTypes;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ArgTypes m960boximpl(Class[] clsArr) {
        return new ArgTypes(clsArr);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static Class<?>[] m961constructorimpl(Class<?>[] argTypes) {
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        return argTypes;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m962equalsimpl(Class<?>[] clsArr, Object obj) {
        return (obj instanceof ArgTypes) && Intrinsics.areEqual(clsArr, ((ArgTypes) obj).getArgTypes());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m963equalsimpl0(Class<?>[] clsArr, Class<?>[] clsArr2) {
        return Intrinsics.areEqual(clsArr, clsArr2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m964hashCodeimpl(Class<?>[] clsArr) {
        return Arrays.hashCode(clsArr);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m965toStringimpl(Class<?>[] clsArr) {
        return "ArgTypes(argTypes=" + Arrays.toString(clsArr) + ")";
    }

    public boolean equals(Object obj) {
        return m962equalsimpl(this.argTypes, obj);
    }

    public int hashCode() {
        return m964hashCodeimpl(this.argTypes);
    }

    public String toString() {
        return m965toStringimpl(this.argTypes);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Class[] getArgTypes() {
        return this.argTypes;
    }

    private /* synthetic */ ArgTypes(Class[] argTypes) {
        this.argTypes = argTypes;
    }

    public final Class<?>[] getArgTypes() {
        return this.argTypes;
    }
}
