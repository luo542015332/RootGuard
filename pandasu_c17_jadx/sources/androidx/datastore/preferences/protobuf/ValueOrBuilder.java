package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Value;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public interface ValueOrBuilder extends MessageLiteOrBuilder {
    boolean getBoolValue();

    Value.KindCase getKindCase();

    ListValue getListValue();

    NullValue getNullValue();

    int getNullValueValue();

    double getNumberValue();

    String getStringValue();

    ByteString getStringValueBytes();

    Struct getStructValue();

    boolean hasListValue();

    boolean hasStructValue();
}
