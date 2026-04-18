package com.rootguard.app.ui.screens.isolation;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/rootguard/app/ui/screens/isolation/OneClickProgress;", "", "isRunning", "", "current", "", "total", "currentAppName", "", "(ZIILjava/lang/String;)V", "getCurrent", "()I", "getCurrentAppName", "()Ljava/lang/String;", "()Z", "getTotal", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final /* data */ class OneClickProgress {
    public static final int $stable = 0;
    private final int current;
    private final String currentAppName;
    private final boolean isRunning;
    private final int total;

    public OneClickProgress() {
        this(false, 0, 0, null, 15, null);
    }

    public static /* synthetic */ OneClickProgress copy$default(OneClickProgress oneClickProgress, boolean z, int i, int i2, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            z = oneClickProgress.isRunning;
        }
        if ((i3 & 2) != 0) {
            i = oneClickProgress.current;
        }
        if ((i3 & 4) != 0) {
            i2 = oneClickProgress.total;
        }
        if ((i3 & 8) != 0) {
            str = oneClickProgress.currentAppName;
        }
        return oneClickProgress.copy(z, i, i2, str);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getIsRunning() {
        return this.isRunning;
    }

    /* renamed from: component2, reason: from getter */
    public final int getCurrent() {
        return this.current;
    }

    /* renamed from: component3, reason: from getter */
    public final int getTotal() {
        return this.total;
    }

    /* renamed from: component4, reason: from getter */
    public final String getCurrentAppName() {
        return this.currentAppName;
    }

    public final OneClickProgress copy(boolean isRunning, int current, int total, String currentAppName) {
        Intrinsics.checkNotNullParameter(currentAppName, "currentAppName");
        return new OneClickProgress(isRunning, current, total, currentAppName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OneClickProgress)) {
            return false;
        }
        OneClickProgress oneClickProgress = (OneClickProgress) other;
        return this.isRunning == oneClickProgress.isRunning && this.current == oneClickProgress.current && this.total == oneClickProgress.total && Intrinsics.areEqual(this.currentAppName, oneClickProgress.currentAppName);
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.isRunning) * 31) + Integer.hashCode(this.current)) * 31) + Integer.hashCode(this.total)) * 31) + this.currentAppName.hashCode();
    }

    public String toString() {
        return "OneClickProgress(isRunning=" + this.isRunning + ", current=" + this.current + ", total=" + this.total + ", currentAppName=" + this.currentAppName + ")";
    }

    public OneClickProgress(boolean isRunning, int current, int total, String currentAppName) {
        Intrinsics.checkNotNullParameter(currentAppName, "currentAppName");
        this.isRunning = isRunning;
        this.current = current;
        this.total = total;
        this.currentAppName = currentAppName;
    }

    public /* synthetic */ OneClickProgress(boolean z, int i, int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? "" : str);
    }

    public final boolean isRunning() {
        return this.isRunning;
    }

    public final int getCurrent() {
        return this.current;
    }

    public final int getTotal() {
        return this.total;
    }

    public final String getCurrentAppName() {
        return this.currentAppName;
    }
}
