package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/rootguard/app/data/magisk/MagiskLog;", "", "id", "", "message", "level", "Lcom/rootguard/app/data/magisk/LogLevel;", "timestamp", "(Ljava/lang/String;Ljava/lang/String;Lcom/rootguard/app/data/magisk/LogLevel;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getLevel", "()Lcom/rootguard/app/data/magisk/LogLevel;", "getMessage", "getTimestamp", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final /* data */ class MagiskLog {
    public static final int $stable = 0;
    private final String id;
    private final LogLevel level;
    private final String message;
    private final String timestamp;

    public static /* synthetic */ MagiskLog copy$default(MagiskLog magiskLog, String str, String str2, LogLevel logLevel, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = magiskLog.id;
        }
        if ((i & 2) != 0) {
            str2 = magiskLog.message;
        }
        if ((i & 4) != 0) {
            logLevel = magiskLog.level;
        }
        if ((i & 8) != 0) {
            str3 = magiskLog.timestamp;
        }
        return magiskLog.copy(str, str2, logLevel, str3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* renamed from: component3, reason: from getter */
    public final LogLevel getLevel() {
        return this.level;
    }

    /* renamed from: component4, reason: from getter */
    public final String getTimestamp() {
        return this.timestamp;
    }

    public final MagiskLog copy(String id, String message, LogLevel level, String timestamp) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        return new MagiskLog(id, message, level, timestamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MagiskLog)) {
            return false;
        }
        MagiskLog magiskLog = (MagiskLog) other;
        return Intrinsics.areEqual(this.id, magiskLog.id) && Intrinsics.areEqual(this.message, magiskLog.message) && this.level == magiskLog.level && Intrinsics.areEqual(this.timestamp, magiskLog.timestamp);
    }

    public int hashCode() {
        return (((((this.id.hashCode() * 31) + this.message.hashCode()) * 31) + this.level.hashCode()) * 31) + this.timestamp.hashCode();
    }

    public String toString() {
        return "MagiskLog(id=" + this.id + ", message=" + this.message + ", level=" + this.level + ", timestamp=" + this.timestamp + ")";
    }

    public MagiskLog(String id, String message, LogLevel level, String timestamp) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        this.id = id;
        this.message = message;
        this.level = level;
        this.timestamp = timestamp;
    }

    public final String getId() {
        return this.id;
    }

    public final String getMessage() {
        return this.message;
    }

    public final LogLevel getLevel() {
        return this.level;
    }

    public final String getTimestamp() {
        return this.timestamp;
    }
}
