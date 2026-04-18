package com.rootguard.app.data.magisk;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\bHÆ\u0003J3\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcom/rootguard/app/data/magisk/InstalledAppInfo;", "", "packageName", "", "appName", "isSystemApp", "", "icon", "Landroid/graphics/drawable/Drawable;", "(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)V", "getAppName", "()Ljava/lang/String;", "getIcon", "()Landroid/graphics/drawable/Drawable;", "()Z", "getPackageName", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final /* data */ class InstalledAppInfo {
    public static final int $stable = 8;
    private final String appName;
    private final Drawable icon;
    private final boolean isSystemApp;
    private final String packageName;

    public static /* synthetic */ InstalledAppInfo copy$default(InstalledAppInfo installedAppInfo, String str, String str2, boolean z, Drawable drawable, int i, Object obj) {
        if ((i & 1) != 0) {
            str = installedAppInfo.packageName;
        }
        if ((i & 2) != 0) {
            str2 = installedAppInfo.appName;
        }
        if ((i & 4) != 0) {
            z = installedAppInfo.isSystemApp;
        }
        if ((i & 8) != 0) {
            drawable = installedAppInfo.icon;
        }
        return installedAppInfo.copy(str, str2, z, drawable);
    }

    /* renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* renamed from: component2, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsSystemApp() {
        return this.isSystemApp;
    }

    /* renamed from: component4, reason: from getter */
    public final Drawable getIcon() {
        return this.icon;
    }

    public final InstalledAppInfo copy(String packageName, String appName, boolean isSystemApp, Drawable icon) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        return new InstalledAppInfo(packageName, appName, isSystemApp, icon);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstalledAppInfo)) {
            return false;
        }
        InstalledAppInfo installedAppInfo = (InstalledAppInfo) other;
        return Intrinsics.areEqual(this.packageName, installedAppInfo.packageName) && Intrinsics.areEqual(this.appName, installedAppInfo.appName) && this.isSystemApp == installedAppInfo.isSystemApp && Intrinsics.areEqual(this.icon, installedAppInfo.icon);
    }

    public int hashCode() {
        int hashCode = ((((this.packageName.hashCode() * 31) + this.appName.hashCode()) * 31) + Boolean.hashCode(this.isSystemApp)) * 31;
        Drawable drawable = this.icon;
        return hashCode + (drawable == null ? 0 : drawable.hashCode());
    }

    public String toString() {
        return "InstalledAppInfo(packageName=" + this.packageName + ", appName=" + this.appName + ", isSystemApp=" + this.isSystemApp + ", icon=" + this.icon + ")";
    }

    public InstalledAppInfo(String packageName, String appName, boolean isSystemApp, Drawable icon) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        this.packageName = packageName;
        this.appName = appName;
        this.isSystemApp = isSystemApp;
        this.icon = icon;
    }

    public /* synthetic */ InstalledAppInfo(String str, String str2, boolean z, Drawable drawable, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z, (i & 8) != 0 ? null : drawable);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final boolean isSystemApp() {
        return this.isSystemApp;
    }

    public final Drawable getIcon() {
        return this.icon;
    }
}
