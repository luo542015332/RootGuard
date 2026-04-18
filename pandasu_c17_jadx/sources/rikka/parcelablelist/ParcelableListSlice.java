package rikka.parcelablelist;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class ParcelableListSlice<T extends Parcelable> extends BaseParcelableListSlice<T> {
    public static final Parcelable.Creator<ParcelableListSlice> CREATOR = new Parcelable.Creator<ParcelableListSlice>() { // from class: rikka.parcelablelist.ParcelableListSlice.1
        @Override // android.os.Parcelable.Creator
        public ParcelableListSlice createFromParcel(Parcel in) {
            return new ParcelableListSlice(in);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableListSlice[] newArray(int size) {
            return new ParcelableListSlice[size];
        }
    };

    public static <T extends Parcelable> ParcelableListSlice<T> emptyList() {
        return new ParcelableListSlice<>(Collections.emptyList());
    }

    public ParcelableListSlice(List<T> list) {
        super(list);
    }

    private ParcelableListSlice(Parcel in) {
        super(in);
    }

    @Override // rikka.parcelablelist.BaseParcelableListSlice
    public T readElement(Parcel parcel) {
        return (T) parcel.readParcelable(ParcelableListSlice.class.getClassLoader());
    }

    @Override // rikka.parcelablelist.BaseParcelableListSlice
    public void writeElement(T parcelable, Parcel dest, int writeFlags) {
        dest.writeParcelable(parcelable, writeFlags);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        int contents = 0;
        List<T> list = getList();
        for (int i = 0; i < list.size(); i++) {
            contents |= ((Parcelable) list.get(i)).describeContents();
        }
        return contents;
    }
}
