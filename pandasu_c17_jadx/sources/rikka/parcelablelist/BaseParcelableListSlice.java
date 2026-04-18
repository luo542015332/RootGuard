package rikka.parcelablelist;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public abstract class BaseParcelableListSlice<T> implements Parcelable {
    private static final boolean DEBUG = false;
    private static final int MAX_IPC_SIZE = 65536;
    private static final String TAG = "ParcelableListSlice";
    private final List<T> mList;

    public abstract T readElement(Parcel parcel);

    public abstract void writeElement(T t, Parcel parcel, int i);

    public BaseParcelableListSlice(List<T> list) {
        this.mList = list;
    }

    public final List<T> getList() {
        return this.mList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseParcelableListSlice(Parcel in) {
        int size = in.readInt();
        if (size == -1) {
            this.mList = null;
            return;
        }
        ArrayList arrayList = new ArrayList(size);
        this.mList = arrayList;
        readSliceFromParcel(arrayList, in);
        if (arrayList.size() >= size) {
            return;
        }
        IBinder binder = in.readStrongBinder();
        do {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                try {
                    binder.transact(1, data, reply, 0);
                    readSliceFromParcel(this.mList, reply);
                    data.recycle();
                    reply.recycle();
                } catch (RemoteException e) {
                    Log.w(TAG, "Failure retrieving array; only received " + this.mList.size() + " of " + size, e);
                    data.recycle();
                    reply.recycle();
                    return;
                }
            } catch (Throwable th) {
                data.recycle();
                reply.recycle();
                throw th;
            }
        } while (this.mList.size() < size);
    }

    private void readSliceFromParcel(List<T> list, Parcel in) {
        int size = in.readInt();
        for (int i = 0; i < size; i++) {
            list.add(readElement(in));
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, final int flags) {
        List<T> list = this.mList;
        if (list == null) {
            dest.writeInt(-1);
            return;
        }
        int size = list.size();
        dest.writeInt(size);
        final Iterator<T> iterator = this.mList.iterator();
        writeSliceToParcel(iterator, dest, flags);
        if (!iterator.hasNext()) {
            return;
        }
        IBinder binder = new Binder() { // from class: rikka.parcelablelist.BaseParcelableListSlice.1
            @Override // android.os.Binder
            protected boolean onTransact(int code, Parcel data, Parcel reply, int flags2) {
                if (code == 1 && reply != null) {
                    BaseParcelableListSlice.this.writeSliceToParcel(iterator, reply, flags);
                    return true;
                }
                return false;
            }
        };
        dest.writeStrongBinder(binder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeSliceToParcel(Iterator<T> iterator, Parcel dest, int flags) {
        int startPosition = dest.dataPosition();
        dest.writeInt(0);
        int size = 0;
        while (iterator.hasNext() && dest.dataSize() < 65536) {
            writeElement(iterator.next(), dest, flags);
            size++;
        }
        int position = dest.dataPosition();
        dest.setDataPosition(startPosition);
        dest.writeInt(size);
        dest.setDataPosition(position);
    }
}
