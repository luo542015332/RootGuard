package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class ByteBufferUtil {
    public static int getSizePrefix(ByteBuffer bb) {
        return bb.getInt(bb.position());
    }

    public static ByteBuffer removeSizePrefix(ByteBuffer bb) {
        ByteBuffer s = bb.duplicate();
        s.position(s.position() + 4);
        return s;
    }
}
