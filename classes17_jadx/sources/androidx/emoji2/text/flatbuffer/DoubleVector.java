package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class DoubleVector extends BaseVector {
    public DoubleVector __assign(int _vector, ByteBuffer _bb) {
        __reset(_vector, 8, _bb);
        return this;
    }

    public double get(int j) {
        return this.bb.getDouble(__element(j));
    }
}
