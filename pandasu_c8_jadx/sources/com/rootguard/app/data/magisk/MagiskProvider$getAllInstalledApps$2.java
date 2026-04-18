package com.rootguard.app.data.magisk;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: MagiskProvider.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/rootguard/app/data/magisk/InstalledAppInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.data.magisk.MagiskProvider$getAllInstalledApps$2", f = "MagiskProvider.kt", i = {0, 0, 1, 1, 2, 2}, l = {643, 652, 657}, m = "invokeSuspend", n = {"apps", "pm", "apps", "pm", "apps", "pm"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
final class MagiskProvider$getAllInstalledApps$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends InstalledAppInfo>>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ MagiskProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagiskProvider$getAllInstalledApps$2(MagiskProvider magiskProvider, Continuation<? super MagiskProvider$getAllInstalledApps$2> continuation) {
        super(2, continuation);
        this.this$0 = magiskProvider;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MagiskProvider$getAllInstalledApps$2(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<InstalledAppInfo>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:42|(8:43|44|45|46|47|48|49|50)|(4:52|53|54|(5:56|57|58|59|(15:63|64|65|66|67|68|69|70|71|(1:73)(1:86)|74|75|76|77|78))(1:125))|129|64|65|66|67|68|69|70|71|(0)(0)|74|75|76|77|78) */
    /* JADX WARN: Can't wrap try/catch for region: R(21:398|399|400|401|402|403|(4:405|406|407|(14:413|414|415|416|417|418|419|420|421|(1:423)(1:433)|424|425|426|427))(1:472)|468|414|415|416|417|418|419|420|421|(0)(0)|424|425|426|427) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x03c4, code lost:
    
        r24 = r5.getApplicationLabel(r15).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x03cf, code lost:
    
        r36 = r24;
        r24 = r5;
        r5 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x03f6, code lost:
    
        r15 = r5;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x03cd, code lost:
    
        r24 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x03de, code lost:
    
        r24 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x03e0, code lost:
    
        com.rootguard.app.utils.Logger.INSTANCE.w("All methods failed to get app name for " + r29 + ", using package name");
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x03f5, code lost:
    
        r5 = r29;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x03fe, code lost:
    
        com.rootguard.app.utils.Logger.INSTANCE.w("Unexpected error getting app name for " + r29 + ", using package name");
        r15 = r29;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x03fc, code lost:
    
        r24 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x039e, code lost:
    
        r13 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x0b52, code lost:
    
        r9 = r5.getApplicationInfo(r15, 8320);
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r13);
        r15 = r5.getApplicationLabel(r9).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0b61, code lost:
    
        r26 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x0b67, code lost:
    
        r9 = r5.getPackageInfo(r15, 0).applicationInfo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0b6d, code lost:
    
        if (r9 != null) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x0b6f, code lost:
    
        r21 = r5.getApplicationLabel(r9).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0b7a, code lost:
    
        r26 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0b9e, code lost:
    
        r15 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0b78, code lost:
    
        r21 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x0b85, code lost:
    
        r26 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x0b87, code lost:
    
        com.rootguard.app.utils.Logger.INSTANCE.w("All methods failed to get app name for " + r15 + ", using package name");
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0b9c, code lost:
    
        r21 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0ba7, code lost:
    
        com.rootguard.app.utils.Logger.INSTANCE.w("Unexpected error getting app name for " + r15 + ", using package name");
        r15 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0ba5, code lost:
    
        r26 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0b4a, code lost:
    
        r13 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0436, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0437, code lost:
    
        r2 = r0;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x03a6, code lost:
    
        r12 = r5.getApplicationInfo(r29, 8320);
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, (java.lang.String) r13);
        r15 = r5.getApplicationLabel(r12).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x03b5, code lost:
    
        r24 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x03bb, code lost:
    
        r15 = r5.getPackageInfo(r29, 0).applicationInfo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x03c2, code lost:
    
        if (r15 != null) goto L159;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0030. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x05ed A[Catch: Exception -> 0x071a, TryCatch #38 {Exception -> 0x071a, blocks: (B:82:0x0476, B:218:0x04c0, B:220:0x04d3, B:223:0x0506, B:225:0x050f, B:228:0x053c, B:229:0x05e7, B:231:0x05ed, B:236:0x0600, B:242:0x0604, B:243:0x0626, B:245:0x062c, B:247:0x0664, B:248:0x0677, B:250:0x067d, B:251:0x068d, B:253:0x0693, B:257:0x06a7, B:259:0x06ac, B:262:0x06e3, B:268:0x0700, B:271:0x051a, B:272:0x051f, B:274:0x0525, B:277:0x0533, B:280:0x0537, B:286:0x04de, B:287:0x04e3, B:289:0x04e9, B:294:0x04fd, B:297:0x0501), top: B:81:0x0476 }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x062c A[Catch: Exception -> 0x071a, LOOP:3: B:243:0x0626->B:245:0x062c, LOOP_END, TryCatch #38 {Exception -> 0x071a, blocks: (B:82:0x0476, B:218:0x04c0, B:220:0x04d3, B:223:0x0506, B:225:0x050f, B:228:0x053c, B:229:0x05e7, B:231:0x05ed, B:236:0x0600, B:242:0x0604, B:243:0x0626, B:245:0x062c, B:247:0x0664, B:248:0x0677, B:250:0x067d, B:251:0x068d, B:253:0x0693, B:257:0x06a7, B:259:0x06ac, B:262:0x06e3, B:268:0x0700, B:271:0x051a, B:272:0x051f, B:274:0x0525, B:277:0x0533, B:280:0x0537, B:286:0x04de, B:287:0x04e3, B:289:0x04e9, B:294:0x04fd, B:297:0x0501), top: B:81:0x0476 }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x067d A[Catch: Exception -> 0x071a, TryCatch #38 {Exception -> 0x071a, blocks: (B:82:0x0476, B:218:0x04c0, B:220:0x04d3, B:223:0x0506, B:225:0x050f, B:228:0x053c, B:229:0x05e7, B:231:0x05ed, B:236:0x0600, B:242:0x0604, B:243:0x0626, B:245:0x062c, B:247:0x0664, B:248:0x0677, B:250:0x067d, B:251:0x068d, B:253:0x0693, B:257:0x06a7, B:259:0x06ac, B:262:0x06e3, B:268:0x0700, B:271:0x051a, B:272:0x051f, B:274:0x0525, B:277:0x0533, B:280:0x0537, B:286:0x04de, B:287:0x04e3, B:289:0x04e9, B:294:0x04fd, B:297:0x0501), top: B:81:0x0476 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0525 A[Catch: Exception -> 0x071a, TryCatch #38 {Exception -> 0x071a, blocks: (B:82:0x0476, B:218:0x04c0, B:220:0x04d3, B:223:0x0506, B:225:0x050f, B:228:0x053c, B:229:0x05e7, B:231:0x05ed, B:236:0x0600, B:242:0x0604, B:243:0x0626, B:245:0x062c, B:247:0x0664, B:248:0x0677, B:250:0x067d, B:251:0x068d, B:253:0x0693, B:257:0x06a7, B:259:0x06ac, B:262:0x06e3, B:268:0x0700, B:271:0x051a, B:272:0x051f, B:274:0x0525, B:277:0x0533, B:280:0x0537, B:286:0x04de, B:287:0x04e3, B:289:0x04e9, B:294:0x04fd, B:297:0x0501), top: B:81:0x0476 }] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04e9 A[Catch: Exception -> 0x071a, TryCatch #38 {Exception -> 0x071a, blocks: (B:82:0x0476, B:218:0x04c0, B:220:0x04d3, B:223:0x0506, B:225:0x050f, B:228:0x053c, B:229:0x05e7, B:231:0x05ed, B:236:0x0600, B:242:0x0604, B:243:0x0626, B:245:0x062c, B:247:0x0664, B:248:0x0677, B:250:0x067d, B:251:0x068d, B:253:0x0693, B:257:0x06a7, B:259:0x06ac, B:262:0x06e3, B:268:0x0700, B:271:0x051a, B:272:0x051f, B:274:0x0525, B:277:0x0533, B:280:0x0537, B:286:0x04de, B:287:0x04e3, B:289:0x04e9, B:294:0x04fd, B:297:0x0501), top: B:81:0x0476 }] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0733  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01f7 A[Catch: Exception -> 0x0722, TRY_LEAVE, TryCatch #45 {Exception -> 0x0722, blocks: (B:11:0x015d, B:12:0x019f, B:28:0x01be, B:29:0x01f1, B:31:0x01f7, B:36:0x0202), top: B:10:0x015d }] */
    /* JADX WARN: Removed duplicated region for block: B:331:0x07ef A[Catch: Exception -> 0x0ea6, TRY_ENTER, TryCatch #40 {Exception -> 0x0ea6, blocks: (B:328:0x07ad, B:332:0x07f5, B:335:0x081e, B:647:0x0816, B:331:0x07ef), top: B:327:0x07ad }] */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0813 A[Catch: Exception -> 0x07e9, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x07e9, blocks: (B:649:0x07e6, B:334:0x0813, B:339:0x0873), top: B:648:0x07e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x086e  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0873 A[Catch: Exception -> 0x07e9, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x07e9, blocks: (B:649:0x07e6, B:334:0x0813, B:339:0x0873), top: B:648:0x07e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x08b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x08fd A[Catch: Exception -> 0x08d9, TRY_ENTER, TryCatch #13 {Exception -> 0x08d9, blocks: (B:350:0x08b0, B:359:0x08fd, B:364:0x0915, B:373:0x0966, B:376:0x0974, B:390:0x09c2), top: B:349:0x08b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0966 A[Catch: Exception -> 0x08d9, TRY_ENTER, TryCatch #13 {Exception -> 0x08d9, blocks: (B:350:0x08b0, B:359:0x08fd, B:364:0x0915, B:373:0x0966, B:376:0x0974, B:390:0x09c2), top: B:349:0x08b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:387:0x09ba A[Catch: Exception -> 0x0ebd, TRY_LEAVE, TryCatch #53 {Exception -> 0x0ebd, blocks: (B:326:0x07a3, B:346:0x088d, B:347:0x08aa, B:356:0x08e4, B:357:0x08f7, B:370:0x091a, B:371:0x0960, B:381:0x0979, B:384:0x099e, B:385:0x09b4, B:387:0x09ba, B:392:0x09c5), top: B:325:0x07a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0bcc  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0bce  */
    /* JADX WARN: Removed duplicated region for block: B:570:0x0d85 A[Catch: Exception -> 0x0eb6, TryCatch #32 {Exception -> 0x0eb6, blocks: (B:431:0x0c19, B:557:0x0c59, B:559:0x0c6a, B:562:0x0c9e, B:564:0x0ca7, B:567:0x0cd4, B:568:0x0d7f, B:570:0x0d85, B:575:0x0d98, B:581:0x0d9c, B:582:0x0dbe, B:584:0x0dc4, B:586:0x0dfc, B:587:0x0e10, B:589:0x0e16, B:590:0x0e26, B:592:0x0e2c, B:596:0x0e40, B:598:0x0e45, B:601:0x0e7c, B:607:0x0e99, B:608:0x0cb2, B:609:0x0cb7, B:611:0x0cbd, B:614:0x0ccb, B:617:0x0ccf, B:624:0x0c75, B:625:0x0c7b, B:627:0x0c81, B:632:0x0c95, B:635:0x0c99, B:343:0x0eaa, B:344:0x0eb5), top: B:325:0x07a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:584:0x0dc4 A[Catch: Exception -> 0x0eb6, LOOP:13: B:582:0x0dbe->B:584:0x0dc4, LOOP_END, TryCatch #32 {Exception -> 0x0eb6, blocks: (B:431:0x0c19, B:557:0x0c59, B:559:0x0c6a, B:562:0x0c9e, B:564:0x0ca7, B:567:0x0cd4, B:568:0x0d7f, B:570:0x0d85, B:575:0x0d98, B:581:0x0d9c, B:582:0x0dbe, B:584:0x0dc4, B:586:0x0dfc, B:587:0x0e10, B:589:0x0e16, B:590:0x0e26, B:592:0x0e2c, B:596:0x0e40, B:598:0x0e45, B:601:0x0e7c, B:607:0x0e99, B:608:0x0cb2, B:609:0x0cb7, B:611:0x0cbd, B:614:0x0ccb, B:617:0x0ccf, B:624:0x0c75, B:625:0x0c7b, B:627:0x0c81, B:632:0x0c95, B:635:0x0c99, B:343:0x0eaa, B:344:0x0eb5), top: B:325:0x07a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:589:0x0e16 A[Catch: Exception -> 0x0eb6, TryCatch #32 {Exception -> 0x0eb6, blocks: (B:431:0x0c19, B:557:0x0c59, B:559:0x0c6a, B:562:0x0c9e, B:564:0x0ca7, B:567:0x0cd4, B:568:0x0d7f, B:570:0x0d85, B:575:0x0d98, B:581:0x0d9c, B:582:0x0dbe, B:584:0x0dc4, B:586:0x0dfc, B:587:0x0e10, B:589:0x0e16, B:590:0x0e26, B:592:0x0e2c, B:596:0x0e40, B:598:0x0e45, B:601:0x0e7c, B:607:0x0e99, B:608:0x0cb2, B:609:0x0cb7, B:611:0x0cbd, B:614:0x0ccb, B:617:0x0ccf, B:624:0x0c75, B:625:0x0c7b, B:627:0x0c81, B:632:0x0c95, B:635:0x0c99, B:343:0x0eaa, B:344:0x0eb5), top: B:325:0x07a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:611:0x0cbd A[Catch: Exception -> 0x0eb6, TryCatch #32 {Exception -> 0x0eb6, blocks: (B:431:0x0c19, B:557:0x0c59, B:559:0x0c6a, B:562:0x0c9e, B:564:0x0ca7, B:567:0x0cd4, B:568:0x0d7f, B:570:0x0d85, B:575:0x0d98, B:581:0x0d9c, B:582:0x0dbe, B:584:0x0dc4, B:586:0x0dfc, B:587:0x0e10, B:589:0x0e16, B:590:0x0e26, B:592:0x0e2c, B:596:0x0e40, B:598:0x0e45, B:601:0x0e7c, B:607:0x0e99, B:608:0x0cb2, B:609:0x0cb7, B:611:0x0cbd, B:614:0x0ccb, B:617:0x0ccf, B:624:0x0c75, B:625:0x0c7b, B:627:0x0c81, B:632:0x0c95, B:635:0x0c99, B:343:0x0eaa, B:344:0x0eb5), top: B:325:0x07a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:627:0x0c81 A[Catch: Exception -> 0x0eb6, TryCatch #32 {Exception -> 0x0eb6, blocks: (B:431:0x0c19, B:557:0x0c59, B:559:0x0c6a, B:562:0x0c9e, B:564:0x0ca7, B:567:0x0cd4, B:568:0x0d7f, B:570:0x0d85, B:575:0x0d98, B:581:0x0d9c, B:582:0x0dbe, B:584:0x0dc4, B:586:0x0dfc, B:587:0x0e10, B:589:0x0e16, B:590:0x0e26, B:592:0x0e2c, B:596:0x0e40, B:598:0x0e45, B:601:0x0e7c, B:607:0x0e99, B:608:0x0cb2, B:609:0x0cb7, B:611:0x0cbd, B:614:0x0ccb, B:617:0x0ccf, B:624:0x0c75, B:625:0x0c7b, B:627:0x0c81, B:632:0x0c95, B:635:0x0c99, B:343:0x0eaa, B:344:0x0eb5), top: B:325:0x07a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:645:0x0870  */
    /* JADX WARN: Removed duplicated region for block: B:647:0x0816 A[Catch: Exception -> 0x0ea6, TRY_ENTER, TryCatch #40 {Exception -> 0x0ea6, blocks: (B:328:0x07ad, B:332:0x07f5, B:335:0x081e, B:647:0x0816, B:331:0x07ef), top: B:327:0x07ad }] */
    /* JADX WARN: Removed duplicated region for block: B:648:0x07e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:662:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:686:0x010a A[Catch: Exception -> 0x0ec6, TRY_LEAVE, TryCatch #58 {Exception -> 0x0ec6, blocks: (B:684:0x00e6, B:686:0x010a), top: B:683:0x00e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:691:0x0784  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0425  */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r13v41 */
    /* JADX WARN: Type inference failed for: r13v42 */
    /* JADX WARN: Type inference failed for: r13v43 */
    /* JADX WARN: Type inference failed for: r13v47 */
    /* JADX WARN: Type inference failed for: r13v55 */
    /* JADX WARN: Type inference failed for: r13v56 */
    /* JADX WARN: Type inference failed for: r13v57 */
    /* JADX WARN: Type inference failed for: r13v59 */
    /* JADX WARN: Type inference failed for: r13v60 */
    /* JADX WARN: Type inference failed for: r13v61, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v62 */
    /* JADX WARN: Type inference failed for: r13v63 */
    /* JADX WARN: Type inference failed for: r13v64, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v65 */
    /* JADX WARN: Type inference failed for: r24v31 */
    /* JADX WARN: Type inference failed for: r24v32 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v10 */
    /* JADX WARN: Type inference failed for: r28v17 */
    /* JADX WARN: Type inference failed for: r28v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r38) {
        /*
            Method dump skipped, instructions count: 3844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.data.magisk.MagiskProvider$getAllInstalledApps$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
