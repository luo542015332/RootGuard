package com.rootguard.app.data.magisk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u000bHÆ\u0003JO\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0007HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\""}, d2 = {"Lcom/rootguard/app/data/magisk/MagiskModule;", "", "id", "", "name", "version", "versionCode", "", "author", "description", "isEnabled", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V", "getAuthor", "()Ljava/lang/String;", "getDescription", "getId", "()Z", "getName", "getVersion", "getVersionCode", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final /* data */ class MagiskModule {
    public static final int $stable = 0;
    private final String author;
    private final String description;
    private final String id;
    private final boolean isEnabled;
    private final String name;
    private final String version;
    private final int versionCode;

    public static /* synthetic */ MagiskModule copy$default(MagiskModule magiskModule, String str, String str2, String str3, int i, String str4, String str5, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = magiskModule.id;
        }
        if ((i2 & 2) != 0) {
            str2 = magiskModule.name;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            str3 = magiskModule.version;
        }
        String str7 = str3;
        if ((i2 & 8) != 0) {
            i = magiskModule.versionCode;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            str4 = magiskModule.author;
        }
        String str8 = str4;
        if ((i2 & 32) != 0) {
            str5 = magiskModule.description;
        }
        String str9 = str5;
        if ((i2 & 64) != 0) {
            z = magiskModule.isEnabled;
        }
        return magiskModule.copy(str, str6, str7, i3, str8, str9, z);
    }

    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component3, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* renamed from: component4, reason: from getter */
    public final int getVersionCode() {
        return this.versionCode;
    }

    /* renamed from: component5, reason: from getter */
    public final String getAuthor() {
        return this.author;
    }

    /* renamed from: component6, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getIsEnabled() {
        return this.isEnabled;
    }

    public final MagiskModule copy(String id, String name, String version, int versionCode, String author, String description, boolean isEnabled) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(description, "description");
        return new MagiskModule(id, name, version, versionCode, author, description, isEnabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MagiskModule)) {
            return false;
        }
        MagiskModule magiskModule = (MagiskModule) other;
        return Intrinsics.areEqual(this.id, magiskModule.id) && Intrinsics.areEqual(this.name, magiskModule.name) && Intrinsics.areEqual(this.version, magiskModule.version) && this.versionCode == magiskModule.versionCode && Intrinsics.areEqual(this.author, magiskModule.author) && Intrinsics.areEqual(this.description, magiskModule.description) && this.isEnabled == magiskModule.isEnabled;
    }

    public int hashCode() {
        return (((((((((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.version.hashCode()) * 31) + Integer.hashCode(this.versionCode)) * 31) + this.author.hashCode()) * 31) + this.description.hashCode()) * 31) + Boolean.hashCode(this.isEnabled);
    }

    public String toString() {
        return "MagiskModule(id=" + this.id + ", name=" + this.name + ", version=" + this.version + ", versionCode=" + this.versionCode + ", author=" + this.author + ", description=" + this.description + ", isEnabled=" + this.isEnabled + ")";
    }

    public MagiskModule(String id, String name, String version, int versionCode, String author, String description, boolean isEnabled) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(description, "description");
        this.id = id;
        this.name = name;
        this.version = version;
        this.versionCode = versionCode;
        this.author = author;
        this.description = description;
        this.isEnabled = isEnabled;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getVersion() {
        return this.version;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final String getDescription() {
        return this.description;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }
}
