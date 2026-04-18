package com.github.kyuubiran.ezxhelper.utils;

import com.github.kyuubiran.ezxhelper.init.InitFields;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* compiled from: MethodUtils.kt */
@Metadata(d1 = {"\u0000d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\b/\u001a-\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0000\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002\"\u0006\u0012\u0002\b\u00030\u0003H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a)\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u0007H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\b\u001a=\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00032\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001aC\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n2\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001a?\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\n2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001aE\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\n2\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001a7\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00032\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001a=\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001a9\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00032\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001a?\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001a9\u0010\u001c\u001a\u00020\u00172\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001a?\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001a;\u0010\u001d\u001a\u0004\u0018\u00010\u00172\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001aA\u0010\u001d\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001a\u0018\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00132\b\b\u0002\u0010 \u001a\u00020\u0015\u001a\u001a\u0010!\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001f\u001a\u00020\u00132\b\b\u0002\u0010 \u001a\u00020\u0015\u001aF\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010\"\u001a8\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*\b\u0012\u0004\u0012\u00020\u00170\u00022\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010#\u001aJ\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*-\u0012)\u0012'\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u000f¢\u0006\u0002\u0010%\u001aA\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\n*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030&2\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001a3\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\n*\b\u0012\u0004\u0012\u00020\u00170&2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001aE\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\n*-\u0012)\u0012'\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0&2\b\b\u0002\u0010\u0018\u001a\u00020\u000f\u001a>\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u000b*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\u00022\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010'\u001a9\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u000b*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0&2\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001a@\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\u00022\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010'\u001a;\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0&2\u001f\u0010\r\u001a\u001b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010¢\u0006\u0002\b\u0011\u001a2\u0010\u001c\u001a\u00020\u0017*\b\u0012\u0004\u0012\u00020\u00170\u00022\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010(\u001a-\u0010\u001c\u001a\u00020\u0017*\b\u0012\u0004\u0012\u00020\u00170&2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001a4\u0010\u001d\u001a\u0004\u0018\u00010\u0017*\b\u0012\u0004\u0012\u00020\u00170\u00022\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010(\u001a/\u0010\u001d\u001a\u0004\u0018\u00010\u0017*\b\u0012\u0004\u0012\u00020\u00170&2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001aF\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010\"\u001aJ\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*-\u0012)\u0012'\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u000f¢\u0006\u0002\u0010%\u001aA\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00170\n*\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030&2\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001aE\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00170\n*-\u0012)\u0012'\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0&2\b\b\u0002\u0010\u0018\u001a\u00020\u000f\u001a\u0012\u0010\u001e\u001a\u00020\u0017*\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0013\u001a\u0014\u0010!\u001a\u0004\u0018\u00010\u0017*\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0013\u001a9\u0010*\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+*\u00020\u00172\b\u0010,\u001a\u0004\u0018\u00010\u00072\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010-\u001aF\u0010.\u001a\u0004\u0018\u00010\u0007*\u00020\u00072\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u00072\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010/\u001aE\u0010.\u001a\u0004\u0018\u00010\u0007*\u00020\u00072\u0006\u00100\u001a\u00020\u00132\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\b\u0002\u00101\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u00103\u001aK\u00104\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+*\u00020\u00072\u0006\u00100\u001a\u00020\u00132\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\b\u0002\u00101\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b5\u00103\u001a1\u00106\u001a\u0004\u0018\u00010\u0007*\u00020\u00072\u0006\u00100\u001a\u00020\u00132\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u0007¢\u0006\u0002\u00107\u001a7\u00108\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+*\u00020\u00072\u0006\u00100\u001a\u00020\u00132\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u0007¢\u0006\u0002\u00107\u001aJ\u00109\u001a\u0004\u0018\u00010\u0007*\u0006\u0012\u0002\b\u00030\u00032\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u00072\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010:\u001aI\u00109\u001a\u0004\u0018\u00010\u0007*\u0006\u0012\u0002\b\u00030\u00032\u0006\u00100\u001a\u00020\u00132\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\b\u0002\u00101\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001aO\u0010=\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+*\u0006\u0012\u0002\b\u00030\u00032\u0006\u00100\u001a\u00020\u00132\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\b\u0002\u00101\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b>\u0010<\u001a5\u0010?\u001a\u0004\u0018\u00010\u0007*\u0006\u0012\u0002\b\u00030\u00032\u0006\u00100\u001a\u00020\u00132\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010@\u001a;\u0010A\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+*\u0006\u0012\u0002\b\u00030\u00032\u0006\u00100\u001a\u00020\u00132\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0002\"\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010@\u001aP\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*)\u0012%\u0012#\u0012\u0004\u0012\u00020\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f¢\u0006\u0002\u0010C\u001aL\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*\b\u0012\u0004\u0012\u00020\u00130\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010D\u001aK\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00170\n*)\u0012%\u0012#\u0012\u0004\u0012\u00020\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0&2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f\u001aG\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00170\n*\b\u0012\u0004\u0012\u00020\u00130&2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001aP\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*)\u0012%\u0012#\u0012\u0004\u0012\u00020\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f¢\u0006\u0002\u0010C\u001aL\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00170\u0002*\b\u0012\u0004\u0012\u00020\u00130\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011¢\u0006\u0002\u0010D\u001aK\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00170\n*)\u0012%\u0012#\u0012\u0004\u0012\u00020\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$0&2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f\u001aG\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00170\n*\b\u0012\u0004\u0012\u00020\u00130&2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u000f2\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011\u001aS\u0010F\u001a'\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$*\u0006\u0012\u0002\b\u00030\u00032\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011H\u0086\u0004\u001aK\u0010F\u001a#\u0012\u0004\u0012\u00020\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u00110$*\u00020\u00132\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0019¢\u0006\u0002\b\u0011H\u0086\u0004\u001aC\u0010G\u001a\u00020\u0017*\u00020\u00072\u0006\u00100\u001a\u00020\u00132\u000e\b\u0002\u00101\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00032\b\b\u0002\u0010H\u001a\u00020\u000f2\b\b\u0002\u0010\u0000\u001a\u00020\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bI\u0010J\u001a1\u0010K\u001a\u0004\u0018\u00010\u0007*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0000\u001a\u00020\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bL\u0010M\u001a7\u0010N\u001a\u0004\u0018\u0001H+\"\u0004\b\u0000\u0010+*\u0006\u0012\u0002\b\u00030\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0000\u001a\u00020\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bO\u0010M\u001a=\u0010P\u001a\u00020\u0017*\u0006\u0012\u0002\b\u00030\u00032\u0006\u00100\u001a\u00020\u00132\u000e\b\u0002\u00101\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00032\b\b\u0002\u0010\u0000\u001a\u00020\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bQ\u0010R*4\u0010S\"\u0017\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0002\b\u00112\u0017\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0002\b\u0011*,\u0010T\"\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0002\b\u00112\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0002\b\u0011\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006U"}, d2 = {"argTypes", "Lcom/github/kyuubiran/ezxhelper/utils/ArgTypes;", "", "Ljava/lang/Class;", "([Ljava/lang/Class;)[Ljava/lang/Class;", "args", "Lcom/github/kyuubiran/ezxhelper/utils/Args;", "", "([Ljava/lang/Object;)[Ljava/lang/Object;", "findAllConstructors", "", "Ljava/lang/reflect/Constructor;", "clz", "condition", "Lkotlin/Function1;", "", "Lcom/github/kyuubiran/ezxhelper/utils/ConstructorCondition;", "Lkotlin/ExtensionFunctionType;", "clzName", "", "classLoader", "Ljava/lang/ClassLoader;", "findAllMethods", "Ljava/lang/reflect/Method;", "findSuper", "Lcom/github/kyuubiran/ezxhelper/utils/MethodCondition;", "findConstructor", "findConstructorOrNull", "findMethod", "findMethodOrNull", "getMethodByDesc", "desc", "clzLoader", "getMethodByDescOrNull", "([Ljava/lang/Class;ZLkotlin/jvm/functions/Function1;)[Ljava/lang/reflect/Method;", "([Ljava/lang/reflect/Method;Lkotlin/jvm/functions/Function1;)[Ljava/lang/reflect/Method;", "Lkotlin/Pair;", "([Lkotlin/Pair;Z)[Ljava/lang/reflect/Method;", "", "([Ljava/lang/reflect/Constructor;Lkotlin/jvm/functions/Function1;)Ljava/lang/reflect/Constructor;", "([Ljava/lang/reflect/Method;Lkotlin/jvm/functions/Function1;)Ljava/lang/reflect/Method;", "findMethods", "invokeAs", "T", "obj", "(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "invokeMethod", "(Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "methodName", "returnType", "invokeMethod-qz3LsZg", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;", "invokeMethodAs", "invokeMethodAs-qz3LsZg", "invokeMethodAuto", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;", "invokeMethodAutoAs", "invokeStaticMethod", "(Ljava/lang/Class;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "invokeStaticMethod-qz3LsZg", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;", "invokeStaticMethodAs", "invokeStaticMethodAs-qz3LsZg", "invokeStaticMethodAuto", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;", "invokeStaticMethodAutoAs", "loadAndFindAllMethods", "([Lkotlin/Pair;Ljava/lang/ClassLoader;Z)[Ljava/lang/reflect/Method;", "([Ljava/lang/String;Ljava/lang/ClassLoader;ZLkotlin/jvm/functions/Function1;)[Ljava/lang/reflect/Method;", "loadAndFindMethods", "mcp", "method", "isStatic", "method-_8BSV04", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "newInstance", "newInstance-5s6d-ik", "(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;", "newInstanceAs", "newInstanceAs-5s6d-ik", "staticMethod", "staticMethod-CJLnSlk", "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "ConstructorCondition", "MethodCondition", "EzXHelper_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class MethodUtilsKt {
    public static final Object[] args(Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return Args.m968constructorimpl(args);
    }

    public static final Class<?>[] argTypes(Class<?>... argTypes) {
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        return ArgTypes.m961constructorimpl(argTypes);
    }

    /* renamed from: method-_8BSV04$default */
    public static /* synthetic */ Method m985method_8BSV04$default(Object obj, String str, Class cls, boolean z, Class[] argTypes$iv, int i, Object obj2) {
        if ((i & 2) != 0) {
            cls = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        return m984method_8BSV04(obj, str, cls, z, argTypes$iv);
    }

    /* renamed from: method-_8BSV04 */
    public static final Method m984method_8BSV04(Object method, final String methodName, final Class<?> cls, final boolean isStatic, final Class<?>[] argTypes) {
        Class cls2;
        Intrinsics.checkNotNullParameter(method, "$this$method");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        if (StringsKt.isBlank(methodName)) {
            throw new IllegalArgumentException("Method name must not be empty!");
        }
        Class cls3 = method instanceof Class ? (Class) method : method.getClass();
        while (true) {
            Method[] declaredMethods = cls3.getDeclaredMethods();
            Intrinsics.checkNotNullExpressionValue(declaredMethods, "c.declaredMethods");
            Sequence $this$method__8BSV04_u24lambda_u2d0 = SequencesKt.filter(SequencesKt.filter(CollectionsKt.asSequence(ArraysKt.toList(declaredMethods)), new Function1<Method, Boolean>() { // from class: com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt$method$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Method it) {
                    return Boolean.valueOf(Intrinsics.areEqual(it.getName(), methodName));
                }
            }), new Function1<Method, Boolean>() { // from class: com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt$method$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Method it) {
                    return Boolean.valueOf(it.getParameterTypes().length == argTypes.length);
                }
            });
            if (cls != null) {
                SequencesKt.filter($this$method__8BSV04_u24lambda_u2d0, new Function1<Method, Boolean>() { // from class: com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt$method$3$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(Method it) {
                        return Boolean.valueOf(Intrinsics.areEqual(cls, it.getReturnType()));
                    }
                });
            }
            Method it = (Method) SequencesKt.firstOrNull(SequencesKt.filter(SequencesKt.filter($this$method__8BSV04_u24lambda_u2d0, new Function1<Method, Boolean>() { // from class: com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt$method$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Method it2) {
                    Class<?>[] parameterTypes = it2.getParameterTypes();
                    Intrinsics.checkNotNullExpressionValue(parameterTypes, "it.parameterTypes");
                    Class<?>[] clsArr = argTypes;
                    return Boolean.valueOf(UtilsKt.sameAs(parameterTypes, Arrays.copyOf(clsArr, clsArr.length)));
                }
            }), new Function1<Method, Boolean>() { // from class: com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt$method$5
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Method it2) {
                    Intrinsics.checkNotNullExpressionValue(it2, "it");
                    Method $this$isStatic$iv = it2;
                    return Boolean.valueOf(Modifier.isStatic($this$isStatic$iv.getModifiers()) == isStatic);
                }
            }));
            if (it != null) {
                it.setAccessible(true);
                return it;
            }
            Class it2 = cls3.getSuperclass();
            if (it2 != null) {
                cls2 = it2;
            } else {
                it2 = null;
                cls2 = cls3;
            }
            if (it2 == null) {
                throw new NoSuchMethodException("Name:" + methodName + ", Static: " + isStatic + ", ArgTypes:" + ArraysKt.joinToString$default(argTypes, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
            }
            cls3 = cls2;
        }
    }

    /* renamed from: staticMethod-CJLnSlk$default */
    public static /* synthetic */ Method m991staticMethodCJLnSlk$default(Class cls, String str, Class cls2, Class[] argTypes$iv, int i, Object obj) {
        if ((i & 2) != 0) {
            cls2 = null;
        }
        if ((i & 4) != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        return m990staticMethodCJLnSlk(cls, str, cls2, argTypes$iv);
    }

    /* renamed from: staticMethod-CJLnSlk */
    public static final Method m990staticMethodCJLnSlk(Class<?> staticMethod, String methodName, Class<?> cls, Class<?>[] argTypes) {
        Intrinsics.checkNotNullParameter(staticMethod, "$this$staticMethod");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        if (StringsKt.isBlank(methodName)) {
            throw new IllegalArgumentException("Method name must not be empty!");
        }
        return m984method_8BSV04(staticMethod, methodName, cls, true, argTypes);
    }

    public static /* synthetic */ Method findMethod$default(Class cls, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findMethod(cls, z, function1);
    }

    public static final Method findMethod(Class<?> clz, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clz, "clz");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Method findMethodOrNull = findMethodOrNull(clz, findSuper, condition);
        if (findMethodOrNull != null) {
            return findMethodOrNull;
        }
        throw new NoSuchMethodException();
    }

    public static /* synthetic */ Method findMethodOrNull$default(Class cls, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findMethodOrNull(cls, z, function1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004c, code lost:
    
        if (r17 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004e, code lost:
    
        r5 = r1.getSuperclass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
    
        if (r5 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
    
        if (r5 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        r5 = r1.getDeclaredMethods();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, "c.declaredMethods");
        r5 = r5;
        r8 = r5.length;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
    
        if (r11 >= r8) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
    
        r12 = r5[r11];
        r13 = (java.lang.reflect.Method) r12;
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, "it");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007e, code lost:
    
        if (r18.invoke(r13).booleanValue() == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0085, code lost:
    
        r12 = (java.lang.reflect.Method) r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0087, code lost:
    
        if (r12 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008a, code lost:
    
        r12.setAccessible(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008f, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0084, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0058, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0090, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.reflect.Method findMethodOrNull(java.lang.Class<?> r16, boolean r17, kotlin.jvm.functions.Function1<? super java.lang.reflect.Method, java.lang.Boolean> r18) {
        /*
            r0 = r18
            java.lang.String r1 = "clz"
            r2 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            java.lang.String r1 = "condition"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r1 = 0
            r1 = r16
            java.lang.reflect.Method[] r3 = r1.getDeclaredMethods()
            java.lang.String r4 = "c.declaredMethods"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            java.lang.Object[] r3 = (java.lang.Object[]) r3
            r5 = 0
            int r6 = r3.length
            r7 = 0
            r8 = r7
        L21:
            java.lang.String r9 = "it"
            r10 = 0
            if (r8 >= r6) goto L3f
            r11 = r3[r8]
            r12 = r11
            java.lang.reflect.Method r12 = (java.lang.reflect.Method) r12
            r13 = 0
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r9)
            java.lang.Object r14 = r0.invoke(r12)
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r12 = r14.booleanValue()
            if (r12 == 0) goto L3c
            goto L40
        L3c:
            int r8 = r8 + 1
            goto L21
        L3f:
            r11 = r10
        L40:
            java.lang.reflect.Method r11 = (java.lang.reflect.Method) r11
            r3 = 1
            if (r11 == 0) goto L4c
        L46:
            r4 = r11
            r5 = 0
            r4.setAccessible(r3)
            return r4
        L4c:
            if (r17 == 0) goto L90
        L4e:
            java.lang.Class r5 = r1.getSuperclass()
            if (r5 == 0) goto L58
            r6 = r5
            r8 = 0
            r1 = r6
            goto L59
        L58:
            r5 = r10
        L59:
            if (r5 == 0) goto L90
        L5c:
            java.lang.reflect.Method[] r5 = r1.getDeclaredMethods()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            java.lang.Object[] r5 = (java.lang.Object[]) r5
            r6 = 0
            int r8 = r5.length
            r11 = r7
        L69:
            if (r11 >= r8) goto L84
            r12 = r5[r11]
            r13 = r12
            java.lang.reflect.Method r13 = (java.lang.reflect.Method) r13
            r14 = 0
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r9)
            java.lang.Object r15 = r0.invoke(r13)
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r13 = r15.booleanValue()
            if (r13 == 0) goto L81
            goto L85
        L81:
            int r11 = r11 + 1
            goto L69
        L84:
            r12 = r10
        L85:
            java.lang.reflect.Method r12 = (java.lang.reflect.Method) r12
            if (r12 == 0) goto L4e
        L8a:
            r4 = r12
            r5 = 0
            r4.setAccessible(r3)
            return r4
        L90:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt.findMethodOrNull(java.lang.Class, boolean, kotlin.jvm.functions.Function1):java.lang.reflect.Method");
    }

    public static /* synthetic */ Method findMethod$default(String str, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return findMethod(str, classLoader, z, function1);
    }

    public static final Method findMethod(String clzName, ClassLoader classLoader, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findMethod(ClassUtilKt.loadClass(clzName, classLoader), findSuper, condition);
    }

    public static /* synthetic */ Method findMethodOrNull$default(String str, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return findMethodOrNull(str, classLoader, z, function1);
    }

    public static final Method findMethodOrNull(String clzName, ClassLoader classLoader, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findMethodOrNull(ClassUtilKt.loadClass(clzName, classLoader), findSuper, condition);
    }

    public static final Method findMethod(Method[] $this$findMethod, Function1<? super Method, Boolean> condition) {
        Method method;
        Intrinsics.checkNotNullParameter($this$findMethod, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        int length = $this$findMethod.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                method = null;
                break;
            }
            method = $this$findMethod[i];
            if (condition.invoke(method).booleanValue()) {
                break;
            }
            i++;
        }
        if (method == null) {
            throw new NoSuchMethodException();
        }
        Method $this$findMethod_u24lambda_u2d9 = method;
        $this$findMethod_u24lambda_u2d9.setAccessible(true);
        return method;
    }

    public static final Method findMethod(Iterable<Method> iterable, Function1<? super Method, Boolean> condition) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Iterator<Method> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                element$iv = null;
                break;
            }
            element$iv = it.next();
            Method it2 = (Method) element$iv;
            if (condition.invoke(it2).booleanValue()) {
                break;
            }
        }
        Method $this$findMethod_u24lambda_u2d11 = (Method) element$iv;
        if ($this$findMethod_u24lambda_u2d11 == null) {
            throw new NoSuchMethodException();
        }
        $this$findMethod_u24lambda_u2d11.setAccessible(true);
        return $this$findMethod_u24lambda_u2d11;
    }

    public static final Method findMethodOrNull(Method[] $this$findMethodOrNull, Function1<? super Method, Boolean> condition) {
        Method method;
        Intrinsics.checkNotNullParameter($this$findMethodOrNull, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        int length = $this$findMethodOrNull.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                method = null;
                break;
            }
            method = $this$findMethodOrNull[i];
            if (condition.invoke(method).booleanValue()) {
                break;
            }
            i++;
        }
        if (method == null) {
            return null;
        }
        Method $this$findMethodOrNull_u24lambda_u2d13 = method;
        $this$findMethodOrNull_u24lambda_u2d13.setAccessible(true);
        return method;
    }

    public static final Method findMethodOrNull(Iterable<Method> iterable, Function1<? super Method, Boolean> condition) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Iterator<Method> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                element$iv = null;
                break;
            }
            element$iv = it.next();
            Method it2 = (Method) element$iv;
            if (condition.invoke(it2).booleanValue()) {
                break;
            }
        }
        Method $this$findMethodOrNull_u24lambda_u2d15 = (Method) element$iv;
        if ($this$findMethodOrNull_u24lambda_u2d15 == null) {
            return null;
        }
        $this$findMethodOrNull_u24lambda_u2d15.setAccessible(true);
        return $this$findMethodOrNull_u24lambda_u2d15;
    }

    public static /* synthetic */ Method[] findMethods$default(Class[] clsArr, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findMethods((Class<?>[]) clsArr, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final Method[] findMethods(Class<?>[] clsArr, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clsArr, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Class<?>[] clsArr2 = clsArr;
        Collection destination$iv$iv = new ArrayList();
        int length = clsArr2.length;
        int i = 0;
        while (i < length) {
            Class<?>[] clsArr3 = clsArr2;
            Method findMethodOrNull = findMethodOrNull(clsArr2[i], findSuper, condition);
            if (findMethodOrNull != null) {
                destination$iv$iv.add(findMethodOrNull);
            }
            i++;
            clsArr2 = clsArr3;
        }
        Collection $this$toTypedArray$iv = (List) destination$iv$iv;
        Object[] array = $this$toTypedArray$iv.toArray(new Method[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Method[]) array;
    }

    public static /* synthetic */ List findMethods$default(Iterable iterable, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findMethods((Iterable<? extends Class<?>>) iterable, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final List<Method> findMethods(Iterable<? extends Class<?>> iterable, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Iterable $this$mapNotNull$iv = iterable;
        Collection destination$iv$iv = new ArrayList();
        for (Class element$iv$iv$iv : $this$mapNotNull$iv) {
            Class it = element$iv$iv$iv;
            Iterable $this$mapNotNull$iv2 = $this$mapNotNull$iv;
            Method findMethodOrNull = findMethodOrNull(it, findSuper, condition);
            if (findMethodOrNull != null) {
                destination$iv$iv.add(findMethodOrNull);
                $this$mapNotNull$iv = $this$mapNotNull$iv2;
            } else {
                $this$mapNotNull$iv = $this$mapNotNull$iv2;
            }
        }
        return (List) destination$iv$iv;
    }

    public static /* synthetic */ Method[] loadAndFindMethods$default(String[] strArr, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindMethods(strArr, classLoader, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final Method[] loadAndFindMethods(String[] $this$loadAndFindMethods, ClassLoader classLoader, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$loadAndFindMethods, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findMethods(ClassUtilKt.loadAllClasses($this$loadAndFindMethods, classLoader), findSuper, condition);
    }

    public static /* synthetic */ List loadAndFindMethods$default(Iterable iterable, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindMethods((Iterable<String>) iterable, classLoader, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final List<Method> loadAndFindMethods(Iterable<String> iterable, ClassLoader classLoader, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findMethods(ClassUtilKt.loadAllClasses(iterable, classLoader), findSuper, condition);
    }

    public static final Pair<String, Function1<Method, Boolean>> mcp(String $this$mcp, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$mcp, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return TuplesKt.to($this$mcp, condition);
    }

    public static final Pair<Class<?>, Function1<Method, Boolean>> mcp(Class<?> cls, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return TuplesKt.to(cls, condition);
    }

    public static /* synthetic */ Method[] findMethods$default(Pair[] pairArr, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findMethods((Pair<Class<?>, Function1<Method, Boolean>>[]) pairArr, z);
    }

    public static final Method[] findMethods(Pair<Class<?>, Function1<Method, Boolean>>[] pairArr, boolean findSuper) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        Collection destination$iv$iv = new ArrayList(pairArr.length);
        for (Pair<Class<?>, Function1<Method, Boolean>> pair : pairArr) {
            Class k = pair.component1();
            Function1 v = pair.component2();
            destination$iv$iv.add(findMethod(k, findSuper, v));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new Method[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Method[]) array;
    }

    public static /* synthetic */ List findMethods$default(Iterable iterable, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findMethods((Iterable<? extends Pair<? extends Class<?>, ? extends Function1<? super Method, Boolean>>>) iterable, z);
    }

    public static final List<Method> findMethods(Iterable<? extends Pair<? extends Class<?>, ? extends Function1<? super Method, Boolean>>> iterable, boolean findSuper) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            Pair<? extends Class<?>, ? extends Function1<? super Method, Boolean>> pair = (Pair) item$iv$iv;
            Class k = pair.component1();
            Function1 v = pair.component2();
            destination$iv$iv.add(findMethod(k, findSuper, v));
        }
        return (List) destination$iv$iv;
    }

    public static /* synthetic */ Method[] loadAndFindMethods$default(Pair[] pairArr, ClassLoader classLoader, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindMethods((Pair<String, Function1<Method, Boolean>>[]) pairArr, classLoader, z);
    }

    public static final Method[] loadAndFindMethods(Pair<String, Function1<Method, Boolean>>[] pairArr, ClassLoader classLoader, boolean findSuper) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Collection destination$iv$iv = new ArrayList(pairArr.length);
        for (Pair<String, Function1<Method, Boolean>> pair : pairArr) {
            String k = pair.component1();
            Function1 v = pair.component2();
            destination$iv$iv.add(findMethod(ClassUtilKt.loadClass(k, classLoader), findSuper, v));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new Method[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Method[]) array;
    }

    public static /* synthetic */ List loadAndFindMethods$default(Iterable iterable, ClassLoader classLoader, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindMethods((Iterable<? extends Pair<String, ? extends Function1<? super Method, Boolean>>>) iterable, classLoader, z);
    }

    public static final List<Method> loadAndFindMethods(Iterable<? extends Pair<String, ? extends Function1<? super Method, Boolean>>> iterable, ClassLoader classLoader, boolean findSuper) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            Pair<String, ? extends Function1<? super Method, Boolean>> pair = (Pair) item$iv$iv;
            String k = pair.component1();
            Function1 v = pair.component2();
            destination$iv$iv.add(findMethod(ClassUtilKt.loadClass(k, classLoader), findSuper, v));
        }
        return (List) destination$iv$iv;
    }

    public static /* synthetic */ Method[] findAllMethods$default(Class[] clsArr, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findAllMethods((Class<?>[]) clsArr, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final Method[] findAllMethods(Class<?>[] clsArr, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clsArr, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Collection destination$iv$iv = new ArrayList();
        for (Class<?> cls : clsArr) {
            Iterable list$iv$iv = findAllMethods(cls, findSuper, condition);
            CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new Method[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Method[]) array;
    }

    public static /* synthetic */ List findAllMethods$default(Iterable iterable, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findAllMethods((Iterable<? extends Class<?>>) iterable, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final List<Method> findAllMethods(Iterable<? extends Class<?>> iterable, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Collection destination$iv$iv = new ArrayList();
        for (Class element$iv$iv : iterable) {
            Class c = element$iv$iv;
            Iterable list$iv$iv = findAllMethods((Class<?>) c, findSuper, condition);
            CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
        }
        return (List) destination$iv$iv;
    }

    public static /* synthetic */ Method[] findAllMethods$default(Pair[] pairArr, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findAllMethods((Pair<Class<?>, Function1<Method, Boolean>>[]) pairArr, z);
    }

    public static final Method[] findAllMethods(Pair<Class<?>, Function1<Method, Boolean>>[] pairArr, boolean findSuper) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        ArrayList $this$findAllMethods_u24lambda_u2d25 = new ArrayList();
        for (Pair<Class<?>, Function1<Method, Boolean>> pair : pairArr) {
            Class k = pair.component1();
            Function1 v = pair.component2();
            $this$findAllMethods_u24lambda_u2d25.addAll(findAllMethods((Class<?>) k, findSuper, (Function1<? super Method, Boolean>) v));
        }
        ArrayList $this$toTypedArray$iv = $this$findAllMethods_u24lambda_u2d25;
        Object[] array = $this$toTypedArray$iv.toArray(new Method[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Method[]) array;
    }

    public static /* synthetic */ List findAllMethods$default(Iterable iterable, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return findAllMethods((Iterable<? extends Pair<? extends Class<?>, ? extends Function1<? super Method, Boolean>>>) iterable, z);
    }

    public static final List<Method> findAllMethods(Iterable<? extends Pair<? extends Class<?>, ? extends Function1<? super Method, Boolean>>> iterable, boolean findSuper) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        ArrayList $this$findAllMethods_u24lambda_u2d27 = new ArrayList();
        for (Object element$iv : iterable) {
            Pair<? extends Class<?>, ? extends Function1<? super Method, Boolean>> pair = (Pair) element$iv;
            Class k = pair.component1();
            Function1 v = pair.component2();
            $this$findAllMethods_u24lambda_u2d27.addAll(findAllMethods((Class<?>) k, findSuper, (Function1<? super Method, Boolean>) v));
        }
        return $this$findAllMethods_u24lambda_u2d27;
    }

    public static /* synthetic */ Method[] loadAndFindAllMethods$default(Pair[] pairArr, ClassLoader classLoader, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindAllMethods((Pair<String, Function1<Method, Boolean>>[]) pairArr, classLoader, z);
    }

    public static final Method[] loadAndFindAllMethods(Pair<String, Function1<Method, Boolean>>[] pairArr, ClassLoader classLoader, boolean findSuper) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Collection destination$iv$iv = new ArrayList(pairArr.length);
        for (Pair<String, Function1<Method, Boolean>> pair : pairArr) {
            String k = pair.component1();
            Function1 v = pair.component2();
            destination$iv$iv.add(TuplesKt.to(ClassUtilKt.loadClass(k, classLoader), v));
        }
        Collection thisCollection$iv = (List) destination$iv$iv;
        Object[] array = thisCollection$iv.toArray(new Pair[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return findAllMethods((Pair<Class<?>, Function1<Method, Boolean>>[]) array, findSuper);
    }

    public static /* synthetic */ List loadAndFindAllMethods$default(Iterable iterable, ClassLoader classLoader, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindAllMethods((Iterable<? extends Pair<String, ? extends Function1<? super Method, Boolean>>>) iterable, classLoader, z);
    }

    public static final List<Method> loadAndFindAllMethods(Iterable<? extends Pair<String, ? extends Function1<? super Method, Boolean>>> iterable, ClassLoader classLoader, boolean findSuper) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        for (Object item$iv$iv : iterable) {
            Pair<String, ? extends Function1<? super Method, Boolean>> pair = (Pair) item$iv$iv;
            String k = pair.component1();
            Function1 v = pair.component2();
            destination$iv$iv.add(TuplesKt.to(ClassUtilKt.loadClass(k, classLoader), v));
        }
        return findAllMethods((List) destination$iv$iv, findSuper);
    }

    public static /* synthetic */ Method[] loadAndFindAllMethods$default(String[] strArr, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindAllMethods(strArr, classLoader, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final Method[] loadAndFindAllMethods(String[] $this$loadAndFindAllMethods, ClassLoader classLoader, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$loadAndFindAllMethods, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findAllMethods(ClassUtilKt.loadAllClasses($this$loadAndFindAllMethods, classLoader), findSuper, condition);
    }

    public static /* synthetic */ List loadAndFindAllMethods$default(Iterable iterable, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return loadAndFindAllMethods((Iterable<String>) iterable, classLoader, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final List<Method> loadAndFindAllMethods(Iterable<String> iterable, ClassLoader classLoader, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findAllMethods(ClassUtilKt.loadAllClasses(iterable, classLoader), findSuper, condition);
    }

    public static final Constructor<?> findConstructor(Constructor<?>[] constructorArr, Function1<? super Constructor<?>, Boolean> condition) {
        Constructor<?> constructor;
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        int length = constructorArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                constructor = null;
                break;
            }
            constructor = constructorArr[i];
            if (condition.invoke(constructor).booleanValue()) {
                break;
            }
            i++;
        }
        if (constructor == null) {
            throw new NoSuchMethodException();
        }
        Constructor $this$findConstructor_u24lambda_u2d31 = constructor;
        $this$findConstructor_u24lambda_u2d31.setAccessible(true);
        return constructor;
    }

    public static final Constructor<?> findConstructor(Iterable<? extends Constructor<?>> iterable, Function1<? super Constructor<?>, Boolean> condition) {
        Constructor element$iv;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Iterator<? extends Constructor<?>> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                element$iv = null;
                break;
            }
            element$iv = it.next();
            Constructor it2 = element$iv;
            if (condition.invoke(it2).booleanValue()) {
                break;
            }
        }
        Constructor $this$findConstructor_u24lambda_u2d33 = element$iv;
        if ($this$findConstructor_u24lambda_u2d33 == null) {
            throw new NoSuchMethodException();
        }
        $this$findConstructor_u24lambda_u2d33.setAccessible(true);
        return $this$findConstructor_u24lambda_u2d33;
    }

    public static final Constructor<?> findConstructorOrNull(Constructor<?>[] constructorArr, Function1<? super Constructor<?>, Boolean> condition) {
        Constructor<?> constructor;
        Intrinsics.checkNotNullParameter(constructorArr, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        int length = constructorArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                constructor = null;
                break;
            }
            constructor = constructorArr[i];
            if (condition.invoke(constructor).booleanValue()) {
                break;
            }
            i++;
        }
        if (constructor == null) {
            return null;
        }
        Constructor $this$findConstructorOrNull_u24lambda_u2d35 = constructor;
        $this$findConstructorOrNull_u24lambda_u2d35.setAccessible(true);
        return constructor;
    }

    public static final Constructor<?> findConstructorOrNull(Iterable<? extends Constructor<?>> iterable, Function1<? super Constructor<?>, Boolean> condition) {
        Constructor element$iv;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Iterator<? extends Constructor<?>> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                element$iv = null;
                break;
            }
            element$iv = it.next();
            Constructor it2 = element$iv;
            if (condition.invoke(it2).booleanValue()) {
                break;
            }
        }
        Constructor $this$findConstructorOrNull_u24lambda_u2d37 = element$iv;
        if ($this$findConstructorOrNull_u24lambda_u2d37 == null) {
            return null;
        }
        $this$findConstructorOrNull_u24lambda_u2d37.setAccessible(true);
        return $this$findConstructorOrNull_u24lambda_u2d37;
    }

    public static final Constructor<?> findConstructor(Class<?> clz, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clz, "clz");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Constructor<?>[] declaredConstructors = clz.getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "clz.declaredConstructors");
        return findConstructor(declaredConstructors, condition);
    }

    public static final Constructor<?> findConstructorOrNull(Class<?> clz, Function1<? super Constructor<?>, Boolean> condition) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(clz, "clz");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Object[] declaredConstructors = clz.getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "clz.declaredConstructors");
        Object[] $this$firstOrNull$iv = declaredConstructors;
        int length = $this$firstOrNull$iv.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                element$iv = null;
                break;
            }
            element$iv = $this$firstOrNull$iv[i];
            Constructor it = (Constructor) element$iv;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            if (condition.invoke(it).booleanValue()) {
                break;
            }
            i++;
        }
        Constructor $this$findConstructorOrNull_u24lambda_u2d39 = (Constructor) element$iv;
        if ($this$findConstructorOrNull_u24lambda_u2d39 == null) {
            return null;
        }
        $this$findConstructorOrNull_u24lambda_u2d39.setAccessible(true);
        return $this$findConstructorOrNull_u24lambda_u2d39;
    }

    public static /* synthetic */ Constructor findConstructor$default(String str, ClassLoader classLoader, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return findConstructor(str, classLoader, function1);
    }

    public static final Constructor<?> findConstructor(String clzName, ClassLoader classLoader, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Constructor<?>[] declaredConstructors = ClassUtilKt.loadClass(clzName, classLoader).getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "loadClass(clzName, class…der).declaredConstructors");
        return findConstructor(declaredConstructors, condition);
    }

    public static /* synthetic */ Constructor findConstructorOrNull$default(String str, ClassLoader classLoader, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return findConstructorOrNull(str, classLoader, function1);
    }

    public static final Constructor<?> findConstructorOrNull(String clzName, ClassLoader classLoader, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Constructor<?>[] declaredConstructors = ClassUtilKt.loadClass(clzName, classLoader).getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "loadClass(clzName, class…der).declaredConstructors");
        return findConstructorOrNull(declaredConstructors, condition);
    }

    public static /* synthetic */ List findAllConstructors$default(String str, ClassLoader classLoader, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return findAllConstructors(str, classLoader, function1);
    }

    public static final List<Constructor<?>> findAllConstructors(String clzName, ClassLoader classLoader, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Constructor<?>[] declaredConstructors = ClassUtilKt.loadClass(clzName, classLoader).getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "loadClass(clzName, class…der).declaredConstructors");
        Collection destination$iv$iv = new ArrayList();
        for (Constructor<?> constructor : declaredConstructors) {
            if (condition.invoke(constructor).booleanValue()) {
                destination$iv$iv.add(constructor);
            }
        }
        return (List) destination$iv$iv;
    }

    public static final List<Constructor<?>> findAllConstructors(Class<?> clz, Function1<? super Constructor<?>, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clz, "clz");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Constructor<?>[] declaredConstructors = clz.getDeclaredConstructors();
        Intrinsics.checkNotNullExpressionValue(declaredConstructors, "clz.declaredConstructors");
        Collection destination$iv$iv = new ArrayList();
        for (Constructor<?> constructor : declaredConstructors) {
            if (condition.invoke(constructor).booleanValue()) {
                destination$iv$iv.add(constructor);
            }
        }
        return (List) destination$iv$iv;
    }

    public static final Method[] findAllMethods(Method[] $this$findAllMethods, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter($this$findAllMethods, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Collection destination$iv$iv = new ArrayList();
        for (Method method : $this$findAllMethods) {
            if (condition.invoke(method).booleanValue()) {
                destination$iv$iv.add(method);
            }
        }
        Iterable $this$onEach_u24lambda_u2d16$iv = (List) destination$iv$iv;
        for (Object element$iv : $this$onEach_u24lambda_u2d16$iv) {
            Method it = (Method) element$iv;
            it.setAccessible(true);
        }
        Collection $this$toTypedArray$iv = (Collection) $this$onEach_u24lambda_u2d16$iv;
        Object[] array = $this$toTypedArray$iv.toArray(new Method[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (Method[]) array;
    }

    public static final List<Method> findAllMethods(Iterable<Method> iterable, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Collection destination$iv$iv = new ArrayList();
        for (Method method : iterable) {
            Method it = method;
            if (condition.invoke(it).booleanValue()) {
                destination$iv$iv.add(method);
            }
        }
        Iterable $this$onEach_u24lambda_u2d16$iv = (List) destination$iv$iv;
        for (Object element$iv : $this$onEach_u24lambda_u2d16$iv) {
            Method it2 = (Method) element$iv;
            it2.setAccessible(true);
        }
        return CollectionsKt.toList($this$onEach_u24lambda_u2d16$iv);
    }

    public static /* synthetic */ List findAllMethods$default(Class cls, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findAllMethods((Class<?>) cls, z, (Function1<? super Method, Boolean>) function1);
    }

    public static final List<Method> findAllMethods(Class<?> clz, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clz, "clz");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Class cls = clz;
        ArrayList arr = new ArrayList();
        Method[] declaredMethods = cls.getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "c.declaredMethods");
        CollectionsKt.addAll(arr, findAllMethods(declaredMethods, condition));
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
                Method[] declaredMethods2 = cls.getDeclaredMethods();
                Intrinsics.checkNotNullExpressionValue(declaredMethods2, "c.declaredMethods");
                CollectionsKt.addAll(arr, findAllMethods(declaredMethods2, condition));
            }
        }
        return arr;
    }

    public static /* synthetic */ List findAllMethods$default(String str, ClassLoader classLoader, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return findAllMethods(str, classLoader, z, function1);
    }

    public static final List<Method> findAllMethods(String clzName, ClassLoader classLoader, boolean findSuper, Function1<? super Method, Boolean> condition) {
        Intrinsics.checkNotNullParameter(clzName, "clzName");
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return findAllMethods(ClassUtilKt.loadClass(clzName, classLoader), findSuper, condition);
    }

    public static final Object invokeMethod(Object $this$invokeMethod, Object[] args, Function1<? super Method, Boolean> condition) {
        Object element$iv;
        Intrinsics.checkNotNullParameter($this$invokeMethod, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Object[] declaredMethods = $this$invokeMethod.getClass().getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "this::class.java.declaredMethods");
        Object[] $this$firstOrNull$iv = declaredMethods;
        int length = $this$firstOrNull$iv.length;
        int i = 0;
        while (true) {
            if (i < length) {
                element$iv = $this$firstOrNull$iv[i];
                Method it = (Method) element$iv;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                if (condition.invoke(it).booleanValue()) {
                    break;
                }
                i++;
            } else {
                element$iv = null;
                break;
            }
        }
        Method it2 = (Method) element$iv;
        if (it2 != null) {
            it2.setAccessible(true);
            return it2.invoke($this$invokeMethod, Arrays.copyOf(args, args.length));
        }
        throw new NoSuchMethodException();
    }

    public static final Object invokeStaticMethod(Class<?> cls, Object[] args, Function1<? super Method, Boolean> condition) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(condition, "condition");
        Object[] declaredMethods = cls.getClass().getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "this::class.java.declaredMethods");
        Object[] $this$firstOrNull$iv = declaredMethods;
        int length = $this$firstOrNull$iv.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                element$iv = null;
                break;
            }
            element$iv = $this$firstOrNull$iv[i];
            Member it = (Method) element$iv;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            Member $this$isStatic$iv = it;
            if (((Modifier.isStatic($this$isStatic$iv.getModifiers()) && condition.invoke(it).booleanValue()) ? 1 : null) != null) {
                break;
            }
            i++;
        }
        Method it2 = (Method) element$iv;
        if (it2 == null) {
            throw new NoSuchMethodException();
        }
        it2.setAccessible(true);
        return it2.invoke(cls, Arrays.copyOf(args, args.length));
    }

    /* renamed from: invokeMethod-qz3LsZg$default */
    public static /* synthetic */ Object m977invokeMethodqz3LsZg$default(Object obj, String str, Object[] args$iv, Class[] argTypes$iv, Class cls, int i, Object obj2) {
        if ((i & 2) != 0) {
            Object[] args$iv2 = new Object[0];
            args$iv = Args.m968constructorimpl(args$iv2);
        }
        int $i$f$args = i & 4;
        if ($i$f$args != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        if ((i & 8) != 0) {
            cls = null;
        }
        return m976invokeMethodqz3LsZg(obj, str, args$iv, argTypes$iv, cls);
    }

    /* renamed from: invokeMethod-qz3LsZg */
    public static final Object m976invokeMethodqz3LsZg(Object invokeMethod, String methodName, Object[] args, Class<?>[] argTypes, Class<?> cls) {
        Intrinsics.checkNotNullParameter(invokeMethod, "$this$invokeMethod");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        if (StringsKt.isBlank(methodName)) {
            throw new IllegalArgumentException("Object name must not be empty!");
        }
        if (args.length != argTypes.length) {
            throw new IllegalArgumentException("Method args size must equals argTypes size!");
        }
        if (args.length == 0) {
            try {
                return m985method_8BSV04$default(invokeMethod, methodName, cls, false, null, 8, null).invoke(invokeMethod, new Object[0]);
            } catch (NoSuchMethodException e) {
                return null;
            }
        }
        try {
            return m984method_8BSV04(invokeMethod, methodName, cls, false, argTypes).invoke(invokeMethod, Arrays.copyOf(args, args.length));
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }

    /* renamed from: invokeMethodAs-qz3LsZg$default */
    public static /* synthetic */ Object m979invokeMethodAsqz3LsZg$default(Object obj, String str, Object[] args$iv, Class[] argTypes$iv, Class cls, int i, Object obj2) {
        if ((i & 2) != 0) {
            Object[] args$iv2 = new Object[0];
            args$iv = Args.m968constructorimpl(args$iv2);
        }
        int $i$f$args = i & 4;
        if ($i$f$args != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        if ((i & 8) != 0) {
            cls = null;
        }
        return m978invokeMethodAsqz3LsZg(obj, str, args$iv, argTypes$iv, cls);
    }

    /* renamed from: invokeMethodAs-qz3LsZg */
    public static final <T> T m978invokeMethodAsqz3LsZg(Object invokeMethodAs, String methodName, Object[] args, Class<?>[] argTypes, Class<?> cls) {
        Intrinsics.checkNotNullParameter(invokeMethodAs, "$this$invokeMethodAs");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        return (T) m976invokeMethodqz3LsZg(invokeMethodAs, methodName, args, argTypes, cls);
    }

    public static final Object invokeMethodAuto(Object $this$invokeMethodAuto, String methodName, Object... args) {
        Intrinsics.checkNotNullParameter($this$invokeMethodAuto, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        return XposedHelpers.callMethod($this$invokeMethodAuto, methodName, Arrays.copyOf(args, args.length));
    }

    public static final <T> T invokeMethodAutoAs(Object obj, String methodName, Object... args) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        return (T) XposedHelpers.callMethod(obj, methodName, Arrays.copyOf(args, args.length));
    }

    /* renamed from: invokeStaticMethod-qz3LsZg$default */
    public static /* synthetic */ Object m981invokeStaticMethodqz3LsZg$default(Class cls, String str, Object[] args$iv, Class[] argTypes$iv, Class cls2, int i, Object obj) {
        if ((i & 2) != 0) {
            Object[] args$iv2 = new Object[0];
            args$iv = Args.m968constructorimpl(args$iv2);
        }
        int $i$f$args = i & 4;
        if ($i$f$args != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        if ((i & 8) != 0) {
            cls2 = null;
        }
        return m980invokeStaticMethodqz3LsZg(cls, str, args$iv, argTypes$iv, cls2);
    }

    /* renamed from: invokeStaticMethod-qz3LsZg */
    public static final Object m980invokeStaticMethodqz3LsZg(Class<?> invokeStaticMethod, String methodName, Object[] args, Class<?>[] argTypes, Class<?> cls) {
        Intrinsics.checkNotNullParameter(invokeStaticMethod, "$this$invokeStaticMethod");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        if (args.length != argTypes.length) {
            throw new IllegalArgumentException("Method args size must equals argTypes size!");
        }
        if (args.length == 0) {
            try {
                return m985method_8BSV04$default(invokeStaticMethod, methodName, cls, true, null, 8, null).invoke(invokeStaticMethod, new Object[0]);
            } catch (NoSuchMethodException e) {
                return null;
            }
        }
        try {
            return m984method_8BSV04(invokeStaticMethod, methodName, cls, true, argTypes).invoke(invokeStaticMethod, Arrays.copyOf(args, args.length));
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }

    /* renamed from: invokeStaticMethodAs-qz3LsZg$default */
    public static /* synthetic */ Object m983invokeStaticMethodAsqz3LsZg$default(Class cls, String str, Object[] args$iv, Class[] argTypes$iv, Class cls2, int i, Object obj) {
        if ((i & 2) != 0) {
            Object[] args$iv2 = new Object[0];
            args$iv = Args.m968constructorimpl(args$iv2);
        }
        int $i$f$args = i & 4;
        if ($i$f$args != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        if ((i & 8) != 0) {
            cls2 = null;
        }
        return m982invokeStaticMethodAsqz3LsZg(cls, str, args$iv, argTypes$iv, cls2);
    }

    /* renamed from: invokeStaticMethodAs-qz3LsZg */
    public static final <T> T m982invokeStaticMethodAsqz3LsZg(Class<?> invokeStaticMethodAs, String methodName, Object[] args, Class<?>[] argTypes, Class<?> cls) {
        Intrinsics.checkNotNullParameter(invokeStaticMethodAs, "$this$invokeStaticMethodAs");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        return (T) m980invokeStaticMethodqz3LsZg(invokeStaticMethodAs, methodName, args, argTypes, cls);
    }

    public static final Object invokeStaticMethodAuto(Class<?> cls, String methodName, Object... args) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        return XposedHelpers.callStaticMethod(cls, methodName, Arrays.copyOf(args, args.length));
    }

    public static final <T> T invokeStaticMethodAutoAs(Class<?> cls, String methodName, Object... args) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(args, "args");
        return (T) XposedHelpers.callStaticMethod(cls, methodName, Arrays.copyOf(args, args.length));
    }

    /* renamed from: newInstance-5s6d-ik$default */
    public static /* synthetic */ Object m987newInstance5s6dik$default(Class cls, Object[] args$iv, Class[] argTypes$iv, int i, Object obj) {
        if ((i & 1) != 0) {
            Object[] args$iv2 = new Object[0];
            args$iv = Args.m968constructorimpl(args$iv2);
        }
        if ((i & 2) != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        return m986newInstance5s6dik(cls, args$iv, argTypes$iv);
    }

    /* renamed from: newInstance-5s6d-ik */
    public static final Object m986newInstance5s6dik(Class<?> newInstance, Object[] args, Class<?>[] argTypes) {
        Constructor constructor;
        Intrinsics.checkNotNullParameter(newInstance, "$this$newInstance");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        if (args.length != argTypes.length) {
            throw new IllegalArgumentException("Method args size must equals argTypes size!");
        }
        try {
            boolean z = true;
            if (!(argTypes.length == 0)) {
                constructor = newInstance.getDeclaredConstructor((Class[]) Arrays.copyOf(argTypes, argTypes.length));
                Intrinsics.checkNotNullExpressionValue(constructor, "this.getDeclaredConstructor(*argTypes.argTypes)");
            } else {
                constructor = newInstance.getDeclaredConstructor(new Class[0]);
                Intrinsics.checkNotNullExpressionValue(constructor, "this.getDeclaredConstructor()");
            }
            constructor.setAccessible(true);
            if (args.length != 0) {
                z = false;
            }
            if (z) {
                return constructor.newInstance(new Object[0]);
            }
            return constructor.newInstance(Arrays.copyOf(args, args.length));
        } catch (Throwable thr$iv) {
            Log.e$default(Log.INSTANCE, thr$iv, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: newInstanceAs-5s6d-ik$default */
    public static /* synthetic */ Object m989newInstanceAs5s6dik$default(Class cls, Object[] args$iv, Class[] argTypes$iv, int i, Object obj) {
        if ((i & 1) != 0) {
            Object[] args$iv2 = new Object[0];
            args$iv = Args.m968constructorimpl(args$iv2);
        }
        if ((i & 2) != 0) {
            Class[] argTypes$iv2 = new Class[0];
            argTypes$iv = ArgTypes.m961constructorimpl(argTypes$iv2);
        }
        return m988newInstanceAs5s6dik(cls, args$iv, argTypes$iv);
    }

    /* renamed from: newInstanceAs-5s6d-ik */
    public static final <T> T m988newInstanceAs5s6dik(Class<?> newInstanceAs, Object[] args, Class<?>[] argTypes) {
        Intrinsics.checkNotNullParameter(newInstanceAs, "$this$newInstanceAs");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(argTypes, "argTypes");
        return (T) m986newInstance5s6dik(newInstanceAs, args, argTypes);
    }

    public static final <T> T invokeAs(Method method, Object obj, Object... args) {
        Intrinsics.checkNotNullParameter(method, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        method.setAccessible(true);
        return (T) method.invoke(obj, Arrays.copyOf(args, args.length));
    }

    public static /* synthetic */ Method getMethodByDesc$default(String str, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return getMethodByDesc(str, classLoader);
    }

    public static final Method getMethodByDesc(String desc, ClassLoader clzLoader) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        Method $this$getMethodByDesc_u24lambda_u2d51 = DexDescriptor.INSTANCE.newMethodDesc(desc).getMethod$EzXHelper_release(clzLoader);
        $this$getMethodByDesc_u24lambda_u2d51.setAccessible(true);
        return $this$getMethodByDesc_u24lambda_u2d51;
    }

    public static /* synthetic */ Method getMethodByDescOrNull$default(String str, ClassLoader classLoader, int i, Object obj) {
        if ((i & 2) != 0) {
            classLoader = InitFields.INSTANCE.getEzXClassLoader();
        }
        return getMethodByDescOrNull(str, classLoader);
    }

    public static final Method getMethodByDescOrNull(String desc, ClassLoader clzLoader) {
        Object m1013constructorimpl;
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(clzLoader, "clzLoader");
        try {
            Result.Companion companion = Result.INSTANCE;
            m1013constructorimpl = Result.m1013constructorimpl(getMethodByDesc(desc, clzLoader));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1013constructorimpl = Result.m1013constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1019isFailureimpl(m1013constructorimpl)) {
            m1013constructorimpl = null;
        }
        return (Method) m1013constructorimpl;
    }

    public static final Method getMethodByDesc(ClassLoader $this$getMethodByDesc, String desc) {
        Intrinsics.checkNotNullParameter($this$getMethodByDesc, "<this>");
        Intrinsics.checkNotNullParameter(desc, "desc");
        return getMethodByDesc(desc, $this$getMethodByDesc);
    }

    public static final Method getMethodByDescOrNull(ClassLoader $this$getMethodByDescOrNull, String desc) {
        Intrinsics.checkNotNullParameter($this$getMethodByDescOrNull, "<this>");
        Intrinsics.checkNotNullParameter(desc, "desc");
        return getMethodByDescOrNull(desc, $this$getMethodByDescOrNull);
    }
}
