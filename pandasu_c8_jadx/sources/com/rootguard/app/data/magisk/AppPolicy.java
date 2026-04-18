package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/rootguard/app/data/magisk/AppPolicy;", "", "packageName", "", "policy", "", "logging", "notification", "(Ljava/lang/String;III)V", "getLogging", "()I", "getNotification", "getPackageName", "()Ljava/lang/String;", "getPolicy", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final /* data */ class AppPolicy {
    public static final int $stable = 0;
    private final int logging;
    private final int notification;
    private final String packageName;
    private final int policy;

    public static /* synthetic */ AppPolicy copy$default(AppPolicy appPolicy, String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = appPolicy.packageName;
        }
        if ((i4 & 2) != 0) {
            i = appPolicy.policy;
        }
        if ((i4 & 4) != 0) {
            i2 = appPolicy.logging;
        }
        if ((i4 & 8) != 0) {
            i3 = appPolicy.notification;
        }
        return appPolicy.copy(str, i, i2, i3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* renamed from: component2, reason: from getter */
    public final int getPolicy() {
        return this.policy;
    }

    /* renamed from: component3, reason: from getter */
    public final int getLogging() {
        return this.logging;
    }

    /* renamed from: component4, reason: from getter */
    public final int getNotification() {
        return this.notification;
    }

    public final AppPolicy copy(String packageName, int policy, int logging, int notification) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return new AppPolicy(packageName, policy, logging, notification);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppPolicy)) {
            return false;
        }
        AppPolicy appPolicy = (AppPolicy) other;
        return Intrinsics.areEqual(this.packageName, appPolicy.packageName) && this.policy == appPolicy.policy && this.logging == appPolicy.logging && this.notification == appPolicy.notification;
    }

    public int hashCode() {
        return (((((this.packageName.hashCode() * 31) + Integer.hashCode(this.policy)) * 31) + Integer.hashCode(this.logging)) * 31) + Integer.hashCode(this.notification);
    }

    public String toString() {
        return "AppPolicy(packageName=" + this.packageName + ", policy=" + this.policy + ", logging=" + this.logging + ", notification=" + this.notification + ")";
    }

    public AppPolicy(String packageName, int policy, int logging, int notification) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        this.packageName = packageName;
        this.policy = policy;
        this.logging = logging;
        this.notification = notification;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getPolicy() {
        return this.policy;
    }

    public final int getLogging() {
        return this.logging;
    }

    public final int getNotification() {
        return this.notification;
    }
}
