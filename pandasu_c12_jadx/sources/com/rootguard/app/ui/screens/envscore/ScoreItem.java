package com.rootguard.app.ui.screens.envscore;

import com.rootguard.app.data.kernelsu.KernelSUService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnvScoreDetailScreen.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/rootguard/app/ui/screens/envscore/ScoreItem;", "", "name", "", "score", "", "status", "description", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "getName", "getScore", "()I", "getStatus", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, KernelSUService.$stable}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes12.dex */
public final /* data */ class ScoreItem {
    public static final int $stable = 0;
    private final String description;
    private final String name;
    private final int score;
    private final String status;

    public static /* synthetic */ ScoreItem copy$default(ScoreItem scoreItem, String str, int i, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = scoreItem.name;
        }
        if ((i2 & 2) != 0) {
            i = scoreItem.score;
        }
        if ((i2 & 4) != 0) {
            str2 = scoreItem.status;
        }
        if ((i2 & 8) != 0) {
            str3 = scoreItem.description;
        }
        return scoreItem.copy(str, i, str2, str3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component2, reason: from getter */
    public final int getScore() {
        return this.score;
    }

    /* renamed from: component3, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final ScoreItem copy(String name, int score, String status, String description) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(description, "description");
        return new ScoreItem(name, score, status, description);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScoreItem)) {
            return false;
        }
        ScoreItem scoreItem = (ScoreItem) other;
        return Intrinsics.areEqual(this.name, scoreItem.name) && this.score == scoreItem.score && Intrinsics.areEqual(this.status, scoreItem.status) && Intrinsics.areEqual(this.description, scoreItem.description);
    }

    public int hashCode() {
        return (((((this.name.hashCode() * 31) + Integer.hashCode(this.score)) * 31) + this.status.hashCode()) * 31) + this.description.hashCode();
    }

    public String toString() {
        return "ScoreItem(name=" + this.name + ", score=" + this.score + ", status=" + this.status + ", description=" + this.description + ")";
    }

    public ScoreItem(String name, int score, String status, String description) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(description, "description");
        this.name = name;
        this.score = score;
        this.status = status;
        this.description = description;
    }

    public final String getName() {
        return this.name;
    }

    public final int getScore() {
        return this.score;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getDescription() {
        return this.description;
    }
}
