package kotlin;

/* compiled from: UNumbers.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b)\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u0005H\u0087\b¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\bH\u0087\b¢\u0006\u0004\b\t\u0010\n\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u000bH\u0087\b¢\u0006\u0004\b\f\u0010\r\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\u0002H\u0087\b¢\u0006\u0004\b\u000f\u0010\u0004\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\u0005H\u0087\b¢\u0006\u0004\b\u0010\u0010\u0007\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\bH\u0087\b¢\u0006\u0004\b\u0011\u0010\n\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\u000bH\u0087\b¢\u0006\u0004\b\u0012\u0010\r\u001a\u0014\u0010\u0013\u001a\u00020\u0001*\u00020\u0002H\u0087\b¢\u0006\u0004\b\u0014\u0010\u0004\u001a\u0014\u0010\u0013\u001a\u00020\u0001*\u00020\u0005H\u0087\b¢\u0006\u0004\b\u0015\u0010\u0007\u001a\u0014\u0010\u0013\u001a\u00020\u0001*\u00020\bH\u0087\b¢\u0006\u0004\b\u0016\u0010\n\u001a\u0014\u0010\u0013\u001a\u00020\u0001*\u00020\u000bH\u0087\b¢\u0006\u0004\b\u0017\u0010\r\u001a\u001c\u0010\u0018\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001c\u0010\u0018\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001c\u0010\u0018\u001a\u00020\b*\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001c\u0010\u0018\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b \u0010!\u001a\u001c\u0010\"\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b#\u0010\u001b\u001a\u001c\u0010\"\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b$\u0010\u001d\u001a\u001c\u0010\"\u001a\u00020\b*\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b%\u0010\u001f\u001a\u001c\u0010\"\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b&\u0010!\u001a\u0014\u0010'\u001a\u00020\u0002*\u00020\u0002H\u0087\b¢\u0006\u0004\b(\u0010)\u001a\u0014\u0010'\u001a\u00020\u0005*\u00020\u0005H\u0087\b¢\u0006\u0004\b*\u0010\u0007\u001a\u0014\u0010'\u001a\u00020\b*\u00020\bH\u0087\b¢\u0006\u0004\b+\u0010,\u001a\u0014\u0010'\u001a\u00020\u000b*\u00020\u000bH\u0087\b¢\u0006\u0004\b-\u0010.\u001a\u0014\u0010/\u001a\u00020\u0002*\u00020\u0002H\u0087\b¢\u0006\u0004\b0\u0010)\u001a\u0014\u0010/\u001a\u00020\u0005*\u00020\u0005H\u0087\b¢\u0006\u0004\b1\u0010\u0007\u001a\u0014\u0010/\u001a\u00020\b*\u00020\bH\u0087\b¢\u0006\u0004\b2\u0010,\u001a\u0014\u0010/\u001a\u00020\u000b*\u00020\u000bH\u0087\b¢\u0006\u0004\b3\u0010.¨\u00064"}, d2 = {"countLeadingZeroBits", "", "Lkotlin/UByte;", "countLeadingZeroBits-7apg3OU", "(B)I", "Lkotlin/UInt;", "countLeadingZeroBits-WZ4Q5Ns", "(I)I", "Lkotlin/ULong;", "countLeadingZeroBits-VKZWuLQ", "(J)I", "Lkotlin/UShort;", "countLeadingZeroBits-xj2QHRw", "(S)I", "countOneBits", "countOneBits-7apg3OU", "countOneBits-WZ4Q5Ns", "countOneBits-VKZWuLQ", "countOneBits-xj2QHRw", "countTrailingZeroBits", "countTrailingZeroBits-7apg3OU", "countTrailingZeroBits-WZ4Q5Ns", "countTrailingZeroBits-VKZWuLQ", "countTrailingZeroBits-xj2QHRw", "rotateLeft", "bitCount", "rotateLeft-LxnNnR4", "(BI)B", "rotateLeft-V7xB4Y4", "(II)I", "rotateLeft-JSWoG40", "(JI)J", "rotateLeft-olVBNx4", "(SI)S", "rotateRight", "rotateRight-LxnNnR4", "rotateRight-V7xB4Y4", "rotateRight-JSWoG40", "rotateRight-olVBNx4", "takeHighestOneBit", "takeHighestOneBit-7apg3OU", "(B)B", "takeHighestOneBit-WZ4Q5Ns", "takeHighestOneBit-VKZWuLQ", "(J)J", "takeHighestOneBit-xj2QHRw", "(S)S", "takeLowestOneBit", "takeLowestOneBit-7apg3OU", "takeLowestOneBit-WZ4Q5Ns", "takeLowestOneBit-VKZWuLQ", "takeLowestOneBit-xj2QHRw", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class UNumbersKt {
    /* renamed from: countOneBits-WZ4Q5Ns, reason: not valid java name */
    private static final int m1265countOneBitsWZ4Q5Ns(int $this$countOneBits_u2dWZ4Q5Ns) {
        return Integer.bitCount($this$countOneBits_u2dWZ4Q5Ns);
    }

    /* renamed from: countLeadingZeroBits-WZ4Q5Ns, reason: not valid java name */
    private static final int m1261countLeadingZeroBitsWZ4Q5Ns(int $this$countLeadingZeroBits_u2dWZ4Q5Ns) {
        return Integer.numberOfLeadingZeros($this$countLeadingZeroBits_u2dWZ4Q5Ns);
    }

    /* renamed from: countTrailingZeroBits-WZ4Q5Ns, reason: not valid java name */
    private static final int m1269countTrailingZeroBitsWZ4Q5Ns(int $this$countTrailingZeroBits_u2dWZ4Q5Ns) {
        return Integer.numberOfTrailingZeros($this$countTrailingZeroBits_u2dWZ4Q5Ns);
    }

    /* renamed from: takeHighestOneBit-WZ4Q5Ns, reason: not valid java name */
    private static final int m1281takeHighestOneBitWZ4Q5Ns(int $this$takeHighestOneBit_u2dWZ4Q5Ns) {
        return UInt.m1108constructorimpl(Integer.highestOneBit($this$takeHighestOneBit_u2dWZ4Q5Ns));
    }

    /* renamed from: takeLowestOneBit-WZ4Q5Ns, reason: not valid java name */
    private static final int m1285takeLowestOneBitWZ4Q5Ns(int $this$takeLowestOneBit_u2dWZ4Q5Ns) {
        return UInt.m1108constructorimpl(Integer.lowestOneBit($this$takeLowestOneBit_u2dWZ4Q5Ns));
    }

    /* renamed from: rotateLeft-V7xB4Y4, reason: not valid java name */
    private static final int m1273rotateLeftV7xB4Y4(int $this$rotateLeft_u2dV7xB4Y4, int bitCount) {
        return UInt.m1108constructorimpl(Integer.rotateLeft($this$rotateLeft_u2dV7xB4Y4, bitCount));
    }

    /* renamed from: rotateRight-V7xB4Y4, reason: not valid java name */
    private static final int m1277rotateRightV7xB4Y4(int $this$rotateRight_u2dV7xB4Y4, int bitCount) {
        return UInt.m1108constructorimpl(Integer.rotateRight($this$rotateRight_u2dV7xB4Y4, bitCount));
    }

    /* renamed from: countOneBits-VKZWuLQ, reason: not valid java name */
    private static final int m1264countOneBitsVKZWuLQ(long $this$countOneBits_u2dVKZWuLQ) {
        return Long.bitCount($this$countOneBits_u2dVKZWuLQ);
    }

    /* renamed from: countLeadingZeroBits-VKZWuLQ, reason: not valid java name */
    private static final int m1260countLeadingZeroBitsVKZWuLQ(long $this$countLeadingZeroBits_u2dVKZWuLQ) {
        return Long.numberOfLeadingZeros($this$countLeadingZeroBits_u2dVKZWuLQ);
    }

    /* renamed from: countTrailingZeroBits-VKZWuLQ, reason: not valid java name */
    private static final int m1268countTrailingZeroBitsVKZWuLQ(long $this$countTrailingZeroBits_u2dVKZWuLQ) {
        return Long.numberOfTrailingZeros($this$countTrailingZeroBits_u2dVKZWuLQ);
    }

    /* renamed from: takeHighestOneBit-VKZWuLQ, reason: not valid java name */
    private static final long m1280takeHighestOneBitVKZWuLQ(long $this$takeHighestOneBit_u2dVKZWuLQ) {
        return ULong.m1187constructorimpl(Long.highestOneBit($this$takeHighestOneBit_u2dVKZWuLQ));
    }

    /* renamed from: takeLowestOneBit-VKZWuLQ, reason: not valid java name */
    private static final long m1284takeLowestOneBitVKZWuLQ(long $this$takeLowestOneBit_u2dVKZWuLQ) {
        return ULong.m1187constructorimpl(Long.lowestOneBit($this$takeLowestOneBit_u2dVKZWuLQ));
    }

    /* renamed from: rotateLeft-JSWoG40, reason: not valid java name */
    private static final long m1271rotateLeftJSWoG40(long $this$rotateLeft_u2dJSWoG40, int bitCount) {
        return ULong.m1187constructorimpl(Long.rotateLeft($this$rotateLeft_u2dJSWoG40, bitCount));
    }

    /* renamed from: rotateRight-JSWoG40, reason: not valid java name */
    private static final long m1275rotateRightJSWoG40(long $this$rotateRight_u2dJSWoG40, int bitCount) {
        return ULong.m1187constructorimpl(Long.rotateRight($this$rotateRight_u2dJSWoG40, bitCount));
    }

    /* renamed from: countOneBits-7apg3OU, reason: not valid java name */
    private static final int m1263countOneBits7apg3OU(byte $this$countOneBits_u2d7apg3OU) {
        return Integer.bitCount(UInt.m1108constructorimpl($this$countOneBits_u2d7apg3OU & UByte.MAX_VALUE));
    }

    /* renamed from: countLeadingZeroBits-7apg3OU, reason: not valid java name */
    private static final int m1259countLeadingZeroBits7apg3OU(byte $this$countLeadingZeroBits_u2d7apg3OU) {
        return Integer.numberOfLeadingZeros($this$countLeadingZeroBits_u2d7apg3OU & UByte.MAX_VALUE) - 24;
    }

    /* renamed from: countTrailingZeroBits-7apg3OU, reason: not valid java name */
    private static final int m1267countTrailingZeroBits7apg3OU(byte $this$countTrailingZeroBits_u2d7apg3OU) {
        return Integer.numberOfTrailingZeros($this$countTrailingZeroBits_u2d7apg3OU | 256);
    }

    /* renamed from: takeHighestOneBit-7apg3OU, reason: not valid java name */
    private static final byte m1279takeHighestOneBit7apg3OU(byte $this$takeHighestOneBit_u2d7apg3OU) {
        return UByte.m1031constructorimpl((byte) Integer.highestOneBit($this$takeHighestOneBit_u2d7apg3OU & UByte.MAX_VALUE));
    }

    /* renamed from: takeLowestOneBit-7apg3OU, reason: not valid java name */
    private static final byte m1283takeLowestOneBit7apg3OU(byte $this$takeLowestOneBit_u2d7apg3OU) {
        return UByte.m1031constructorimpl((byte) Integer.lowestOneBit($this$takeLowestOneBit_u2d7apg3OU & UByte.MAX_VALUE));
    }

    /* renamed from: rotateLeft-LxnNnR4, reason: not valid java name */
    private static final byte m1272rotateLeftLxnNnR4(byte $this$rotateLeft_u2dLxnNnR4, int bitCount) {
        return UByte.m1031constructorimpl(NumbersKt.rotateLeft($this$rotateLeft_u2dLxnNnR4, bitCount));
    }

    /* renamed from: rotateRight-LxnNnR4, reason: not valid java name */
    private static final byte m1276rotateRightLxnNnR4(byte $this$rotateRight_u2dLxnNnR4, int bitCount) {
        return UByte.m1031constructorimpl(NumbersKt.rotateRight($this$rotateRight_u2dLxnNnR4, bitCount));
    }

    /* renamed from: countOneBits-xj2QHRw, reason: not valid java name */
    private static final int m1266countOneBitsxj2QHRw(short $this$countOneBits_u2dxj2QHRw) {
        return Integer.bitCount(UInt.m1108constructorimpl(65535 & $this$countOneBits_u2dxj2QHRw));
    }

    /* renamed from: countLeadingZeroBits-xj2QHRw, reason: not valid java name */
    private static final int m1262countLeadingZeroBitsxj2QHRw(short $this$countLeadingZeroBits_u2dxj2QHRw) {
        return Integer.numberOfLeadingZeros(65535 & $this$countLeadingZeroBits_u2dxj2QHRw) - 16;
    }

    /* renamed from: countTrailingZeroBits-xj2QHRw, reason: not valid java name */
    private static final int m1270countTrailingZeroBitsxj2QHRw(short $this$countTrailingZeroBits_u2dxj2QHRw) {
        return Integer.numberOfTrailingZeros(65536 | $this$countTrailingZeroBits_u2dxj2QHRw);
    }

    /* renamed from: takeHighestOneBit-xj2QHRw, reason: not valid java name */
    private static final short m1282takeHighestOneBitxj2QHRw(short $this$takeHighestOneBit_u2dxj2QHRw) {
        return UShort.m1294constructorimpl((short) Integer.highestOneBit(65535 & $this$takeHighestOneBit_u2dxj2QHRw));
    }

    /* renamed from: takeLowestOneBit-xj2QHRw, reason: not valid java name */
    private static final short m1286takeLowestOneBitxj2QHRw(short $this$takeLowestOneBit_u2dxj2QHRw) {
        return UShort.m1294constructorimpl((short) Integer.lowestOneBit(65535 & $this$takeLowestOneBit_u2dxj2QHRw));
    }

    /* renamed from: rotateLeft-olVBNx4, reason: not valid java name */
    private static final short m1274rotateLeftolVBNx4(short $this$rotateLeft_u2dolVBNx4, int bitCount) {
        return UShort.m1294constructorimpl(NumbersKt.rotateLeft($this$rotateLeft_u2dolVBNx4, bitCount));
    }

    /* renamed from: rotateRight-olVBNx4, reason: not valid java name */
    private static final short m1278rotateRightolVBNx4(short $this$rotateRight_u2dolVBNx4, int bitCount) {
        return UShort.m1294constructorimpl(NumbersKt.rotateRight($this$rotateRight_u2dolVBNx4, bitCount));
    }
}
