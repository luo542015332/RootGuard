package kotlin.internal;

import kotlin.Metadata;
import kotlin.UInt;
import kotlin.ULong;

/* compiled from: UProgressionUtil.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m2220differenceModuloWZ9TVnA(int a, int b, int c) {
        int ac = Integer.remainderUnsigned(a, c);
        int bc = Integer.remainderUnsigned(b, c);
        return UInt.m1108constructorimpl(Integer.compareUnsigned(ac, bc) >= 0 ? ac - bc : UInt.m1108constructorimpl(ac - bc) + c);
    }

    /* renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m2221differenceModulosambcqE(long a, long b, long c) {
        long ac = Long.remainderUnsigned(a, c);
        long bc = Long.remainderUnsigned(b, c);
        return ULong.m1187constructorimpl(Long.compareUnsigned(ac, bc) >= 0 ? ac - bc : ULong.m1187constructorimpl(ac - bc) + c);
    }

    /* renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m2223getProgressionLastElementNkh28Cs(int start, int end, int step) {
        if (step > 0) {
            if (Integer.compareUnsigned(start, end) < 0) {
                return UInt.m1108constructorimpl(end - m2220differenceModuloWZ9TVnA(end, start, UInt.m1108constructorimpl(step)));
            }
        } else {
            if (step >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (Integer.compareUnsigned(start, end) > 0) {
                return UInt.m1108constructorimpl(m2220differenceModuloWZ9TVnA(start, end, UInt.m1108constructorimpl(-step)) + end);
            }
        }
        return end;
    }

    /* renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m2222getProgressionLastElement7ftBX0g(long start, long end, long step) {
        if (step > 0) {
            if (Long.compareUnsigned(start, end) < 0) {
                return ULong.m1187constructorimpl(end - m2221differenceModulosambcqE(end, start, ULong.m1187constructorimpl(step)));
            }
        } else {
            if (step >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (Long.compareUnsigned(start, end) > 0) {
                return ULong.m1187constructorimpl(m2221differenceModulosambcqE(start, end, ULong.m1187constructorimpl(-step)) + end);
            }
        }
        return end;
    }
}
