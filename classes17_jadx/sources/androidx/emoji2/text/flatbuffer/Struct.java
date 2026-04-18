package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class Struct {
    protected ByteBuffer bb;
    protected int bb_pos;

    protected void __reset(int _i, ByteBuffer _bb) {
        this.bb = _bb;
        if (_bb != null) {
            this.bb_pos = _i;
        } else {
            this.bb_pos = 0;
        }
    }

    public void __reset() {
        __reset(0, null);
    }
}
