package com.github.kyuubiran.ezxhelper.utils;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MethodUtils.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u001c\u0012\u0010\u0010\u0002\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0002\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/Args;", "", "args", "", "constructor-impl", "([Ljava/lang/Object;)[Ljava/lang/Object;", "getArgs", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "equals", "", "other", "equals-impl", "([Ljava/lang/Object;Ljava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "([Ljava/lang/Object;)I", "toString", "", "toString-impl", "([Ljava/lang/Object;)Ljava/lang/String;", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@JvmInline
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class Args {
    private final Object[] args;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Args m967boximpl(Object[] objArr) {
        return new Args(objArr);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static Object[] m968constructorimpl(Object[] args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return args;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m969equalsimpl(Object[] objArr, Object obj) {
        return (obj instanceof Args) && Intrinsics.areEqual(objArr, ((Args) obj).m973unboximpl());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m970equalsimpl0(Object[] objArr, Object[] objArr2) {
        return Intrinsics.areEqual(objArr, objArr2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m971hashCodeimpl(Object[] objArr) {
        return Arrays.hashCode(objArr);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m972toStringimpl(Object[] objArr) {
        return "Args(args=" + Arrays.toString(objArr) + ")";
    }

    public boolean equals(Object obj) {
        return m969equalsimpl(this.args, obj);
    }

    public int hashCode() {
        return m971hashCodeimpl(this.args);
    }

    public String toString() {
        return m972toStringimpl(this.args);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object[] m973unboximpl() {
        return this.args;
    }

    private /* synthetic */ Args(Object[] args) {
        this.args = args;
    }

    public final Object[] getArgs() {
        return this.args;
    }
}
