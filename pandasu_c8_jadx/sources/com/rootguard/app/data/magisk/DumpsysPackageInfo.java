package com.rootguard.app.data.magisk;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: PackageDumpParser.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b1\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007¢\u0006\u0002\u0010\u0010J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0007HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0007HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u000f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00030\nHÆ\u0003J\t\u00103\u001a\u00020\fHÆ\u0003J\t\u00104\u001a\u00020\fHÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003Js\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u0007HÆ\u0001J\u0013\u00107\u001a\u00020\f2\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00109\u001a\u00020\u0007HÖ\u0001J\u0006\u0010:\u001a\u00020\fJ\u0006\u0010;\u001a\u00020\fJ\t\u0010<\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0012\"\u0004\b!\u0010\u0014R\u001a\u0010\r\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010%\"\u0004\b)\u0010'R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0012\"\u0004\b+\u0010\u0014¨\u0006="}, d2 = {"Lcom/rootguard/app/data/magisk/DumpsysPackageInfo;", "", "packageName", "", "appId", "codePath", "versionCode", "", "versionName", "flags", "", "isMiuiPreinstall", "", "scannedAsStoppedSystemApp", "installerPackageName", "uid", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;I)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getCodePath", "setCodePath", "getFlags", "()Ljava/util/List;", "setFlags", "(Ljava/util/List;)V", "getInstallerPackageName", "setInstallerPackageName", "()Z", "setMiuiPreinstall", "(Z)V", "getPackageName", "setPackageName", "getScannedAsStoppedSystemApp", "setScannedAsStoppedSystemApp", "getUid", "()I", "setUid", "(I)V", "getVersionCode", "setVersionCode", "getVersionName", "setVersionName", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "isSystemApp", "isUserApp", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final /* data */ class DumpsysPackageInfo {
    public static final int $stable = 8;
    private String appId;
    private String codePath;
    private List<String> flags;
    private String installerPackageName;
    private boolean isMiuiPreinstall;
    private String packageName;
    private boolean scannedAsStoppedSystemApp;
    private int uid;
    private int versionCode;
    private String versionName;

    public DumpsysPackageInfo() {
        this(null, null, null, 0, null, null, false, false, null, 0, 1023, null);
    }

    /* renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* renamed from: component10, reason: from getter */
    public final int getUid() {
        return this.uid;
    }

    /* renamed from: component2, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* renamed from: component3, reason: from getter */
    public final String getCodePath() {
        return this.codePath;
    }

    /* renamed from: component4, reason: from getter */
    public final int getVersionCode() {
        return this.versionCode;
    }

    /* renamed from: component5, reason: from getter */
    public final String getVersionName() {
        return this.versionName;
    }

    public final List<String> component6() {
        return this.flags;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getIsMiuiPreinstall() {
        return this.isMiuiPreinstall;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getScannedAsStoppedSystemApp() {
        return this.scannedAsStoppedSystemApp;
    }

    /* renamed from: component9, reason: from getter */
    public final String getInstallerPackageName() {
        return this.installerPackageName;
    }

    public final DumpsysPackageInfo copy(String packageName, String appId, String codePath, int versionCode, String versionName, List<String> flags, boolean isMiuiPreinstall, boolean scannedAsStoppedSystemApp, String installerPackageName, int uid) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(codePath, "codePath");
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(installerPackageName, "installerPackageName");
        return new DumpsysPackageInfo(packageName, appId, codePath, versionCode, versionName, flags, isMiuiPreinstall, scannedAsStoppedSystemApp, installerPackageName, uid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DumpsysPackageInfo)) {
            return false;
        }
        DumpsysPackageInfo dumpsysPackageInfo = (DumpsysPackageInfo) other;
        return Intrinsics.areEqual(this.packageName, dumpsysPackageInfo.packageName) && Intrinsics.areEqual(this.appId, dumpsysPackageInfo.appId) && Intrinsics.areEqual(this.codePath, dumpsysPackageInfo.codePath) && this.versionCode == dumpsysPackageInfo.versionCode && Intrinsics.areEqual(this.versionName, dumpsysPackageInfo.versionName) && Intrinsics.areEqual(this.flags, dumpsysPackageInfo.flags) && this.isMiuiPreinstall == dumpsysPackageInfo.isMiuiPreinstall && this.scannedAsStoppedSystemApp == dumpsysPackageInfo.scannedAsStoppedSystemApp && Intrinsics.areEqual(this.installerPackageName, dumpsysPackageInfo.installerPackageName) && this.uid == dumpsysPackageInfo.uid;
    }

    public int hashCode() {
        return (((((((((((((((((this.packageName.hashCode() * 31) + this.appId.hashCode()) * 31) + this.codePath.hashCode()) * 31) + Integer.hashCode(this.versionCode)) * 31) + this.versionName.hashCode()) * 31) + this.flags.hashCode()) * 31) + Boolean.hashCode(this.isMiuiPreinstall)) * 31) + Boolean.hashCode(this.scannedAsStoppedSystemApp)) * 31) + this.installerPackageName.hashCode()) * 31) + Integer.hashCode(this.uid);
    }

    public String toString() {
        return "DumpsysPackageInfo(packageName=" + this.packageName + ", appId=" + this.appId + ", codePath=" + this.codePath + ", versionCode=" + this.versionCode + ", versionName=" + this.versionName + ", flags=" + this.flags + ", isMiuiPreinstall=" + this.isMiuiPreinstall + ", scannedAsStoppedSystemApp=" + this.scannedAsStoppedSystemApp + ", installerPackageName=" + this.installerPackageName + ", uid=" + this.uid + ")";
    }

    public DumpsysPackageInfo(String packageName, String appId, String codePath, int versionCode, String versionName, List<String> list, boolean isMiuiPreinstall, boolean scannedAsStoppedSystemApp, String installerPackageName, int uid) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(codePath, "codePath");
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        Intrinsics.checkNotNullParameter(list, "flags");
        Intrinsics.checkNotNullParameter(installerPackageName, "installerPackageName");
        this.packageName = packageName;
        this.appId = appId;
        this.codePath = codePath;
        this.versionCode = versionCode;
        this.versionName = versionName;
        this.flags = list;
        this.isMiuiPreinstall = isMiuiPreinstall;
        this.scannedAsStoppedSystemApp = scannedAsStoppedSystemApp;
        this.installerPackageName = installerPackageName;
        this.uid = uid;
    }

    public /* synthetic */ DumpsysPackageInfo(String str, String str2, String str3, int i, String str4, List list, boolean z, boolean z2, String str5, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? "" : str2, (i3 & 4) != 0 ? "" : str3, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? "" : str4, (i3 & 32) != 0 ? CollectionsKt.emptyList() : list, (i3 & 64) != 0 ? false : z, (i3 & 128) != 0 ? false : z2, (i3 & 256) == 0 ? str5 : "", (i3 & 512) == 0 ? i2 : 0);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final void setPackageName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final void setAppId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appId = str;
    }

    public final String getCodePath() {
        return this.codePath;
    }

    public final void setCodePath(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.codePath = str;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    public final void setVersionCode(int i) {
        this.versionCode = i;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public final void setVersionName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.versionName = str;
    }

    public final List<String> getFlags() {
        return this.flags;
    }

    public final void setFlags(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.flags = list;
    }

    public final boolean isMiuiPreinstall() {
        return this.isMiuiPreinstall;
    }

    public final void setMiuiPreinstall(boolean z) {
        this.isMiuiPreinstall = z;
    }

    public final boolean getScannedAsStoppedSystemApp() {
        return this.scannedAsStoppedSystemApp;
    }

    public final void setScannedAsStoppedSystemApp(boolean z) {
        this.scannedAsStoppedSystemApp = z;
    }

    public final String getInstallerPackageName() {
        return this.installerPackageName;
    }

    public final void setInstallerPackageName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.installerPackageName = str;
    }

    public final int getUid() {
        return this.uid;
    }

    public final void setUid(int i) {
        this.uid = i;
    }

    public final boolean isUserApp() {
        return StringsKt.startsWith$default(this.codePath, "/data/app/", false, 2, (Object) null);
    }

    public final boolean isSystemApp() {
        return !isUserApp() || this.isMiuiPreinstall;
    }
}
