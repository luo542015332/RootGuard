package rikka.parcelablelist;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class StringListSlice extends BaseParcelableListSlice<String> {
    public static final Parcelable.Creator<StringListSlice> CREATOR = new Parcelable.Creator<StringListSlice>() { // from class: rikka.parcelablelist.StringListSlice.1
        @Override // android.os.Parcelable.Creator
        public StringListSlice createFromParcel(Parcel in) {
            return new StringListSlice(in);
        }

        @Override // android.os.Parcelable.Creator
        public StringListSlice[] newArray(int size) {
            return new StringListSlice[size];
        }
    };

    public static StringListSlice emptyList() {
        return new StringListSlice((List<String>) Collections.emptyList());
    }

    public StringListSlice(List<String> list) {
        super(list);
    }

    private StringListSlice(Parcel in) {
        super(in);
    }

    @Override // rikka.parcelablelist.BaseParcelableListSlice
    public String readElement(Parcel in) {
        return in.readString();
    }

    @Override // rikka.parcelablelist.BaseParcelableListSlice
    public void writeElement(String string, Parcel dest, int writeFlags) {
        dest.writeString(string);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
