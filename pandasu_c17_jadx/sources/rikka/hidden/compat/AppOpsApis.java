package rikka.hidden.compat;

import android.app.AppOpsManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteCallback;
import android.os.RemoteException;
import androidx.core.util.Preconditions;
import com.android.internal.app.IAppOpsActiveCallback;
import com.android.internal.app.IAppOpsNotedCallback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class AppOpsApis {
    public static final int FILTER_BY_ATTRIBUTION_TAG = 4;
    public static final int FILTER_BY_OP_NAMES = 8;
    public static final int FILTER_BY_PACKAGE_NAME = 2;
    public static final int FILTER_BY_UID = 1;
    public static final int HISTORY_FLAGS_ALL = 3;
    public static final int HISTORY_FLAG_AGGREGATE = 1;
    public static final int HISTORY_FLAG_DISCRETE = 2;
    public static final int HISTORY_FLAG_GET_ATTRIBUTION_CHAINS = 4;
    public static final int OP_FLAGS_ALL = 31;
    public static final int OP_FLAGS_ALL_TRUSTED = 13;
    public static final int OP_FLAG_SELF = 1;
    public static final int OP_FLAG_TRUSTED_PROXIED = 8;
    public static final int OP_FLAG_TRUSTED_PROXY = 2;
    public static final int OP_FLAG_UNTRUSTED_PROXIED = 16;
    public static final int OP_FLAG_UNTRUSTED_PROXY = 4;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public @interface HistoricalOpsRequestFilter {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public @interface OpFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public @interface OpHistoryFlags {
    }

    public static List<AppOpsManager.PackageOps> getOpsForPackage(int uid, String packageName, int[] ops) throws RemoteException {
        return Services.appOps.get().getOpsForPackage(uid, packageName, ops);
    }

    public static List<AppOpsManager.PackageOps> getUidOps(int uid, int[] ops) throws RemoteException {
        return Services.appOps.get().getUidOps(uid, ops);
    }

    public static void setMode(int code, int uid, String packageName, int mode) throws RemoteException {
        Services.appOps.get().setMode(code, uid, packageName, mode);
    }

    public static void setUidMode(int code, int uid, int mode) throws RemoteException {
        Services.appOps.get().setUidMode(code, uid, mode);
    }

    public static void resetAllModes(int userId, String packageName) throws RemoteException {
        Services.appOps.get().resetAllModes(userId, packageName);
    }

    public static void startWatchingActive(int[] ops, IAppOpsActiveCallback callback) throws RemoteException {
        Services.appOps.get().startWatchingActive(ops, callback);
    }

    public static void stopWatchingActive(IAppOpsActiveCallback callback) throws RemoteException {
        Services.appOps.get().stopWatchingActive(callback);
    }

    public static boolean isOperationActive(int code, int uid, String packageName) throws RemoteException {
        return Services.appOps.get().isOperationActive(code, uid, packageName);
    }

    public static void startWatchingNoted(int[] ops, IAppOpsNotedCallback callback) throws RemoteException {
        Services.appOps.get().startWatchingNoted(ops, callback);
    }

    public static void stopWatchingNoted(IAppOpsNotedCallback callback) throws RemoteException {
        Services.appOps.get().stopWatchingNoted(callback);
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static final class HistoricalOpsRequest {
        private final String mAttributionTag;
        private final long mBeginTimeMillis;
        private final long mEndTimeMillis;
        private final int mFilter;
        private final int mFlags;
        private final int mHistoryFlags;
        private final List<String> mOpNames;
        private final String mPackageName;
        private final int mUid;

        private HistoricalOpsRequest(int uid, String packageName, String attributionTag, List<String> opNames, int historyFlags, int filter, long beginTimeMillis, long endTimeMillis, int flags) {
            this.mUid = uid;
            this.mPackageName = packageName;
            this.mAttributionTag = attributionTag;
            this.mOpNames = opNames;
            this.mHistoryFlags = historyFlags;
            this.mFilter = filter;
            this.mBeginTimeMillis = beginTimeMillis;
            this.mEndTimeMillis = endTimeMillis;
            this.mFlags = flags;
        }

        /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
        public static final class Builder {
            private String mAttributionTag;
            private final long mBeginTimeMillis;
            private final long mEndTimeMillis;
            private int mFilter;
            private int mHistoryFlags;
            private List<String> mOpNames;
            private String mPackageName;
            private int mUid = -1;
            private int mFlags = 31;

            public Builder(long beginTimeMillis, long endTimeMillis) {
                Preconditions.checkArgument(beginTimeMillis >= 0 && beginTimeMillis < endTimeMillis, "beginTimeMillis must be non negative and lesser than endTimeMillis");
                this.mBeginTimeMillis = beginTimeMillis;
                this.mEndTimeMillis = endTimeMillis;
                this.mHistoryFlags = 1;
            }

            public Builder setUid(int uid) {
                Preconditions.checkArgument(uid == -1 || uid >= 0, "uid must be -1 or non negative");
                this.mUid = uid;
                if (uid != -1) {
                    this.mFilter = 1 | this.mFilter;
                } else {
                    this.mFilter &= -2;
                }
                return this;
            }

            public Builder setPackageName(String packageName) {
                this.mPackageName = packageName;
                if (packageName == null) {
                    this.mFilter &= -3;
                } else {
                    this.mFilter |= 2;
                }
                return this;
            }

            public Builder setAttributionTag(String attributionTag) {
                this.mAttributionTag = attributionTag;
                this.mFilter |= 4;
                return this;
            }

            public Builder setOpNames(List<String> opNames) {
                this.mOpNames = opNames;
                if (opNames == null) {
                    this.mFilter &= -9;
                } else {
                    this.mFilter |= 8;
                }
                return this;
            }

            public Builder setFlags(int flags) {
                Preconditions.checkFlagsArgument(flags, 31);
                this.mFlags = flags;
                return this;
            }

            public Builder setHistoryFlags(int flags) {
                Preconditions.checkFlagsArgument(flags, 7);
                this.mHistoryFlags = flags;
                return this;
            }

            public HistoricalOpsRequest build() {
                if (Build.VERSION.SDK_INT >= 31) {
                    historyFlags = (this.mHistoryFlags & 1) == 1 ? 0 | AppOpsManager.HISTORY_FLAG_AGGREGATE : 0;
                    if ((this.mHistoryFlags & 2) == 2) {
                        historyFlags |= AppOpsManager.HISTORY_FLAG_DISCRETE;
                    }
                    if ((this.mHistoryFlags & 4) == 4) {
                        historyFlags |= AppOpsManager.HISTORY_FLAG_GET_ATTRIBUTION_CHAINS;
                    }
                }
                if (Build.VERSION.SDK_INT >= 30) {
                    filter = (this.mFilter & 1) == 1 ? 0 | AppOpsManager.FILTER_BY_UID : 0;
                    if ((this.mFilter & 2) == 2) {
                        filter |= AppOpsManager.FILTER_BY_PACKAGE_NAME;
                    }
                    if ((this.mFilter & 4) == 4) {
                        filter |= AppOpsManager.FILTER_BY_ATTRIBUTION_TAG;
                    }
                    if ((this.mFilter & 8) == 8) {
                        filter |= AppOpsManager.FILTER_BY_OP_NAMES;
                    }
                }
                int flags = (this.mFlags & 1) == 1 ? 0 | AppOpsManager.OP_FLAG_SELF : 0;
                if ((this.mFlags & 2) == 2) {
                    flags |= AppOpsManager.OP_FLAG_TRUSTED_PROXY;
                }
                if ((this.mFlags & 4) == 4) {
                    flags |= AppOpsManager.OP_FLAG_UNTRUSTED_PROXY;
                }
                if ((this.mFlags & 8) == 8) {
                    flags |= AppOpsManager.OP_FLAG_TRUSTED_PROXIED;
                }
                if ((this.mFlags & 16) == 16) {
                    flags |= AppOpsManager.OP_FLAG_UNTRUSTED_PROXIED;
                }
                return new HistoricalOpsRequest(this.mUid, this.mPackageName, this.mAttributionTag, this.mOpNames, historyFlags, filter, this.mBeginTimeMillis, this.mEndTimeMillis, flags);
            }
        }
    }

    public static void getHistoricalOps(HistoricalOpsRequest request, final Executor executor, final Consumer<AppOpsManager.HistoricalOps> callback) throws RemoteException {
        Objects.requireNonNull(executor, "executor cannot be null");
        Objects.requireNonNull(callback, "callback cannot be null");
        RemoteCallback remoteCallback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: rikka.hidden.compat.AppOpsApis$$ExternalSyntheticLambda1
            public final void onResult(Bundle bundle) {
                AppOpsApis.lambda$getHistoricalOps$1(executor, callback, bundle);
            }
        });
        if (Build.VERSION.SDK_INT >= 31) {
            Services.appOps.get().getHistoricalOps(request.mUid, request.mPackageName, request.mAttributionTag, request.mOpNames, request.mHistoryFlags, request.mFilter, request.mBeginTimeMillis, request.mEndTimeMillis, request.mFlags, remoteCallback);
        } else if (Build.VERSION.SDK_INT >= 30) {
            Services.appOps.get().getHistoricalOps(request.mUid, request.mPackageName, request.mAttributionTag, request.mOpNames, request.mFilter, request.mBeginTimeMillis, request.mEndTimeMillis, request.mFlags, remoteCallback);
        } else {
            Services.appOps.get().getHistoricalOps(request.mUid, request.mPackageName, request.mOpNames, request.mBeginTimeMillis, request.mEndTimeMillis, request.mFlags, remoteCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getHistoricalOps$1(Executor executor, final Consumer callback, Bundle result) {
        if (result == null) {
            return;
        }
        final AppOpsManager.HistoricalOps ops = result.getParcelable(AppOpsManager.KEY_HISTORICAL_OPS);
        long identity = Binder.clearCallingIdentity();
        try {
            executor.execute(new Runnable() { // from class: rikka.hidden.compat.AppOpsApis$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    callback.accept(ops);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public static void getHistoricalOpsFromDiskRaw(HistoricalOpsRequest request, final Executor executor, final Consumer<AppOpsManager.HistoricalOps> callback) throws RemoteException {
        Objects.requireNonNull(executor, "executor cannot be null");
        Objects.requireNonNull(callback, "callback cannot be null");
        RemoteCallback remoteCallback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: rikka.hidden.compat.AppOpsApis$$ExternalSyntheticLambda3
            public final void onResult(Bundle bundle) {
                AppOpsApis.lambda$getHistoricalOpsFromDiskRaw$3(executor, callback, bundle);
            }
        });
        if (Build.VERSION.SDK_INT >= 31) {
            Services.appOps.get().getHistoricalOpsFromDiskRaw(request.mUid, request.mPackageName, request.mAttributionTag, request.mOpNames, request.mHistoryFlags, request.mFilter, request.mBeginTimeMillis, request.mEndTimeMillis, request.mFlags, remoteCallback);
        } else if (Build.VERSION.SDK_INT >= 30) {
            Services.appOps.get().getHistoricalOpsFromDiskRaw(request.mUid, request.mPackageName, request.mAttributionTag, request.mOpNames, request.mFilter, request.mBeginTimeMillis, request.mEndTimeMillis, request.mFlags, remoteCallback);
        } else {
            Services.appOps.get().getHistoricalOpsFromDiskRaw(request.mUid, request.mPackageName, request.mOpNames, request.mBeginTimeMillis, request.mEndTimeMillis, request.mFlags, remoteCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getHistoricalOpsFromDiskRaw$3(Executor executor, final Consumer callback, Bundle result) {
        if (result == null) {
            return;
        }
        final AppOpsManager.HistoricalOps ops = result.getParcelable(AppOpsManager.KEY_HISTORICAL_OPS);
        long identity = Binder.clearCallingIdentity();
        try {
            executor.execute(new Runnable() { // from class: rikka.hidden.compat.AppOpsApis$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    callback.accept(ops);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public static void setHistoryParameters(int mode, long baseSnapshotInterval, int compressionStep) throws RemoteException {
        Services.appOps.get().setHistoryParameters(mode, baseSnapshotInterval, compressionStep);
    }

    public static void resetHistoryParameters() throws RemoteException {
        Services.appOps.get().resetHistoryParameters();
    }
}
