package com.topjohnwu.superuser.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public interface IFileSystemService extends IInterface {
    public static final String DESCRIPTOR = "com.topjohnwu.superuser.internal.IFileSystemService";

    boolean checkAccess(String str, int i) throws RemoteException;

    void close(int i) throws RemoteException;

    IOResult createLink(String str, String str2, boolean z) throws RemoteException;

    IOResult createNewFile(String str) throws RemoteException;

    boolean delete(String str) throws RemoteException;

    IOResult ftruncate(int i, long j) throws RemoteException;

    IOResult getCanonicalPath(String str) throws RemoteException;

    long getFreeSpace(String str) throws RemoteException;

    int getMode(String str) throws RemoteException;

    long getTotalSpace(String str) throws RemoteException;

    long getUsableSpace(String str) throws RemoteException;

    boolean isDirectory(String str) throws RemoteException;

    boolean isFile(String str) throws RemoteException;

    boolean isHidden(String str) throws RemoteException;

    long lastModified(String str) throws RemoteException;

    long length(String str) throws RemoteException;

    String[] list(String str) throws RemoteException;

    IOResult lseek(int i, long j, int i2) throws RemoteException;

    boolean mkdir(String str) throws RemoteException;

    boolean mkdirs(String str) throws RemoteException;

    IOResult openChannel(String str, int i, String str2) throws RemoteException;

    IOResult openReadStream(String str, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException;

    IOResult openWriteStream(String str, ParcelFileDescriptor parcelFileDescriptor, boolean z) throws RemoteException;

    IOResult pread(int i, int i2, long j) throws RemoteException;

    IOResult pwrite(int i, int i2, long j) throws RemoteException;

    void register(IBinder iBinder) throws RemoteException;

    boolean renameTo(String str, String str2) throws RemoteException;

    boolean setExecutable(String str, boolean z, boolean z2) throws RemoteException;

    boolean setLastModified(String str, long j) throws RemoteException;

    boolean setReadOnly(String str) throws RemoteException;

    boolean setReadable(String str, boolean z, boolean z2) throws RemoteException;

    boolean setWritable(String str, boolean z, boolean z2) throws RemoteException;

    IOResult size(int i) throws RemoteException;

    IOResult sync(int i, boolean z) throws RemoteException;

    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static class Default implements IFileSystemService {
        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult getCanonicalPath(String path) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean isDirectory(String path) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean isFile(String path) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean isHidden(String path) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public long lastModified(String path) throws RemoteException {
            return 0L;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public long length(String path) throws RemoteException {
            return 0L;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult createNewFile(String path) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean delete(String path) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public String[] list(String path) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean mkdir(String path) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean mkdirs(String path) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean renameTo(String path, String dest) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean setLastModified(String path, long time) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean setReadOnly(String path) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean setWritable(String path, boolean writable, boolean ownerOnly) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean setReadable(String path, boolean readable, boolean ownerOnly) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean setExecutable(String path, boolean executable, boolean ownerOnly) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public boolean checkAccess(String path, int access) throws RemoteException {
            return false;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public long getTotalSpace(String path) throws RemoteException {
            return 0L;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public long getFreeSpace(String path) throws RemoteException {
            return 0L;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public long getUsableSpace(String path) throws RemoteException {
            return 0L;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public int getMode(String path) throws RemoteException {
            return 0;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult createLink(String link, String target, boolean soft) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public void register(IBinder client) throws RemoteException {
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult openChannel(String path, int mode, String fifo) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult openReadStream(String path, ParcelFileDescriptor fd) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult openWriteStream(String path, ParcelFileDescriptor fd, boolean append) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public void close(int handle) throws RemoteException {
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult pread(int handle, int len, long offset) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult pwrite(int handle, int len, long offset) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult lseek(int handle, long offset, int whence) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult size(int handle) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult ftruncate(int handle, long length) throws RemoteException {
            return null;
        }

        @Override // com.topjohnwu.superuser.internal.IFileSystemService
        public IOResult sync(int handle, boolean metadata) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static abstract class Stub extends Binder implements IFileSystemService {
        static final int TRANSACTION_checkAccess = 18;
        static final int TRANSACTION_close = 28;
        static final int TRANSACTION_createLink = 23;
        static final int TRANSACTION_createNewFile = 7;
        static final int TRANSACTION_delete = 8;
        static final int TRANSACTION_ftruncate = 33;
        static final int TRANSACTION_getCanonicalPath = 1;
        static final int TRANSACTION_getFreeSpace = 20;
        static final int TRANSACTION_getMode = 22;
        static final int TRANSACTION_getTotalSpace = 19;
        static final int TRANSACTION_getUsableSpace = 21;
        static final int TRANSACTION_isDirectory = 2;
        static final int TRANSACTION_isFile = 3;
        static final int TRANSACTION_isHidden = 4;
        static final int TRANSACTION_lastModified = 5;
        static final int TRANSACTION_length = 6;
        static final int TRANSACTION_list = 9;
        static final int TRANSACTION_lseek = 31;
        static final int TRANSACTION_mkdir = 10;
        static final int TRANSACTION_mkdirs = 11;
        static final int TRANSACTION_openChannel = 25;
        static final int TRANSACTION_openReadStream = 26;
        static final int TRANSACTION_openWriteStream = 27;
        static final int TRANSACTION_pread = 29;
        static final int TRANSACTION_pwrite = 30;
        static final int TRANSACTION_register = 24;
        static final int TRANSACTION_renameTo = 12;
        static final int TRANSACTION_setExecutable = 17;
        static final int TRANSACTION_setLastModified = 13;
        static final int TRANSACTION_setReadOnly = 14;
        static final int TRANSACTION_setReadable = 16;
        static final int TRANSACTION_setWritable = 15;
        static final int TRANSACTION_size = 32;
        static final int TRANSACTION_sync = 34;

        public Stub() {
            attachInterface(this, IFileSystemService.DESCRIPTOR);
        }

        public static IFileSystemService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IFileSystemService.DESCRIPTOR);
            if (iin != null && (iin instanceof IFileSystemService)) {
                return (IFileSystemService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z;
            boolean z2;
            boolean z3;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IFileSystemService.DESCRIPTOR);
            }
            switch (i) {
                case 1598968902:
                    parcel2.writeString(IFileSystemService.DESCRIPTOR);
                    return true;
                default:
                    boolean z4 = false;
                    switch (i) {
                        case 1:
                            IOResult canonicalPath = getCanonicalPath(parcel.readString());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, canonicalPath, 1);
                            return true;
                        case 2:
                            boolean isDirectory = isDirectory(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(isDirectory ? 1 : 0);
                            return true;
                        case 3:
                            boolean isFile = isFile(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(isFile ? 1 : 0);
                            return true;
                        case 4:
                            boolean isHidden = isHidden(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(isHidden ? 1 : 0);
                            return true;
                        case 5:
                            long lastModified = lastModified(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeLong(lastModified);
                            return true;
                        case 6:
                            long length = length(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeLong(length);
                            return true;
                        case 7:
                            IOResult createNewFile = createNewFile(parcel.readString());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, createNewFile, 1);
                            return true;
                        case 8:
                            boolean delete = delete(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(delete ? 1 : 0);
                            return true;
                        case 9:
                            String[] list = list(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeStringArray(list);
                            return true;
                        case 10:
                            boolean mkdir = mkdir(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(mkdir ? 1 : 0);
                            return true;
                        case 11:
                            boolean mkdirs = mkdirs(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(mkdirs ? 1 : 0);
                            return true;
                        case 12:
                            boolean renameTo = renameTo(parcel.readString(), parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(renameTo ? 1 : 0);
                            return true;
                        case 13:
                            boolean lastModified2 = setLastModified(parcel.readString(), parcel.readLong());
                            parcel2.writeNoException();
                            parcel2.writeInt(lastModified2 ? 1 : 0);
                            return true;
                        case 14:
                            boolean readOnly = setReadOnly(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(readOnly ? 1 : 0);
                            return true;
                        case 15:
                            String readString = parcel.readString();
                            if (parcel.readInt() != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (parcel.readInt() != 0) {
                                z4 = true;
                            }
                            boolean writable = setWritable(readString, z, z4);
                            parcel2.writeNoException();
                            parcel2.writeInt(writable ? 1 : 0);
                            return true;
                        case 16:
                            String readString2 = parcel.readString();
                            if (parcel.readInt() != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (parcel.readInt() != 0) {
                                z4 = true;
                            }
                            boolean readable = setReadable(readString2, z2, z4);
                            parcel2.writeNoException();
                            parcel2.writeInt(readable ? 1 : 0);
                            return true;
                        case 17:
                            String readString3 = parcel.readString();
                            if (parcel.readInt() != 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (parcel.readInt() != 0) {
                                z4 = true;
                            }
                            boolean executable = setExecutable(readString3, z3, z4);
                            parcel2.writeNoException();
                            parcel2.writeInt(executable ? 1 : 0);
                            return true;
                        case 18:
                            boolean checkAccess = checkAccess(parcel.readString(), parcel.readInt());
                            parcel2.writeNoException();
                            parcel2.writeInt(checkAccess ? 1 : 0);
                            return true;
                        case 19:
                            long totalSpace = getTotalSpace(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeLong(totalSpace);
                            return true;
                        case 20:
                            long freeSpace = getFreeSpace(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeLong(freeSpace);
                            return true;
                        case 21:
                            long usableSpace = getUsableSpace(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeLong(usableSpace);
                            return true;
                        case 22:
                            int mode = getMode(parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeInt(mode);
                            return true;
                        case 23:
                            String readString4 = parcel.readString();
                            String readString5 = parcel.readString();
                            if (parcel.readInt() != 0) {
                                z4 = true;
                            }
                            IOResult createLink = createLink(readString4, readString5, z4);
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, createLink, 1);
                            return true;
                        case 24:
                            register(parcel.readStrongBinder());
                            return true;
                        case 25:
                            IOResult openChannel = openChannel(parcel.readString(), parcel.readInt(), parcel.readString());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, openChannel, 1);
                            return true;
                        case 26:
                            IOResult openReadStream = openReadStream(parcel.readString(), (ParcelFileDescriptor) _Parcel.readTypedObject(parcel, ParcelFileDescriptor.CREATOR));
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, openReadStream, 1);
                            return true;
                        case 27:
                            String readString6 = parcel.readString();
                            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) _Parcel.readTypedObject(parcel, ParcelFileDescriptor.CREATOR);
                            if (parcel.readInt() != 0) {
                                z4 = true;
                            }
                            IOResult openWriteStream = openWriteStream(readString6, parcelFileDescriptor, z4);
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, openWriteStream, 1);
                            return true;
                        case 28:
                            close(parcel.readInt());
                            return true;
                        case TRANSACTION_pread /* 29 */:
                            IOResult pread = pread(parcel.readInt(), parcel.readInt(), parcel.readLong());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, pread, 1);
                            return true;
                        case 30:
                            IOResult pwrite = pwrite(parcel.readInt(), parcel.readInt(), parcel.readLong());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, pwrite, 1);
                            return true;
                        case 31:
                            IOResult lseek = lseek(parcel.readInt(), parcel.readLong(), parcel.readInt());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, lseek, 1);
                            return true;
                        case 32:
                            IOResult size = size(parcel.readInt());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, size, 1);
                            return true;
                        case 33:
                            IOResult ftruncate = ftruncate(parcel.readInt(), parcel.readLong());
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, ftruncate, 1);
                            return true;
                        case 34:
                            int readInt = parcel.readInt();
                            if (parcel.readInt() != 0) {
                                z4 = true;
                            }
                            IOResult sync = sync(readInt, z4);
                            parcel2.writeNoException();
                            _Parcel.writeTypedObject(parcel2, sync, 1);
                            return true;
                        default:
                            return super.onTransact(i, parcel, parcel2, i2);
                    }
            }
        }

        /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
        private static class Proxy implements IFileSystemService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IFileSystemService.DESCRIPTOR;
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult getCanonicalPath(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean isDirectory(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean isFile(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean isHidden(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public long lastModified(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public long length(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult createNewFile(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean delete(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public String[] list(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean mkdir(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean mkdirs(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean renameTo(String path, String dest) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeString(dest);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean setLastModified(String path, long time) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeLong(time);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean setReadOnly(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean setWritable(String path, boolean writable, boolean ownerOnly) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(writable ? 1 : 0);
                    _data.writeInt(ownerOnly ? 1 : 0);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean setReadable(String path, boolean readable, boolean ownerOnly) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(readable ? 1 : 0);
                    _data.writeInt(ownerOnly ? 1 : 0);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean setExecutable(String path, boolean executable, boolean ownerOnly) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(executable ? 1 : 0);
                    _data.writeInt(ownerOnly ? 1 : 0);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readInt() != 0;
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public boolean checkAccess(String path, int access) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(access);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                    boolean _status = _reply.readInt() != 0;
                    return _status;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public long getTotalSpace(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public long getFreeSpace(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public long getUsableSpace(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public int getMode(String path) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult createLink(String link, String target, boolean soft) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(link);
                    _data.writeString(target);
                    _data.writeInt(soft ? 1 : 0);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public void register(IBinder client) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeStrongBinder(client);
                    this.mRemote.transact(24, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult openChannel(String path, int mode, String fifo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(mode);
                    _data.writeString(fifo);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult openReadStream(String path, ParcelFileDescriptor fd) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _Parcel.writeTypedObject(_data, fd, 0);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult openWriteStream(String path, ParcelFileDescriptor fd, boolean append) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeString(path);
                    _Parcel.writeTypedObject(_data, fd, 0);
                    _data.writeInt(append ? 1 : 0);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public void close(int handle) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeInt(handle);
                    this.mRemote.transact(28, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult pread(int handle, int len, long offset) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeInt(handle);
                    _data.writeInt(len);
                    _data.writeLong(offset);
                    this.mRemote.transact(Stub.TRANSACTION_pread, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult pwrite(int handle, int len, long offset) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeInt(handle);
                    _data.writeInt(len);
                    _data.writeLong(offset);
                    this.mRemote.transact(30, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult lseek(int handle, long offset, int whence) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeInt(handle);
                    _data.writeLong(offset);
                    _data.writeInt(whence);
                    this.mRemote.transact(31, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult size(int handle) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeInt(handle);
                    this.mRemote.transact(32, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult ftruncate(int handle, long length) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeInt(handle);
                    _data.writeLong(length);
                    this.mRemote.transact(33, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.topjohnwu.superuser.internal.IFileSystemService
            public IOResult sync(int handle, boolean metadata) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFileSystemService.DESCRIPTOR);
                    _data.writeInt(handle);
                    _data.writeInt(metadata ? 1 : 0);
                    this.mRemote.transact(34, _data, _reply, 0);
                    _reply.readException();
                    IOResult _result = (IOResult) _Parcel.readTypedObject(_reply, IOResult.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }

    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
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
