package androidx.core.app;

import android.content.res.Configuration;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class MultiWindowModeChangedInfo {
    private final boolean mIsInMultiWindowMode;
    private final Configuration mNewConfig;

    public MultiWindowModeChangedInfo(boolean isInMultiWindowMode) {
        this.mIsInMultiWindowMode = isInMultiWindowMode;
        this.mNewConfig = null;
    }

    public MultiWindowModeChangedInfo(boolean isInMultiWindowMode, Configuration newConfig) {
        this.mIsInMultiWindowMode = isInMultiWindowMode;
        this.mNewConfig = newConfig;
    }

    public boolean isInMultiWindowMode() {
        return this.mIsInMultiWindowMode;
    }

    public Configuration getNewConfig() {
        Configuration configuration = this.mNewConfig;
        if (configuration == null) {
            throw new IllegalStateException("MultiWindowModeChangedInfo must be constructed with the constructor that takes a Configuration to call getNewConfig(). Are you running on an API 26 or higher device that makes this information available?");
        }
        return configuration;
    }
}
