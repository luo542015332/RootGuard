package com.topjohnwu.superuser.internal;

import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public abstract class BinderHolder implements IBinder.DeathRecipient {
    private final IBinder binder;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onBinderDied();

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderHolder(IBinder b) throws RemoteException {
        this.binder = b;
        b.linkToDeath(this, 0);
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.binder.unlinkToDeath(this, 0);
        UiThreadHandler.run(new Runnable() { // from class: com.topjohnwu.superuser.internal.BinderHolder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BinderHolder.this.onBinderDied();
            }
        });
    }
}
