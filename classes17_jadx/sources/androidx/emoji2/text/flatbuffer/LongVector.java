package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class LongVector extends BaseVector {
    public LongVector __assign(int _vector, ByteBuffer _bb) {
        __reset(_vector, 8, _bb);
        return this;
    }

    public long get(int j) {
        return this.bb.getLong(__element(j));
    }
}
