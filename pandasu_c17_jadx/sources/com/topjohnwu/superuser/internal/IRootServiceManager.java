package com.topjohnwu.superuser.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public interface IRootServiceManager extends IInterface {
    public static final String DESCRIPTOR = "com.topjohnwu.superuser.internal.IRootServiceManager";

    IBinder bind(Intent intent) throws RemoteException;

    void broadcast(int i) throws RemoteException;

    void connect(IBinder iBinder) throws RemoteException;

    void stop(ComponentName componentName, int i) throws RemoteException;

    void unbind(ComponentName componentName) throws RemoteException;

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static class Default implements IRootServiceManager {
        @Override // com.topjohnwu.superuser.internal.IRootServiceManager
        public void broadcast(int uid) throws RemoteException {
        }

        @Override // com.topjohnwu.superuser.internal.IRootServiceManager
        public void stop(ComponentName name, int uid) throws RemoteException {
        }

        @Override // com.topjohnwu.superuser.internal.IRootServiceManager
        public void connect(IBinder binder) throws RemoteException {
        }

        @Override // com.topjohnwu.superuser.internal.IRootServiceManager
        public IBinder bind(Intent intent) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IRootServiceManager
        public void unbind(ComponentName name) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static abstract class Stub extends Binder implements IRootServiceManager {
        static final int TRANSACTION_bind = 4;
        static final int TRANSACTION_broadcast = 1;
        static final int TRANSACTION_connect = 3;
        static final int TRANSACTION_stop = 2;
        static final int TRANSACTION_unbind = 5;

        public Stub() {
            attachInterface(this, IRootServiceManager.DESCRIPTOR);
        }

        public static IRootServiceManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IRootServiceManager.DESCRIPTOR);
            if (iin != null && (iin instanceof IRootServiceManager)) {
                return (IRootServiceManager) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(IRootServiceManager.DESCRIPTOR);
            }
            switch (code) {
                case 1598968902:
                    reply.writeString(IRootServiceManager.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            broadcast(_arg0);
                            return true;
                        case 2:
                            ComponentName _arg02 = (ComponentName) _Parcel.readTypedObject(data, ComponentName.CREATOR);
                            int _arg1 = data.readInt();
                            stop(_arg02, _arg1);
                            return true;
                        case 3:
                            IBinder _arg03 = data.readStrongBinder();
                            connect(_arg03);
                            reply.writeNoException();
                            return true;
                        case 4:
                            Intent _arg04 = (Intent) _Parcel.readTypedObject(data, Intent.CREATOR);
                            IBinder _result = bind(_arg04);
                            reply.writeNoException();
                            reply.writeStrongBinder(_result);
                            return true;
                        case 5:
                            ComponentName _arg05 = (ComponentName) _Parcel.readTypedObject(data, ComponentName.CREATOR);
                            unbind(_arg05);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
        private static class Proxy implements IRootServiceManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IRootServiceManager.DESCRIPTOR;
            }

            @Override // com.topjohnwu.superuser.internal.IRootServiceManager
            public void broadcast(int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRootServiceManager.DESCRIPTOR);
                    _data.writeInt(uid);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IRootServiceManager
            public void stop(ComponentName name, int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRootServiceManager.DESCRIPTOR);
                    _Parcel.writeTypedObject(_data, name, 0);
                    _data.writeInt(uid);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IRootServiceManager
            public void connect(IBinder binder) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRootServiceManager.DESCRIPTOR);
                    _data.writeStrongBinder(binder);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IRootServiceManager
            public IBinder bind(Intent intent) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRootServiceManager.DESCRIPTOR);
                    _Parcel.writeTypedObject(_data, intent, 0);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    IBinder _result = _reply.readStrongBinder();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IRootServiceManager
            public void unbind(ComponentName name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRootServiceManager.DESCRIPTOR);
                    _Parcel.writeTypedObject(_data, name, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> c) {
            if (parcel.readInt() != 0) {
                return c.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T value, int parcelableFlags) {
            if (value != null) {
                parcel.writeInt(1);
                value.writeToParcel(parcel, parcelableFlags);
            } else {
                parcel.writeInt(0);
            }
        }
    }
}
