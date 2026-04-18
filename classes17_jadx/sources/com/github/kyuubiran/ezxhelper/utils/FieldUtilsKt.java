package com.github.kyuubiran.ezxhelper.utils;

import com.github.kyuubiran.ezxhelper.init.InitFields;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: FieldUtils.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u0002\n\u0002\b\b\u001a#\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u00012\u0006\u0010\u0003\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0004\u001a?\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001aE\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a9\u0010\u0014\u001a\u00020\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a?\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a;\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001aA\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0013\u001a\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0013\u001a\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007\u001a\u0019\u0010\u001d\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u001c\u001a\u00020\u0007¢\u0006\u0002\u0010\u001e\u001a\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u0007\u001a\u001b\u0010 \u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u001c\u001a\u00020\u0007¢\u0006\u0002\u0010\u001e\u001a,\u0010\u001c\u001a\u00020\u0007*\u00020\u001b2\u0006\u0010!\u001a\u00020\u00112\b\b\u0002\u0010\"\u001a\u00020\u000b2\u000e\b\u0002\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t\u001a8\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070$*\b\u0012\u0004\u0012\u00020\u00070$2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f¢\u0006\u0002\u0010%\u001a3\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\b\u0012\u0004\u0012\u00020\u00070&2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a2\u0010\u0014\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070$2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f¢\u0006\u0002\u0010'\u001a-\u0010\u0014\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070&2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a1\u0010(\u001a\u00020\u001b*\u00020\u001b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a<\u0010)\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f¢\u0006\u0002\u0010*\u001a3\u0010+\u001a\u0004\u0018\u00010\u001b*\u00020\u001b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001a>\u0010,\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f¢\u0006\u0002\u0010*\u001a4\u0010\u0015\u001a\u0004\u0018\u00010\u0007*\b\u0012\u0004\u0012\u00020\u00070$2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f¢\u0006\u0002\u0010'\u001a/\u0010\u0015\u001a\u0004\u0018\u00010\u0007*\b\u0012\u0004\u0012\u00020\u00070&2\u001b\u0010\f\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f\u001aH\u0010-\u001a\u0004\u0018\u00010\u001b*\u00020\u001b2\u001b\u0010.\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f2\u001d\u0010/\u001a\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u000b0\rj\u0002`0¢\u0006\u0002\b\u000f\u001a+\u0010-\u001a\u0004\u0018\u00010\u001b*\u00020\u001b2\u001d\u0010\f\u001a\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u000b0\rj\u0002`0¢\u0006\u0002\b\u000f\u001a/\u00101\u001a\u0004\u0018\u00010\u001b*\u0006\u0012\u0002\b\u00030\t2\u001d\u0010\f\u001a\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u000b0\rj\u0002`0¢\u0006\u0002\b\u000f\u001aH\u00101\u001a\u0004\u0018\u00010\u001b*\u00020\u001b2\u001b\u0010.\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\rj\u0002`\u000e¢\u0006\u0002\b\u000f2\u001d\u0010/\u001a\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u000b0\rj\u0002`0¢\u0006\u0002\b\u000f\u001a!\u00102\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00072\b\u00103\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u00104\u001a\u0012\u0010\u0016\u001a\u00020\u0007*\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0011\u001a\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u0007*\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0011\u001a \u00105\u001a\u00020\u0007*\u00020\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t2\b\b\u0002\u0010\"\u001a\u00020\u000b\u001a\u0014\u00107\u001a\u00020\u001b*\u00020\u00072\b\u00103\u001a\u0004\u0018\u00010\u001b\u001a\u001f\u00108\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00072\b\u00103\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u00104\u001a\"\u00109\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t\u001a\u001d\u0010;\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007¢\u0006\u0002\u0010<\u001a-\u0010;\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\u0002\u0010=\u001a\u0016\u0010>\u001a\u00020\u001b*\u00020\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t\u001a!\u0010?\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t¢\u0006\u0002\u0010@\u001a\u0014\u0010A\u001a\u0004\u0018\u00010\u001b*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007\u001a$\u0010A\u001a\u0004\u0018\u00010\u001b*\u00020\u001b2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t\u001a\u001f\u0010B\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007¢\u0006\u0002\u0010<\u001a/\u0010B\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\u0002\u0010=\u001a\u0018\u0010C\u001a\u0004\u0018\u00010\u001b*\u00020\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t\u001a#\u0010D\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t¢\u0006\u0002\u0010@\u001a\f\u0010E\u001a\u0004\u0018\u00010\u001b*\u00020\u0007\u001a\u0017\u0010F\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0007¢\u0006\u0002\u0010\u001e\u001a\u0016\u0010G\u001a\u00020\u0007*\u00020\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t\u001a\n\u0010H\u001a\u00020\u001b*\u00020\u0007\u001a\u0015\u0010I\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0007¢\u0006\u0002\u0010\u001e\u001a&\u0010\u001a\u001a\u00020\u001b*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t\u001a1\u0010\u001d\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\u0002\u0010J\u001a\u001a\u0010K\u001a\u00020\u001b*\u0006\u0012\u0002\b\u00030\t2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t\u001a%\u0010L\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\t2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t¢\u0006\u0002\u0010M\u001a(\u0010\u001f\u001a\u0004\u0018\u00010\u001b*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t\u001a3\u0010 \u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010:\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t¢\u0006\u0002\u0010J\u001a\u001c\u0010N\u001a\u0004\u0018\u00010\u001b*\u0006\u0012\u0002\b\u00030\t2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t\u001a'\u0010O\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\t2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t¢\u0006\u0002\u0010M\u001a\u001c\u0010P\u001a\u00020Q*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00072\b\u0010R\u001a\u0004\u0018\u00010\u001b\u001a,\u0010P\u001a\u00020Q*\u00020\u001b2\u0006\u0010:\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010\u001b2\u000e\b\u0002\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t\u001a \u0010S\u001a\u00020Q*\u00020\u001b2\b\u0010R\u001a\u0004\u0018\u00010\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t\u001a0\u0010T\u001a\u00020Q*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010:\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010\u001b2\u000e\b\u0002\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t\u001a$\u0010U\u001a\u00020Q*\u0006\u0012\u0002\b\u00030\t2\b\u0010R\u001a\u0004\u0018\u00010\u001b2\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t\u001a&\u0010V\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010!\u001a\u00020\u00112\u000e\b\u0002\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u00010\t*,\u0010W\"\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000f2\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000f*0\u0010X\"\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000f2\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000f¨\u0006Y"}, d2 = {"fieldCpy", "T", "srcObj", "newObj", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "findAllFields", "", "Ljava/lang/reflect/Field;", "clz", "Ljava/lang/Class;", "findSuper", "", "condition", "Lkotlin/Function1;", "Lcom/github/kyuubiran/ezxhelper/utils/FieldCondition;", "Lkotlin/ExtensionFunctionType;", "clzName", "", "classLoader", "Ljava/lang/ClassLoader;", "findField", "findFieldOrNull", "getFieldByDesc", "desc", "clzLoader", "getFieldByDescOrNull", "getStaticObject", "", "field", "getStaticObjectAs", "(Ljava/lang/reflect/Field;)Ljava/lang/Object;", "getStaticObjectOrNull", "getStaticObjectOrNullAs", "fieldName", "isStatic", "fieldType", "", "([Ljava/lang/reflect/Field;Lkotlin/jvm/functions/Function1;)[Ljava/lang/reflect/Field;", "", "([Ljava/lang/reflect/Field;Lkotlin/jvm/functions/Function1;)Ljava/lang/reflect/Field;", "findFieldObject", "findFieldObjectAs", "(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "findFieldObjectOrNull", "findFieldObjectOrNullAs", "findObject", "fieldCond", "objCond", "Lcom/github/kyuubiran/ezxhelper/utils/ObjectCondition;", "findStaticObject", "getAs", "obj", "(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;", "getFieldByType", "type", "getNonNull", "getNonNullAs", "getObject", "objName", "getObjectAs", "(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getObjectByType", "getObjectByTypeAs", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;", "getObjectOrNull", "getObjectOrNullAs", "getObjectOrNullByType", "getObjectOrNullByTypeAs", "getStatic", "getStaticAs", "getStaticFieldByType", "getStaticNonNull", "getStaticNonNullAs", "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "getStaticObjectByType", "getStaticObjectByTypeAs", "(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;", "getStaticObjectOrNullByType", "getStaticObjectOrNullByTypeAs", "putObject", "", "value", "putObjectByType", "putStaticObject", "putStaticObjectByType", "staticField", "FieldCondition", "ObjectCondition", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class FieldUtilsKt {
    public static /* synthetic */ Field findField$default(Class cls, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findField(cls, z, function1);
    }

    public static final Field findField(Class<?> clz, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clz, "clz");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Field findFieldOrNull = findFieldOrNull(clz, findSuper, condition);
        if (findFieldOrNull != null) {
            return findFieldOrNull;
        }
        throw new NoSuchFieldException();
    }

    public static /* synthetic */ Field findFieldOrNull$default(Class cls, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findFieldOrNull(cls, z, function1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
    
        if (r17 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        r5 = r1.getSuperclass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
    
        if (r5 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
    
        if (r5 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
    
        r5 = r1.getDeclaredFields();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, "c.declaredFields");
        r5 = r5;
        r8 = r5.length;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0066, code lost:
    
        if (r11 >= r8) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
    
        r12 = r5[r11];
        r13 = (java.lang.reflect.Field) r12;
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, "it");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
    
        if (r18.invoke(r13).booleanValue() == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007e, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0082, code lost:
    
        r12 = (java.lang.reflect.Field) r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0084, code lost:
    
        if (r12 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0087, code lost:
    
        r12.setAccessible(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0081, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.reflect.Field findFieldOrNull(java.lang.Class<?> r16, boolean r17, kotlin.jvm.functions.Function1<? super java.lang.reflect.Field, java.lang.Boolean> r18) {
        /*
            r0 = r18
            java.lang.String r1 = "clz"
            r2 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            java.lang.String r1 = "condition"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r1 = 0
            r1 = r16
            java.lang.reflect.Field[] r3 = r1.getDeclaredFields()
            java.lang.String r4 = "c.declaredFields"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            java.lang.Object[] r3 = (java.lang.Object[]) r3
            r5 = 0
            int r6 = r3.length
            r7 = 0
            r8 = r7
        L20:
            java.lang.String r9 = "it"
            r10 = 0
            if (r8 >= r6) goto L3e
            r11 = r3[r8]
            r12 = r11
            java.lang.reflect.Field r12 = (java.lang.reflect.Field) r12
            r13 = 0
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r9)
            java.lang.Object r14 = r0.invoke(r12)
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r12 = r14.booleanValue()
            if (r12 == 0) goto L3b
            goto L3f
        L3b:
            int r8 = r8 + 1
            goto L20
        L3e:
            r11 = r10
        L3f:
            java.lang.reflect.Field r11 = (java.lang.reflect.Field) r11
            r3 = 1
            if (r11 == 0) goto L4a
            r4 = r11
            r5 = 0
            r4.setAccessible(r3)
            return r4
        L4a:
            if (r17 == 0) goto L8d
        L4c:
            java.lang.Class r5 = r1.getSuperclass()
            if (r5 == 0) goto L56
            r6 = r5
            r8 = 0
            r1 = r6
            goto L57
        L56:
            r5 = r10
        L57:
            if (r5 == 0) goto L8d
        L5a:
            java.lang.reflect.Field[] r5 = r1.getDeclaredFields()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            java.lang.Object[] r5 = (java.lang.Object[]) r5
            r6 = 0
            int r8 = r5.length
            r11 = r7
        L66:
            if (r11 >= r8) goto L81
            r12 = r5[r11]
            r13 = r12
            java.lang.reflect.Field r13 = (java.lang.reflect.Field) r13
            r14 = 0
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r9)
            java.lang.Object r15 = r0.invoke(r13)
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r13 = r15.booleanValue()
            if (r13 == 0) goto L7e
            goto L82
        L7e:
            int r11 = r11 + 1
            goto L66
        L81:
            r12 = r10
        L82:
            java.lang.reflect.Field r12 = (java.lang.reflect.Field) r12
            if (r12 == 0) goto L4c
        L87:
            r4 = r12
            r5 = 0
            r4.setAccessible(r3)
            return r4
        L8d:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.kyuubiran.ezxhelper.utils.FieldUtilsKt.findFieldOrNull(java.lang.Class, boolean, kotlin.jvm.functions.Function1):java.lang.reflect.Field");
    }

    public static /* synthetic */ Field findField$default(String str, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return findField(str, classLoader, z, function1);
    }

    public static final Field findField(String clzName, ClassLoader classLoader, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findField(ClassUtilKt.loadClass(clzName, classLoader), findSuper, condition);
    }

    public static /* synthetic */ Field findFieldOrNull$default(String str, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return findFieldOrNull(str, classLoader, z, function1);
    }

    public static final Field findFieldOrNull(String clzName, ClassLoader classLoader, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findFieldOrNull(ClassUtilKt.loadClass(clzName, classLoader), findSuper, condition);
    }

    public static final Field findField(Field[] $this$findField, Function1<? super Field, Boolean> condition) {
        Field field;
        Intrinsics.checkNotNullParameter($this$findField, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        int length = $this$findField.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                field = null;
                break;
            }
            field = $this$findField[i];
            if (condition.invoke(field).booleanValue()) {
                break;
            }
            i++;
        }
        if (field == null) {
            throw new NoSuchFieldException();
        }
        Field $this$findField_u24lambda_u2d6 = field;
        $this$findField_u24lambda_u2d6.setAccessible(true);
        return field;
    }

    public static final Field findField(Iterable<Field> iterable, Function1<? super Field, Boolean> condition) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Iterator<Field> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                element$iv = null;
                break;
            }
            element$iv = it.next();
            Field it2 = (Field) element$iv;
            if (condition.invoke(it2).booleanValue()) {
                break;
            }
        }
        Field $this$findField_u24lambda_u2d8 = (Field) element$iv;
        if ($this$findField_u24lambda_u2d8 == null) {
            throw new NoSuchFieldException();
        }
        $this$findField_u24lambda_u2d8.setAccessible(true);
        return $this$findField_u24lambda_u2d8;
    }

    public static final Field findFieldOrNull(Field[] $this$findFieldOrNull, Function1<? super Field, Boolean> condition) {
        Field field;
        Intrinsics.checkNotNullParameter($this$findFieldOrNull, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        int length = $this$findFieldOrNull.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                field = null;
                break;
            }
            field = $this$findFieldOrNull[i];
            if (condition.invoke(field).booleanValue()) {
                break;
            }
            i++;
        }
        if (field == null) {
            return null;
        }
        Field $this$findFieldOrNull_u24lambda_u2d10 = field;
        $this$findFieldOrNull_u24lambda_u2d10.setAccessible(true);
        return field;
    }

    public static final Field findFieldOrNull(Iterable<Field> iterable, Function1<? super Field, Boolean> condition) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Iterator<Field> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                element$iv = null;
                break;
            }
            element$iv = it.next();
            Field it2 = (Field) element$iv;
            if (condition.invoke(it2).booleanValue()) {
                break;
            }
        }
        Field $this$findFieldOrNull_u24lambda_u2d12 = (Field) element$iv;
        if ($this$findFieldOrNull_u24lambda_u2d12 == null) {
            return null;
        }
        $this$findFieldOrNull_u24lambda_u2d12.setAccessible(true);
        return $this$findFieldOrNull_u24lambda_u2d12;
    }

    public static final Field[] findAllFields(Field[] $this$findAllFields, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$findAllFields, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Collection destination$iv$iv = new ArrayList();
        for (Field field : $this$findAllFields) {
            if (condition.invoke(field).booleanValue()) {
                destination$iv$iv.add(field);
            }
        }
        Iterable $this$onEach_u24lambda_u2d16$iv = (List) destination$iv$iv;
        for (Object element$iv : $this$onEach_u24lambda_u2d16$iv) {
            Field it = (Field) element$iv;
            it.setAccessible(true);
        }
        Collection $this$toTypedArray$iv = (Collection) $this$onEach_u24lambda_u2d16$iv;
        Object[] array = $this$toTypedArray$iv.toArray(new Field[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Field[]) array;
    }

    public static final List<Field> findAllFields(Iterable<Field> iterable, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Collection destination$iv$iv = new ArrayList();
        for (Field it : iterable) {
            if (condition.invoke(it).booleanValue()) {
                destination$iv$iv.add(it);
            }
        }
        Iterable $this$map$iv = (List) destination$iv$iv;
        Collection destination$iv$iv2 = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            Field it2 = (Field) item$iv$iv;
            it2.setAccessible(true);
            destination$iv$iv2.add(it2);
        }
        return (List) destination$iv$iv2;
    }

    public static /* synthetic */ List findAllFields$default(Class cls, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findAllFields(cls, z, function1);
    }

    public static final List<Field> findAllFields(Class<?> clz, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clz, "clz");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Class cls = clz;
        ArrayList arr = new ArrayList();
        Field[] declaredFields = cls.getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "c.declaredFields");
        CollectionsKt.addAll(arr, findAllFields(declaredFields, condition));
        if (findSuper) {
            while (true) {
                Class it = cls.getSuperclass();
                if (it != null) {
                    cls = it;
                } else {
                    it = null;
                }
                if (it == null) {
                    break;
                }
                Field[] declaredFields2 = cls.getDeclaredFields();
                Intrinsics.checkNotNullExpressionValue(declaredFields2, "c.declaredFields");
                CollectionsKt.addAll(arr, findAllFields(declaredFields2, condition));
            }
        }
        return arr;
    }

    public static /* synthetic */ List findAllFields$default(String str, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return findAllFields(str, classLoader, z, function1);
    }

    public static final List<Field> findAllFields(String clzName, ClassLoader classLoader, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findAllFields(ClassUtilKt.loadClass(clzName, classLoader), findSuper, condition);
    }

    public static /* synthetic */ Field field$default(Object obj, String str, boolean z, Class cls, int i, Object obj2) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            cls = null;
        }
        return field(obj, str, z, cls);
    }

    public static final Field field(Object $this$field, String fieldName, boolean isStatic, Class<?> cls) {
        Class cls2;
        Object element$iv;
        Intrinsics.checkNotNullParameter($this$field, "<this>");
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        if (StringsKt.isBlank(fieldName)) {
            throw new IllegalArgumentException("Field name must not be empty!");
        }
        Class cls3 = $this$field instanceof Class ? (Class) $this$field : $this$field.getClass();
        do {
            Field[] declaredFields = cls3.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "c.declaredFields");
            Field[] fieldArr = declaredFields;
            Collection destination$iv$iv = new ArrayList();
            int length = fieldArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Field field = fieldArr[i];
                Field it = field;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Field $this$isStatic$iv = it;
                if (isStatic == Modifier.isStatic($this$isStatic$iv.getModifiers())) {
                    destination$iv$iv.add(field);
                }
                i++;
            }
            Iterable $this$firstOrNull$iv = (List) destination$iv$iv;
            Iterator it2 = $this$firstOrNull$iv.iterator();
            while (true) {
                cls2 = null;
                if (it2.hasNext()) {
                    element$iv = it2.next();
                    Field it3 = (Field) element$iv;
                    if ((((cls == null || Intrinsics.areEqual(it3.getType(), cls)) && Intrinsics.areEqual(it3.getName(), fieldName)) ? 1 : null) != null) {
                        break;
                    }
                } else {
                    element$iv = null;
                    break;
                }
            }
            Field it4 = (Field) element$iv;
            if (it4 != null) {
                it4.setAccessible(true);
                return it4;
            }
            Class it5 = cls3.getSuperclass();
            if (it5 != null) {
                cls3 = it5;
                cls2 = it5;
            }
        } while (cls2 != null);
        throw new NoSuchFieldException("Name: " + fieldName + ",Static: " + isStatic + ", Type: " + (cls == null ? "ignore" : cls.getName()));
    }

    public static /* synthetic */ Field getFieldByType$default(Object obj, Class cls, boolean z, int i, Object obj2) {
        if ((i & 2) != 0) {
            z = false;
        }
        return getFieldByType(obj, cls, z);
    }

    public static final Field getFieldByType(Object $this$getFieldByType, Class<?> type, boolean isStatic) {
        Class cls;
        Object element$iv;
        Intrinsics.checkNotNullParameter($this$getFieldByType, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Class cls2 = $this$getFieldByType instanceof Class ? (Class) $this$getFieldByType : $this$getFieldByType.getClass();
        do {
            Field[] declaredFields = cls2.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "c.declaredFields");
            Field[] fieldArr = declaredFields;
            Collection destination$iv$iv = new ArrayList();
            int length = fieldArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Field field = fieldArr[i];
                Field it = field;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Field $this$isStatic$iv = it;
                if (isStatic == Modifier.isStatic($this$isStatic$iv.getModifiers())) {
                    destination$iv$iv.add(field);
                }
                i++;
            }
            Iterable $this$firstOrNull$iv = (List) destination$iv$iv;
            Iterator it2 = $this$firstOrNull$iv.iterator();
            while (true) {
                cls = null;
                if (it2.hasNext()) {
                    element$iv = it2.next();
                    if (Intrinsics.areEqual(((Field) element$iv).getType(), type)) {
                        break;
                    }
                } else {
                    element$iv = null;
                    break;
                }
            }
            Field it3 = (Field) element$iv;
            if (it3 != null) {
                it3.setAccessible(true);
                return it3;
            }
            Class it4 = cls2.getSuperclass();
            if (it4 != null) {
                cls2 = it4;
                cls = it4;
            }
        } while (cls != null);
        throw new NoSuchFieldException();
    }

    public static final Field getStaticFieldByType(Object $this$getStaticFieldByType, Class<?> type) {
        Intrinsics.checkNotNullParameter($this$getStaticFieldByType, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return getFieldByType($this$getStaticFieldByType, type, true);
    }

    public static /* synthetic */ Field staticField$default(Class cls, String str, Class cls2, int i, Object obj) {
        if ((i & 2) != 0) {
            cls2 = null;
        }
        return staticField(cls, str, cls2);
    }

    public static final Field staticField(Class<?> cls, String fieldName, Class<?> cls2) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        if (StringsKt.isBlank(fieldName)) {
            throw new IllegalArgumentException("Field name must not be empty!");
        }
        return field(cls, fieldName, true, cls2);
    }

    public static final <T> T getStaticAs(Field field) {
        Intrinsics.checkNotNullParameter(field, "<this>");
        field.setAccessible(true);
        return (T) field.get(null);
    }

    public static final Object getNonNull(Field $this$getNonNull, Object obj) {
        Intrinsics.checkNotNullParameter($this$getNonNull, "<this>");
        $this$getNonNull.setAccessible(true);
        Object obj2 = $this$getNonNull.get(obj);
        Intrinsics.checkNotNull(obj2);
        return obj2;
    }

    public static final <T> T getNonNullAs(Field field, Object obj) {
        Intrinsics.checkNotNullParameter(field, "<this>");
        field.setAccessible(true);
        T t = (T) field.get(obj);
        Intrinsics.checkNotNull(t);
        return t;
    }

    public static final Object getStaticNonNull(Field $this$getStaticNonNull) {
        Intrinsics.checkNotNullParameter($this$getStaticNonNull, "<this>");
        $this$getStaticNonNull.setAccessible(true);
        Object obj = $this$getStaticNonNull.get(null);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static final <T> T getStaticNonNullAs(Field field) {
        Intrinsics.checkNotNullParameter(field, "<this>");
        field.setAccessible(true);
        T t = (T) field.get(null);
        Intrinsics.checkNotNull(t);
        return t;
    }

    public static final <T> T getAs(Field field, Object obj) {
        Intrinsics.checkNotNullParameter(field, "<this>");
        field.setAccessible(true);
        return (T) field.get(obj);
    }

    public static final Object getStatic(Field $this$getStatic) {
        Intrinsics.checkNotNullParameter($this$getStatic, "<this>");
        $this$getStatic.setAccessible(true);
        return $this$getStatic.get(null);
    }

    public static final <T> T fieldCpy(T t, T t2) {
        try {
            Intrinsics.checkNotNull(t);
            Class clz = t.getClass();
            while (!Intrinsics.areEqual(Object.class, clz)) {
                Field[] fields = clz.getDeclaredFields();
                Intrinsics.checkNotNullExpressionValue(fields, "clz.declaredFields");
                for (Field f : fields) {
                    f.setAccessible(true);
                    f.set(t2, f.get(t));
                }
                Class superclass = clz.getSuperclass();
                Intrinsics.checkNotNullExpressionValue(superclass, "clz.superclass");
                clz = superclass;
            }
            return t2;
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
            return null;
        }
    }

    public static final Object findObject(Object $this$findObject, Function1<Object, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$findObject, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Field[] declaredFields = $this$findObject.getClass().getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "this.javaClass.declaredFields");
        Field[] fieldArr = declaredFields;
        if (fieldArr.length <= 0) {
            return null;
        }
        boolean z = false;
        Field it = fieldArr[0];
        it.setAccessible(true);
        Object o = it.get($this$findObject);
        if (o != null) {
            Intrinsics.checkNotNullExpressionValue(o, "get(this)");
            z = condition.invoke(o).booleanValue();
        }
        return Boolean.valueOf(z);
    }

    public static final Object findObject(Object $this$findObject, Function1<? super Field, Boolean> fieldCond, Function1<Object, Boolean> objCond) {
        Intrinsics.checkNotNullParameter($this$findObject, "<this>");
        Intrinsics.checkNotNullParameter(fieldCond, "fieldCond");
        Intrinsics.checkNotNullParameter(objCond, "objCond");
        Field[] declaredFields = $this$findObject.getClass().getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "this.javaClass.declaredFields");
        Field[] fieldArr = declaredFields;
        if (fieldArr.length <= 0) {
            return null;
        }
        boolean z = false;
        Field it = fieldArr[0];
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (!fieldCond.invoke(it).booleanValue()) {
            return false;
        }
        it.setAccessible(true);
        Object o = it.get($this$findObject);
        if (o != null) {
            Intrinsics.checkNotNullExpressionValue(o, "get(this)");
            z = objCond.invoke(o).booleanValue();
        }
        return Boolean.valueOf(z);
    }

    public static final Object findStaticObject(Class<?> cls, Function1<Object, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Field[] declaredFields = cls.getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "this.declaredFields");
        Field[] fieldArr = declaredFields;
        if (fieldArr.length <= 0) {
            return null;
        }
        boolean z = false;
        Field it = fieldArr[0];
        it.setAccessible(true);
        Object obj = it.get(null);
        if (obj != null) {
            Intrinsics.checkNotNullExpressionValue(obj, "get(null)");
            z = condition.invoke(obj).booleanValue();
        }
        return Boolean.valueOf(z);
    }

    public static final Object findStaticObject(Object $this$findStaticObject, Function1<? super Field, Boolean> fieldCond, Function1<Object, Boolean> objCond) {
        Intrinsics.checkNotNullParameter($this$findStaticObject, "<this>");
        Intrinsics.checkNotNullParameter(fieldCond, "fieldCond");
        Intrinsics.checkNotNullParameter(objCond, "objCond");
        Field[] declaredFields = $this$findStaticObject.getClass().getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "this.javaClass.declaredFields");
        Field[] fieldArr = declaredFields;
        if (fieldArr.length <= 0) {
            return null;
        }
        boolean z = false;
        Field it = fieldArr[0];
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (!fieldCond.invoke(it).booleanValue()) {
            return false;
        }
        it.setAccessible(true);
        Object obj = it.get(null);
        if (obj != null) {
            Intrinsics.checkNotNullExpressionValue(obj, "get(null)");
            z = objCond.invoke(obj).booleanValue();
        }
        return Boolean.valueOf(z);
    }

    public static /* synthetic */ Object getObjectOrNull$default(Object obj, String str, Class cls, int i, Object obj2) {
        if ((i & 2) != 0) {
            cls = null;
        }
        return getObjectOrNull(obj, str, cls);
    }

    public static final Object getObjectOrNull(Object $this$getObjectOrNull, String objName, Class<?> cls) {
        Intrinsics.checkNotNullParameter($this$getObjectOrNull, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        if (StringsKt.isBlank(objName)) {
            throw new IllegalArgumentException("Object name must not be empty!");
        }
        try {
            return field$default($this$getObjectOrNull, objName, false, cls, 2, null).get($this$getObjectOrNull);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
            return null;
        }
    }

    public static /* synthetic */ Object getObjectOrNullAs$default(Object obj, String str, Class cls, int i, Object obj2) {
        if ((i & 2) != 0) {
            cls = null;
        }
        return getObjectOrNullAs(obj, str, cls);
    }

    public static final <T> T getObjectOrNullAs(Object obj, String objName, Class<?> cls) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        return (T) getObjectOrNull(obj, objName, cls);
    }

    public static /* synthetic */ Object getObject$default(Object obj, String str, Class cls, int i, Object obj2) {
        if ((i & 2) != 0) {
            cls = null;
        }
        return getObject(obj, str, cls);
    }

    public static final Object getObject(Object $this$getObject, String objName, Class<?> cls) {
        Intrinsics.checkNotNullParameter($this$getObject, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        if (StringsKt.isBlank(objName)) {
            throw new IllegalArgumentException("Object name must not be empty!");
        }
        Object obj = field($this$getObject.getClass(), objName, false, cls).get($this$getObject);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static /* synthetic */ Object getObjectAs$default(Object obj, String str, Class cls, int i, Object obj2) {
        if ((i & 2) != 0) {
            cls = null;
        }
        return getObjectAs(obj, str, cls);
    }

    public static final <T> T getObjectAs(Object obj, String objName, Class<?> cls) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        return (T) getObject(obj, objName, cls);
    }

    public static final <T> T getObjectAs(Object obj, Field field) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(field, "field");
        return (T) field.get(obj);
    }

    public static final Object getObjectOrNull(Object $this$getObjectOrNull, Field field) {
        Intrinsics.checkNotNullParameter($this$getObjectOrNull, "<this>");
        Intrinsics.checkNotNullParameter(field, "field");
        try {
            field.isAccessible();
            return field.get($this$getObjectOrNull);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
            return null;
        }
    }

    public static final <T> T getObjectOrNullAs(Object obj, Field field) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(field, "field");
        return (T) getObjectOrNull(obj, field);
    }

    public static final Object getObjectOrNullByType(Object $this$getObjectOrNullByType, Class<?> type) {
        Intrinsics.checkNotNullParameter($this$getObjectOrNullByType, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        try {
            return getFieldByType$default($this$getObjectOrNullByType, type, false, 2, null).get($this$getObjectOrNullByType);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
            return null;
        }
    }

    public static final <T> T getObjectOrNullByTypeAs(Object obj, Class<?> type) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) getObjectOrNullByType(obj, type);
    }

    public static final Object getObjectByType(Object $this$getObjectByType, Class<?> type) {
        Intrinsics.checkNotNullParameter($this$getObjectByType, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Object obj = getFieldByType$default($this$getObjectByType, type, false, 2, null).get($this$getObjectByType);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static final <T> T getObjectByTypeAs(Object obj, Class<?> type) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) getObjectByType(obj, type);
    }

    public static /* synthetic */ Object getStaticObjectOrNull$default(Class cls, String str, Class cls2, int i, Object obj) {
        if ((i & 2) != 0) {
            cls2 = null;
        }
        return getStaticObjectOrNull(cls, str, cls2);
    }

    public static final Object getStaticObjectOrNull(Class<?> cls, String objName, Class<?> cls2) {
        Field field;
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        try {
            if (StringsKt.isBlank(objName)) {
                throw new IllegalArgumentException("Object name must not be empty!");
            }
            try {
                field = staticField(cls, objName, cls2);
            } catch (Throwable th) {
                field = null;
            }
            if (field != null) {
                return field.get(null);
            }
            return null;
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
            return null;
        }
    }

    public static /* synthetic */ Object getStaticObjectOrNullAs$default(Class cls, String str, Class cls2, int i, Object obj) {
        if ((i & 2) != 0) {
            cls2 = null;
        }
        return getStaticObjectOrNullAs(cls, str, cls2);
    }

    public static final <T> T getStaticObjectOrNullAs(Class<?> cls, String objName, Class<?> cls2) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        return (T) getStaticObjectOrNull(cls, objName, cls2);
    }

    public static /* synthetic */ Object getStaticObject$default(Class cls, String str, Class cls2, int i, Object obj) {
        if ((i & 2) != 0) {
            cls2 = null;
        }
        return getStaticObject(cls, str, cls2);
    }

    public static final Object getStaticObject(Class<?> cls, String objName, Class<?> cls2) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        if (StringsKt.isBlank(objName)) {
            throw new IllegalArgumentException("Object name must not be empty!");
        }
        Object obj = staticField(cls, objName, cls2).get(cls);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static /* synthetic */ Object getStaticObjectAs$default(Class cls, String str, Class cls2, int i, Object obj) {
        if ((i & 2) != 0) {
            cls2 = null;
        }
        return getStaticObjectAs(cls, str, cls2);
    }

    public static final <T> T getStaticObjectAs(Class<?> cls, String objName, Class<?> cls2) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        return (T) getStaticObject(cls, objName, cls2);
    }

    public static final Object getStaticObjectOrNull(Field field) {
        Intrinsics.checkNotNullParameter(field, "field");
        field.setAccessible(true);
        return field.get(null);
    }

    public static final <T> T getStaticObjectOrNullAs(Field field) {
        Intrinsics.checkNotNullParameter(field, "field");
        return (T) getStaticObjectOrNull(field);
    }

    public static final Object getStaticObject(Field field) {
        Intrinsics.checkNotNullParameter(field, "field");
        field.setAccessible(true);
        Object obj = field.get(null);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static final <T> T getStaticObjectAs(Field field) {
        Intrinsics.checkNotNullParameter(field, "field");
        return (T) getStaticObject(field);
    }

    public static final Object getStaticObjectByType(Class<?> cls, Class<?> type) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Object obj = getStaticFieldByType(cls, type).get(null);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static final <T> T getStaticObjectByTypeAs(Class<?> cls, Class<?> type) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) getStaticFieldByType(cls, type).get(null);
    }

    public static final Object getStaticObjectOrNullByType(Class<?> cls, Class<?> type) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        try {
            return getStaticFieldByType(cls, type).get(null);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
            return null;
        }
    }

    public static final <T> T getStaticObjectOrNullByTypeAs(Class<?> cls, Class<?> type) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) getStaticFieldByType(cls, type);
    }

    public static /* synthetic */ void putObject$default(Object obj, String str, Object obj2, Class cls, int i, Object obj3) {
        if ((i & 4) != 0) {
            cls = null;
        }
        putObject(obj, str, obj2, cls);
    }

    public static final void putObject(Object $this$putObject, String objName, Object value, Class<?> cls) {
        Intrinsics.checkNotNullParameter($this$putObject, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        if (StringsKt.isBlank(objName)) {
            throw new IllegalArgumentException("Object name must not be empty!");
        }
        try {
            field($this$putObject, objName, false, cls).set($this$putObject, value);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
        }
    }

    public static final void putObject(Object $this$putObject, Field field, Object value) {
        Intrinsics.checkNotNullParameter($this$putObject, "<this>");
        Intrinsics.checkNotNullParameter(field, "field");
        try {
            field.setAccessible(true);
            field.set($this$putObject, value);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
        }
    }

    public static final void putObjectByType(Object $this$putObjectByType, Object value, Class<?> type) {
        Intrinsics.checkNotNullParameter($this$putObjectByType, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        try {
            getFieldByType$default($this$putObjectByType, type, false, 2, null).set($this$putObjectByType, value);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
        }
    }

    public static final void putStaticObjectByType(Class<?> cls, Object value, Class<?> type) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        try {
            getStaticFieldByType(cls, type).set(null, value);
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
        }
    }

    public static final void putStaticObject(Class<?> cls, String objName, Object value, Class<?> cls2) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(objName, "objName");
        try {
            if (StringsKt.isBlank(objName)) {
                throw new IllegalArgumentException("Object name must not be empty!");
            }
            try {
                staticField(cls, objName, cls2).set(null, value);
            } catch (NoSuchFieldException e) {
            }
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
        }
    }

    public static /* synthetic */ void putStaticObject$default(Class cls, String str, Object obj, Class cls2, int i, Object obj2) {
        if ((i & 4) != 0) {
            cls2 = null;
        }
        putStaticObject(cls, str, obj, cls2);
    }

    public static /* synthetic */ Object findFieldObject$default(Object obj, boolean z, Function1 function1, int i, Object obj2) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findFieldObject(obj, z, function1);
    }

    public static final Object findFieldObject(Object $this$findFieldObject, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$findFieldObject, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Class $this$findField$iv = $this$findFieldObject.getClass();
        Object obj = findField($this$findField$iv, findSuper, condition).get($this$findFieldObject);
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static /* synthetic */ Object findFieldObjectAs$default(Object obj, boolean z, Function1 function1, int i, Object obj2) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findFieldObjectAs(obj, z, function1);
    }

    public static final <T> T findFieldObjectAs(Object obj, boolean z, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return (T) findField(obj.getClass(), z, condition).get(obj);
    }

    public static /* synthetic */ Object findFieldObjectOrNull$default(Object obj, boolean z, Function1 function1, int i, Object obj2) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findFieldObjectOrNull(obj, z, function1);
    }

    public static final Object findFieldObjectOrNull(Object $this$findFieldObjectOrNull, boolean findSuper, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$findFieldObjectOrNull, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Class $this$findFieldOrNull$iv = $this$findFieldObjectOrNull.getClass();
        Field findFieldOrNull = findFieldOrNull($this$findFieldOrNull$iv, findSuper, condition);
        if (findFieldOrNull != null) {
            return findFieldOrNull.get($this$findFieldObjectOrNull);
        }
        return null;
    }

    public static /* synthetic */ Object findFieldObjectOrNullAs$default(Object obj, boolean z, Function1 function1, int i, Object obj2) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findFieldObjectOrNullAs(obj, z, function1);
    }

    public static final <T> T findFieldObjectOrNullAs(Object obj, boolean z, Function1<? super Field, Boolean> condition) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Field findFieldOrNull = findFieldOrNull(obj.getClass(), z, condition);
        if (findFieldOrNull != null) {
            return (T) findFieldOrNull.get(obj);
        }
        return null;
    }

    public static /* synthetic */ Field getFieldByDesc$default(String str, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return getFieldByDesc(str, classLoader);
    }

    public static final Field getFieldByDesc(String desc, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Field $this$getFieldByDesc_u24lambda_u2d55 = DexDescriptor.INSTANCE.newFieldDesc(desc).getField$EzXHelper_release(clzLoader);
        $this$getFieldByDesc_u24lambda_u2d55.setAccessible(true);
        return $this$getFieldByDesc_u24lambda_u2d55;
    }

    public static final Field getFieldByDesc(ClassLoader $this$getFieldByDesc, String desc) {
        Intrinsics.checkNotNullParameter($this$getFieldByDesc, "<this>");
        Intrinsics.checkNotNullParameter(desc, "desc");
        return getFieldByDesc(desc, $this$getFieldByDesc);
    }

    public static /* synthetic */ Field getFieldByDescOrNull$default(String str, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return getFieldByDescOrNull(str, classLoader);
    }

    public static final Field getFieldByDescOrNull(String desc, ClassLoader clzLoader) {
        Object m1013constructorimpl;
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        try {
            Result.Companion companion = Result.INSTANCE;
            m1013constructorimpl = Result.m1013constructorimpl(getFieldByDesc(desc, clzLoader));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1013constructorimpl = Result.m1013constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1019isFailureimpl(m1013constructorimpl)) {
            m1013constructorimpl = null;
        }
        return (Field) m1013constructorimpl;
    }

    public static final Field getFieldByDescOrNull(ClassLoader $this$getFieldByDescOrNull, String desc) {
        Intrinsics.checkNotNullParameter($this$getFieldByDescOrNull, "<this>");
        Intrinsics.checkNotNullParameter(desc, "desc");
        return getFieldByDescOrNull(desc, $this$getFieldByDescOrNull);
    }
}
