package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;

/* compiled from: EditingBuffer.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"updateRangeAfterDelete", "Landroidx/compose/ui/text/TextRange;", "target", "deleted", "updateRangeAfterDelete-pWDy79M", "(JJ)J", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class EditingBufferKt {
    /* renamed from: updateRangeAfterDelete-pWDy79M, reason: not valid java name */
    public static final long m285updateRangeAfterDeletepWDy79M(long target, long deleted) {
        int targetMin = TextRange.m140getMinimpl(target);
        int targetMax = TextRange.m139getMaximpl(target);
        if (TextRange.m144intersects5zctL8(deleted, target)) {
            if (TextRange.m132contains5zctL8(deleted, target)) {
                targetMin = TextRange.m140getMinimpl(deleted);
                targetMax = targetMin;
            } else if (TextRange.m132contains5zctL8(target, deleted)) {
                targetMax -= TextRange.m138getLengthimpl(deleted);
            } else if (TextRange.m133containsimpl(deleted, targetMin)) {
                targetMin = TextRange.m140getMinimpl(deleted);
                targetMax -= TextRange.m138getLengthimpl(deleted);
            } else {
                targetMax = TextRange.m140getMinimpl(deleted);
            }
        } else if (targetMax > TextRange.m140getMinimpl(deleted)) {
            targetMin -= TextRange.m138getLengthimpl(deleted);
            targetMax -= TextRange.m138getLengthimpl(deleted);
        }
        return TextRangeKt.TextRange(targetMin, targetMax);
    }
}
