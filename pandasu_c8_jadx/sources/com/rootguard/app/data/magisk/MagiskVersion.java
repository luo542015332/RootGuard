package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0016"}, d2 = {"Lcom/rootguard/app/data/magisk/MagiskVersion;", "", "versionName", "", "versionCode", "", "isInstalled", "", "(Ljava/lang/String;IZ)V", "()Z", "getVersionCode", "()I", "getVersionName", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final /* data */ class MagiskVersion {
    public static final int $stable = 0;
    private final boolean isInstalled;
    private final int versionCode;
    private final String versionName;

    public static /* synthetic */ MagiskVersion copy$default(MagiskVersion magiskVersion, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = magiskVersion.versionName;
        }
        if ((i2 & 2) != 0) {
            i = magiskVersion.versionCode;
        }
        if ((i2 & 4) != 0) {
            z = magiskVersion.isInstalled;
        }
        return magiskVersion.copy(str, i, z);
    }

    /* renamed from: component1, reason: from getter */
    public final String getVersionName() {
        return this.versionName;
    }

    /* renamed from: component2, reason: from getter */
    public final int getVersionCode() {
        return this.versionCode;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsInstalled() {
        return this.isInstalled;
    }

    public final MagiskVersion copy(String versionName, int versionCode, boolean isInstalled) {
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        return new MagiskVersion(versionName, versionCode, isInstalled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MagiskVersion)) {
            return false;
        }
        MagiskVersion magiskVersion = (MagiskVersion) other;
        return Intrinsics.areEqual(this.versionName, magiskVersion.versionName) && this.versionCode == magiskVersion.versionCode && this.isInstalled == magiskVersion.isInstalled;
    }

    public int hashCode() {
        return (((this.versionName.hashCode() * 31) + Integer.hashCode(this.versionCode)) * 31) + Boolean.hashCode(this.isInstalled);
    }

    public String toString() {
        return "MagiskVersion(versionName=" + this.versionName + ", versionCode=" + this.versionCode + ", isInstalled=" + this.isInstalled + ")";
    }

    public MagiskVersion(String versionName, int versionCode, boolean isInstalled) {
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        this.versionName = versionName;
        this.versionCode = versionCode;
        this.isInstalled = isInstalled;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    public final boolean isInstalled() {
        return this.isInstalled;
    }
}
