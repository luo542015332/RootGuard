package androidx.datastore.core;

import androidx.datastore.core.SingleProcessDataStore;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SingleProcessDataStore.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.SingleProcessDataStore$data$1", f = "SingleProcessDataStore.kt", i = {}, l = {117}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class SingleProcessDataStore$data$1<T> extends SuspendLambda implements Function2<FlowCollector<? super T>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SingleProcessDataStore<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$data$1(SingleProcessDataStore<T> singleProcessDataStore, Continuation<? super SingleProcessDataStore$data$1> continuation) {
        super(2, continuation);
        this.this$0 = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SingleProcessDataStore$data$1 singleProcessDataStore$data$1 = new SingleProcessDataStore$data$1(this.this$0, continuation);
        singleProcessDataStore$data$1.L$0 = obj;
        return singleProcessDataStore$data$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        return ((SingleProcessDataStore$data$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        MutableStateFlow mutableStateFlow;
        MutableStateFlow mutableStateFlow2;
        SimpleActor simpleActor;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                FlowCollector $this$flow = (FlowCollector) this.L$0;
                mutableStateFlow = ((SingleProcessDataStore) this.this$0).downstreamFlow;
                State currentDownStreamFlowState = (State) mutableStateFlow.getValue();
                if (!(currentDownStreamFlowState instanceof Data)) {
                    simpleActor = ((SingleProcessDataStore) this.this$0).actor;
                    simpleActor.offer(new SingleProcessDataStore.Message.Read(currentDownStreamFlowState));
                }
                mutableStateFlow2 = ((SingleProcessDataStore) this.this$0).downstreamFlow;
                final Flow $this$map$iv = FlowKt.dropWhile(mutableStateFlow2, new AnonymousClass1(currentDownStreamFlowState, null));
                this.label = 1;
                if (FlowKt.emitAll($this$flow, new Flow<T>() { // from class: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1

                    /* compiled from: Collect.kt */
                    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$lambda-1$$inlined$collect$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 5, 1}, xi = 48)
                    /* renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
                    public static final class AnonymousClass2 implements FlowCollector<State<T>> {
                        final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;

                        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
                        @DebugMetadata(c = "androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2", f = "SingleProcessDataStore.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                        /* renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.$this_unsafeFlow$inlined = flowCollector;
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Removed duplicated region for block: B:11:0x0036  */
                        /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
                        /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public java.lang.Object emit(java.lang.Object r17, kotlin.coroutines.Continuation r18) {
                            /*
                                r16 = this;
                                r0 = r18
                                boolean r1 = r0 instanceof androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r1 == 0) goto L19
                                r1 = r0
                                androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1 r1 = (androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r1
                                int r2 = r1.label
                                r3 = -2147483648(0xffffffff80000000, float:-0.0)
                                r2 = r2 & r3
                                if (r2 == 0) goto L19
                                int r0 = r1.label
                                int r0 = r0 - r3
                                r1.label = r0
                                r0 = r1
                                r2 = r16
                                goto L21
                            L19:
                                androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1 r1 = new androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1
                                r2 = r16
                                r1.<init>(r0)
                                r0 = r1
                            L21:
                                java.lang.Object r1 = r0.result
                                java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                                int r4 = r0.label
                                switch(r4) {
                                    case 0: goto L40;
                                    case 1: goto L36;
                                    default: goto L2c;
                                }
                            L2c:
                                r18 = r1
                                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                                java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
                                r0.<init>(r1)
                                throw r0
                            L36:
                                r3 = 0
                                r4 = r3
                                r3 = 0
                                r4 = 0
                                kotlin.ResultKt.throwOnFailure(r1)
                                r18 = r1
                                goto L79
                            L40:
                                kotlin.ResultKt.throwOnFailure(r1)
                                r4 = r16
                                r5 = r17
                                r6 = r0
                                r7 = r5
                                r8 = 0
                                kotlinx.coroutines.flow.FlowCollector r9 = r4.$this_unsafeFlow$inlined
                                r10 = r0
                                r11 = r7
                                r12 = 0
                                r13 = r0
                                kotlin.coroutines.Continuation r13 = (kotlin.coroutines.Continuation) r13
                                r14 = r11
                                androidx.datastore.core.State r14 = (androidx.datastore.core.State) r14
                                r15 = 0
                                r18 = r1
                                boolean r1 = r14 instanceof androidx.datastore.core.ReadException
                                if (r1 != 0) goto L9d
                                boolean r1 = r14 instanceof androidx.datastore.core.Final
                                if (r1 != 0) goto L95
                                boolean r1 = r14 instanceof androidx.datastore.core.Data
                                if (r1 == 0) goto L7c
                                r1 = r14
                                androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
                                java.lang.Object r1 = r1.getValue()
                                r6 = 1
                                r0.label = r6
                                java.lang.Object r1 = r9.emit(r1, r0)
                                if (r1 != r3) goto L77
                                return r3
                            L77:
                                r3 = r8
                                r4 = r12
                            L79:
                                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                                return r1
                            L7c:
                                boolean r1 = r14 instanceof androidx.datastore.core.UnInitialized
                                if (r1 == 0) goto L8f
                            L81:
                                java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
                                java.lang.String r3 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
                                java.lang.String r3 = r3.toString()
                                r1.<init>(r3)
                                java.lang.Throwable r1 = (java.lang.Throwable) r1
                                throw r1
                            L8f:
                                kotlin.NoWhenBranchMatchedException r1 = new kotlin.NoWhenBranchMatchedException
                                r1.<init>()
                                throw r1
                            L95:
                                r1 = r14
                                androidx.datastore.core.Final r1 = (androidx.datastore.core.Final) r1
                                java.lang.Throwable r1 = r1.getFinalException()
                                throw r1
                            L9d:
                                r1 = r14
                                androidx.datastore.core.ReadException r1 = (androidx.datastore.core.ReadException) r1
                                java.lang.Throwable r1 = r1.getReadException()
                                throw r1
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public Object collect(FlowCollector collector, Continuation $completion) {
                        Flow $this$collect$iv = Flow.this;
                        Object collect = $this$collect$iv.collect(new AnonymousClass2(collector), $completion);
                        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
                    }
                }, this) != coroutine_suspended) {
                    break;
                } else {
                    return coroutine_suspended;
                }
            case 1:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleProcessDataStore.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "it", "Landroidx/datastore/core/State;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.SingleProcessDataStore$data$1$1", f = "SingleProcessDataStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$1, reason: invalid class name */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<State<T>, Continuation<? super Boolean>, Object> {
        final /* synthetic */ State<T> $currentDownStreamFlowState;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(State<T> state, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$currentDownStreamFlowState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentDownStreamFlowState, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(State<T> state, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    State it = (State) this.L$0;
                    State state = this.$currentDownStreamFlowState;
                    boolean z = false;
                    if (!(state instanceof Data) && !(state instanceof Final) && it == state) {
                        z = true;
                    }
                    return Boxing.boxBoolean(z);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
