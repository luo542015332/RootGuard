package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/rootguard/app/data/magisk/LogLevel;", "", "(Ljava/lang/String;I)V", "DEBUG", "INFO", "WARNING", "ERROR", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class LogLevel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LogLevel[] $VALUES;
    public static final LogLevel DEBUG = new LogLevel("DEBUG", 0);
    public static final LogLevel INFO = new LogLevel("INFO", 1);
    public static final LogLevel WARNING = new LogLevel("WARNING", 2);
    public static final LogLevel ERROR = new LogLevel("ERROR", 3);

    private static final /* synthetic */ LogLevel[] $values() {
        return new LogLevel[]{DEBUG, INFO, WARNING, ERROR};
    }

    public static EnumEntries<LogLevel> getEntries() {
        return $ENTRIES;
    }

    public static LogLevel valueOf(String str) {
        return (LogLevel) Enum.valueOf(LogLevel.class, str);
    }

    public static LogLevel[] values() {
        return (LogLevel[]) $VALUES.clone();
    }

    private LogLevel(String $enum$name, int $enum$ordinal) {
    }

    static {
        LogLevel[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
