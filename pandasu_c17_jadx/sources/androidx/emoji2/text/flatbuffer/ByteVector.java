package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import kotlin.UByte;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class ByteVector extends BaseVector {
    public ByteVector __assign(int vector, ByteBuffer bb) {
        __reset(vector, 1, bb);
        return this;
    }

    public byte get(int j) {
        return this.bb.get(__element(j));
    }

    public int getAsUnsigned(int j) {
        return get(j) & UByte.MAX_VALUE;
    }
}
