package com.topjohnwu.superuser.internal;

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class a implements c {
    public final IBinder a;

    public a(IBinder iBinder) {
        this.a = iBinder;
    }

    public final void a(int i) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.topjohnwu.superuser.internal.IRootServiceManager");
            obtain.writeInt(i);
            this.a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }

    public final void b(ComponentName componentName, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.topjohnwu.superuser.internal.IRootServiceManager");
            obtain.writeInt(1);
            componentName.writeToParcel(obtain, 0);
            obtain.writeInt(i);
            this.a.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
