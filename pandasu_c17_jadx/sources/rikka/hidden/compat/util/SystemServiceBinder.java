package rikka.hidden.compat.util;

import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ServiceManager;
import java.io.FileDescriptor;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class SystemServiceBinder<T extends IInterface> implements IBinder, IBinder.DeathRecipient {
    private static OnGetBinderListener onGetBinderListener;
    private IBinder binderCache;
    private final String name;
    private T serviceCache;
    private final ServiceCreator<T> serviceCreator;

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public interface OnGetBinderListener {
        IBinder onGetBinder(IBinder iBinder);
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public interface ServiceCreator<T> {
        T create(IBinder iBinder);
    }

    public static void setOnGetBinderListener(OnGetBinderListener onGetBinderListener2) {
        onGetBinderListener = onGetBinderListener2;
    }

    public SystemServiceBinder(String name, ServiceCreator<T> serviceCreator) {
        this.name = name;
        this.serviceCreator = serviceCreator;
    }

    public IBinder getBinder() {
        IBinder iBinder = this.binderCache;
        if (iBinder != null) {
            return iBinder;
        }
        IBinder binder = ServiceManager.getService(this.name);
        if (binder == null) {
            return null;
        }
        OnGetBinderListener onGetBinderListener2 = onGetBinderListener;
        if (onGetBinderListener2 != null) {
            binder = onGetBinderListener2.onGetBinder(binder);
        }
        try {
            binder.linkToDeath(this, 0);
        } catch (Throwable th) {
        }
        this.binderCache = binder;
        return binder;
    }

    public T get() {
        T t = this.serviceCache;
        if (t != null) {
            return t;
        }
        IBinder binder = getBinder();
        if (binder == null) {
            return null;
        }
        T create = this.serviceCreator.create(binder);
        this.serviceCache = create;
        return create;
    }

    @Override // android.os.IBinder
    public boolean transact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        IBinder binder = getBinder();
        if (binder == null) {
            return false;
        }
        try {
            return binder.transact(code, data, reply, flags);
        } catch (DeadObjectException e) {
            this.binderCache = null;
            IBinder newBinder = getBinder();
            if (newBinder == null) {
                return false;
            }
            return binder.transact(code, data, reply, flags);
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.binderCache.unlinkToDeath(this, 0);
        this.binderCache = null;
        this.serviceCache = null;
    }

    @Override // android.os.IBinder
    public String getInterfaceDescriptor() throws RemoteException {
        IBinder binder = getBinder();
        if (binder != null) {
            return binder.getInterfaceDescriptor();
        }
        return null;
    }

    @Override // android.os.IBinder
    public boolean pingBinder() {
        IBinder binder = getBinder();
        if (binder != null) {
            return binder.pingBinder();
        }
        return false;
    }

    @Override // android.os.IBinder
    public boolean isBinderAlive() {
        IBinder binder = getBinder();
        if (binder != null) {
            return binder.isBinderAlive();
        }
        return false;
    }

    @Override // android.os.IBinder
    public IInterface queryLocalInterface(String s) {
        IBinder binder = getBinder();
        if (binder != null) {
            return binder.queryLocalInterface(s);
        }
        return null;
    }

    @Override // android.os.IBinder
    public void dump(FileDescriptor fd, String[] args) throws RemoteException {
        IBinder binder = getBinder();
        if (binder != null) {
            binder.dump(fd, args);
        }
    }

    @Override // android.os.IBinder
    public void dumpAsync(FileDescriptor fd, String[] args) throws RemoteException {
        IBinder binder = getBinder();
        if (binder != null) {
            binder.dumpAsync(fd, args);
        }
    }

    @Override // android.os.IBinder
    public void linkToDeath(IBinder.DeathRecipient recipient, int flags) throws RemoteException {
        IBinder binder = getBinder();
        if (binder != null) {
            binder.linkToDeath(recipient, flags);
        }
    }

    @Override // android.os.IBinder
    public boolean unlinkToDeath(IBinder.DeathRecipient recipient, int flags) {
        IBinder binder = getBinder();
        if (binder != null) {
            return binder.unlinkToDeath(recipient, flags);
        }
        return false;
    }
}
