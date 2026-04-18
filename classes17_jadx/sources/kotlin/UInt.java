package kotlin;

import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;

/* compiled from: UInt.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 {2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001{B\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u0010\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0005J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u001a\u0010\u000fJ\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001b\u0010\u000bJ\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b\u001e\u0010\u0016J\u001a\u0010\u001f\u001a\u00020 2\b\u0010\t\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\b¢\u0006\u0004\b%\u0010\u000fJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b&\u0010\u000bJ\u0018\u0010$\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b'\u0010\u001dJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b(\u0010\u0016J\u0010\u0010)\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b*\u0010\u0005J\u0013\u0010+\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b,\u0010\u0005J\u0013\u0010-\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b.\u0010\u0005J\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b0\u0010\u000fJ\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b1\u0010\u000bJ\u0018\u0010/\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b2\u0010\u001dJ\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\b3\u0010\u0016J\u0018\u00104\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0087\b¢\u0006\u0004\b5\u00106J\u0018\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b7\u0010\u000bJ\u0018\u00104\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b8\u0010\u001dJ\u0018\u00104\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\b¢\u0006\u0004\b9\u0010:J\u0018\u0010;\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\b<\u0010\u000bJ\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b>\u0010\u000fJ\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b?\u0010\u000bJ\u0018\u0010=\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b@\u0010\u001dJ\u0018\u0010=\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bA\u0010\u0016J\u0018\u0010B\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bD\u0010EJ\u0018\u0010F\u001a\u00020C2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bG\u0010EJ\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\bI\u0010\u000fJ\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bJ\u0010\u000bJ\u0018\u0010H\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\bK\u0010\u001dJ\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bL\u0010\u0016J\u001b\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0003H\u0087\fø\u0001\u0000¢\u0006\u0004\bO\u0010\u000bJ\u001b\u0010P\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0003H\u0087\fø\u0001\u0000¢\u0006\u0004\bQ\u0010\u000bJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\bS\u0010\u000fJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bT\u0010\u000bJ\u0018\u0010R\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\bU\u0010\u001dJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0014H\u0087\n¢\u0006\u0004\bV\u0010\u0016J\u0010\u0010W\u001a\u00020XH\u0087\b¢\u0006\u0004\bY\u0010ZJ\u0010\u0010[\u001a\u00020\\H\u0087\b¢\u0006\u0004\b]\u0010^J\u0010\u0010_\u001a\u00020`H\u0087\b¢\u0006\u0004\ba\u0010bJ\u0010\u0010c\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bd\u0010\u0005J\u0010\u0010e\u001a\u00020fH\u0087\b¢\u0006\u0004\bg\u0010hJ\u0010\u0010i\u001a\u00020jH\u0087\b¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020nH\u0016¢\u0006\u0004\bo\u0010pJ\u0013\u0010q\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\br\u0010ZJ\u0013\u0010s\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\bt\u0010\u0005J\u0013\u0010u\u001a\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\bv\u0010hJ\u0013\u0010w\u001a\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\bx\u0010lJ\u0018\u0010y\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bz\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0004\n\u0002\b!¨\u0006|"}, d2 = {"Lkotlin/UInt;", "", "data", "", "constructor-impl", "(I)I", "getData$annotations", "()V", "and", "other", "and-WZ4Q5Ns", "(II)I", "compareTo", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "compareTo-WZ4Q5Ns", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "dec", "dec-pVg5ArA", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(IJ)J", "div-xj2QHRw", "equals", "", "", "equals-impl", "(ILjava/lang/Object;)Z", "floorDiv", "floorDiv-7apg3OU", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "floorDiv-xj2QHRw", "hashCode", "hashCode-impl", "inc", "inc-pVg5ArA", "inv", "inv-pVg5ArA", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "mod", "mod-7apg3OU", "(IB)B", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "mod-xj2QHRw", "(IS)S", "or", "or-WZ4Q5Ns", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-WZ4Q5Ns", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "shl", "bitCount", "shl-pVg5ArA", "shr", "shr-pVg5ArA", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(I)B", "toDouble", "", "toDouble-impl", "(I)D", "toFloat", "", "toFloat-impl", "(I)F", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(I)J", "toShort", "", "toShort-impl", "(I)S", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-WZ4Q5Ns", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
@JvmInline
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class UInt implements Comparable<UInt> {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    /* renamed from: box-impl */
    public static final /* synthetic */ UInt m1102boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: constructor-impl */
    public static int m1108constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl */
    public static boolean m1114equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m1115equalsimpl0(int i, int i2) {
        return i == i2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m1120hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m1114equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1120hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ int getData() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(getData(), uInt.getData());
    }

    private /* synthetic */ UInt(int data) {
        this.data = data;
    }

    /* compiled from: UInt.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0005R\u0013\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b!¨\u0006\n"}, d2 = {"Lkotlin/UInt$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UInt;", "I", "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m1103compareTo7apg3OU(int arg0, byte other) {
        return Integer.compareUnsigned(arg0, m1108constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: compareTo-xj2QHRw */
    private static final int m1107compareToxj2QHRw(int arg0, short other) {
        return Integer.compareUnsigned(arg0, m1108constructorimpl(65535 & other));
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private int m1105compareToWZ4Q5Ns(int other) {
        return UnsignedKt.uintCompare(getData(), other);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static int m1106compareToWZ4Q5Ns(int arg0, int other) {
        return UnsignedKt.uintCompare(arg0, other);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m1104compareToVKZWuLQ(int arg0, long other) {
        return Long.compareUnsigned(ULong.m1187constructorimpl(arg0 & 4294967295L), other);
    }

    /* renamed from: plus-7apg3OU */
    private static final int m1132plus7apg3OU(int arg0, byte other) {
        return m1108constructorimpl(m1108constructorimpl(other & UByte.MAX_VALUE) + arg0);
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m1135plusxj2QHRw(int arg0, short other) {
        return m1108constructorimpl(m1108constructorimpl(65535 & other) + arg0);
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m1134plusWZ4Q5Ns(int arg0, int other) {
        return m1108constructorimpl(arg0 + other);
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m1133plusVKZWuLQ(int arg0, long other) {
        return ULong.m1187constructorimpl(ULong.m1187constructorimpl(arg0 & 4294967295L) + other);
    }

    /* renamed from: minus-7apg3OU */
    private static final int m1123minus7apg3OU(int arg0, byte other) {
        return m1108constructorimpl(arg0 - m1108constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m1126minusxj2QHRw(int arg0, short other) {
        return m1108constructorimpl(arg0 - m1108constructorimpl(65535 & other));
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m1125minusWZ4Q5Ns(int arg0, int other) {
        return m1108constructorimpl(arg0 - other);
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m1124minusVKZWuLQ(int arg0, long other) {
        return ULong.m1187constructorimpl(ULong.m1187constructorimpl(arg0 & 4294967295L) - other);
    }

    /* renamed from: times-7apg3OU */
    private static final int m1144times7apg3OU(int arg0, byte other) {
        return m1108constructorimpl(m1108constructorimpl(other & UByte.MAX_VALUE) * arg0);
    }

    /* renamed from: times-xj2QHRw */
    private static final int m1147timesxj2QHRw(int arg0, short other) {
        return m1108constructorimpl(m1108constructorimpl(65535 & other) * arg0);
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m1146timesWZ4Q5Ns(int arg0, int other) {
        return m1108constructorimpl(arg0 * other);
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m1145timesVKZWuLQ(int arg0, long other) {
        return ULong.m1187constructorimpl(ULong.m1187constructorimpl(arg0 & 4294967295L) * other);
    }

    /* renamed from: div-7apg3OU */
    private static final int m1110div7apg3OU(int arg0, byte other) {
        return Integer.divideUnsigned(arg0, m1108constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: div-xj2QHRw */
    private static final int m1113divxj2QHRw(int arg0, short other) {
        return Integer.divideUnsigned(arg0, m1108constructorimpl(65535 & other));
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m1112divWZ4Q5Ns(int arg0, int other) {
        return UnsignedKt.m1364uintDivideJ1ME1BU(arg0, other);
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m1111divVKZWuLQ(int arg0, long other) {
        return Long.divideUnsigned(ULong.m1187constructorimpl(arg0 & 4294967295L), other);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m1138rem7apg3OU(int arg0, byte other) {
        return Integer.remainderUnsigned(arg0, m1108constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m1141remxj2QHRw(int arg0, short other) {
        return Integer.remainderUnsigned(arg0, m1108constructorimpl(65535 & other));
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m1140remWZ4Q5Ns(int arg0, int other) {
        return UnsignedKt.m1365uintRemainderJ1ME1BU(arg0, other);
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m1139remVKZWuLQ(int arg0, long other) {
        return Long.remainderUnsigned(ULong.m1187constructorimpl(arg0 & 4294967295L), other);
    }

    /* renamed from: floorDiv-7apg3OU */
    private static final int m1116floorDiv7apg3OU(int arg0, byte other) {
        return Integer.divideUnsigned(arg0, m1108constructorimpl(other & UByte.MAX_VALUE));
    }

    /* renamed from: floorDiv-xj2QHRw */
    private static final int m1119floorDivxj2QHRw(int arg0, short other) {
        return Integer.divideUnsigned(arg0, m1108constructorimpl(65535 & other));
    }

    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m1118floorDivWZ4Q5Ns(int arg0, int other) {
        return Integer.divideUnsigned(arg0, other);
    }

    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m1117floorDivVKZWuLQ(int arg0, long other) {
        return Long.divideUnsigned(ULong.m1187constructorimpl(arg0 & 4294967295L), other);
    }

    /* renamed from: mod-7apg3OU */
    private static final byte m1127mod7apg3OU(int arg0, byte other) {
        return UByte.m1031constructorimpl((byte) Integer.remainderUnsigned(arg0, m1108constructorimpl(other & UByte.MAX_VALUE)));
    }

    /* renamed from: mod-xj2QHRw */
    private static final short m1130modxj2QHRw(int arg0, short other) {
        return UShort.m1294constructorimpl((short) Integer.remainderUnsigned(arg0, m1108constructorimpl(65535 & other)));
    }

    /* renamed from: mod-WZ4Q5Ns */
    private static final int m1129modWZ4Q5Ns(int arg0, int other) {
        return Integer.remainderUnsigned(arg0, other);
    }

    /* renamed from: mod-VKZWuLQ */
    private static final long m1128modVKZWuLQ(int arg0, long other) {
        return Long.remainderUnsigned(ULong.m1187constructorimpl(arg0 & 4294967295L), other);
    }

    /* renamed from: inc-pVg5ArA */
    private static final int m1121incpVg5ArA(int arg0) {
        return m1108constructorimpl(arg0 + 1);
    }

    /* renamed from: dec-pVg5ArA */
    private static final int m1109decpVg5ArA(int arg0) {
        return m1108constructorimpl(arg0 - 1);
    }

    /* renamed from: rangeTo-WZ4Q5Ns */
    private static final UIntRange m1136rangeToWZ4Q5Ns(int arg0, int other) {
        return new UIntRange(arg0, other, null);
    }

    /* renamed from: rangeUntil-WZ4Q5Ns */
    private static final UIntRange m1137rangeUntilWZ4Q5Ns(int arg0, int other) {
        return URangesKt.m2282untilJ1ME1BU(arg0, other);
    }

    /* renamed from: shl-pVg5ArA */
    private static final int m1142shlpVg5ArA(int arg0, int bitCount) {
        return m1108constructorimpl(arg0 << bitCount);
    }

    /* renamed from: shr-pVg5ArA */
    private static final int m1143shrpVg5ArA(int arg0, int bitCount) {
        return m1108constructorimpl(arg0 >>> bitCount);
    }

    /* renamed from: and-WZ4Q5Ns */
    private static final int m1101andWZ4Q5Ns(int arg0, int other) {
        return m1108constructorimpl(arg0 & other);
    }

    /* renamed from: or-WZ4Q5Ns */
    private static final int m1131orWZ4Q5Ns(int arg0, int other) {
        return m1108constructorimpl(arg0 | other);
    }

    /* renamed from: xor-WZ4Q5Ns */
    private static final int m1159xorWZ4Q5Ns(int arg0, int other) {
        return m1108constructorimpl(arg0 ^ other);
    }

    /* renamed from: inv-pVg5ArA */
    private static final int m1122invpVg5ArA(int arg0) {
        return m1108constructorimpl(~arg0);
    }

    /* renamed from: toByte-impl */
    private static final byte m1148toByteimpl(int arg0) {
        return (byte) arg0;
    }

    /* renamed from: toShort-impl */
    private static final short m1153toShortimpl(int arg0) {
        return (short) arg0;
    }

    /* renamed from: toInt-impl */
    private static final int m1151toIntimpl(int arg0) {
        return arg0;
    }

    /* renamed from: toLong-impl */
    private static final long m1152toLongimpl(int arg0) {
        return arg0 & 4294967295L;
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m1155toUBytew2LRezQ(int arg0) {
        return UByte.m1031constructorimpl((byte) arg0);
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m1158toUShortMh2AYeg(int arg0) {
        return UShort.m1294constructorimpl((short) arg0);
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m1156toUIntpVg5ArA(int arg0) {
        return arg0;
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m1157toULongsVKNKU(int arg0) {
        return ULong.m1187constructorimpl(arg0 & 4294967295L);
    }

    /* renamed from: toFloat-impl */
    private static final float m1150toFloatimpl(int arg0) {
        return (float) UnsignedKt.uintToDouble(arg0);
    }

    /* renamed from: toDouble-impl */
    private static final double m1149toDoubleimpl(int arg0) {
        return UnsignedKt.uintToDouble(arg0);
    }

    /* renamed from: toString-impl */
    public static String m1154toStringimpl(int arg0) {
        return String.valueOf(arg0 & 4294967295L);
    }

    public String toString() {
        return m1154toStringimpl(this.data);
    }
}
