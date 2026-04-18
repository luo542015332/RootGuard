package kotlin.time;

import kotlin.Metadata;

/* compiled from: TimeSources.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002¢\u0006\u0004\b\f\u0010\nJ\b\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "()V", "reading", "", "overflow", "", "duration", "Lkotlin/time/Duration;", "overflow-LRDsOJo", "(J)V", "plusAssign", "plusAssign-LRDsOJo", "read", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
        markNow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.time.AbstractLongTimeSource
    /* renamed from: read, reason: from getter */
    public long getReading() {
        return this.reading;
    }

    /* renamed from: plusAssign-LRDsOJo, reason: not valid java name */
    public final void m2475plusAssignLRDsOJo(long duration) {
        long longDelta = Duration.m2385toLongimpl(duration, getUnit());
        int $i$f$isSaturated = ((longDelta - 1) | 1) == Long.MAX_VALUE ? 1 : 0;
        if ($i$f$isSaturated == 0) {
            long j = this.reading;
            long newReading = j + longDelta;
            if ((j ^ longDelta) >= 0 && (j ^ newReading) < 0) {
                m2474overflowLRDsOJo(duration);
            }
            this.reading = newReading;
            return;
        }
        long half = Duration.m2342divUwyO8pc(duration, 2);
        long $this$isSaturated$iv = Duration.m2385toLongimpl(half, getUnit());
        if (!((($this$isSaturated$iv - 1) | 1) == Long.MAX_VALUE)) {
            long readingBefore = this.reading;
            try {
                m2475plusAssignLRDsOJo(half);
                m2475plusAssignLRDsOJo(Duration.m2374minusLRDsOJo(duration, half));
                return;
            } catch (IllegalStateException e) {
                this.reading = readingBefore;
                throw e;
            }
        }
        m2474overflowLRDsOJo(duration);
    }

    /* renamed from: overflow-LRDsOJo, reason: not valid java name */
    private final void m2474overflowLRDsOJo(long duration) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + DurationUnitKt.shortName(getUnit()) + " is advanced by " + ((Object) Duration.m2388toStringimpl(duration)) + '.');
    }
}
