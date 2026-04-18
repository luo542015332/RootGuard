package com.rootguard.app.data.model;

import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/rootguard/app/data/model/IsolationConfig.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/rootguard/app/data/model/IsolationConfig;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class IsolationConfig$$serializer implements GeneratedSerializer<IsolationConfig> {
    public static final int $stable = 0;
    public static final IsolationConfig$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        IsolationConfig$$serializer isolationConfig$$serializer = new IsolationConfig$$serializer();
        INSTANCE = isolationConfig$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.rootguard.app.data.model.IsolationConfig", isolationConfig$$serializer, 16);
        pluginGeneratedSerialDescriptor.addElement("packageName", false);
        pluginGeneratedSerialDescriptor.addElement("appName", false);
        pluginGeneratedSerialDescriptor.addElement("isEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("hideMagisk", true);
        pluginGeneratedSerialDescriptor.addElement("hideSuBinary", true);
        pluginGeneratedSerialDescriptor.addElement("hideBusybox", true);
        pluginGeneratedSerialDescriptor.addElement("hideXposed", true);
        pluginGeneratedSerialDescriptor.addElement("hideMagiskApp", true);
        pluginGeneratedSerialDescriptor.addElement("isolateStorage", true);
        pluginGeneratedSerialDescriptor.addElement("disableRootAccess", true);
        pluginGeneratedSerialDescriptor.addElement("customProps", true);
        pluginGeneratedSerialDescriptor.addElement("sandboxRule", true);
        pluginGeneratedSerialDescriptor.addElement("enablePlatformCompatHook", true);
        pluginGeneratedSerialDescriptor.addElement("enableAppDataIsolation", true);
        pluginGeneratedSerialDescriptor.addElement("enablePmsHook", true);
        pluginGeneratedSerialDescriptor.addElement("hiddenPackages", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private IsolationConfig$$serializer() {
    }

    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = IsolationConfig.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, kSerializerArr[10], BuiltinSerializersKt.getNullable(SandboxRule$$serializer.INSTANCE), BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, BooleanSerializer.INSTANCE, kSerializerArr[15]};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x00dd. Please report as an issue. */
    /* renamed from: deserialize, reason: merged with bridge method [inline-methods] */
    public IsolationConfig m1deserialize(Decoder decoder) {
        DeserializationStrategy[] deserializationStrategyArr;
        int i;
        SandboxRule sandboxRule;
        boolean z;
        String str;
        String str2;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        List list;
        boolean z11;
        Map map;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        deserializationStrategyArr = IsolationConfig.$childSerializers;
        int i2 = 9;
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 1);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 2);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 3);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 4);
            boolean decodeBooleanElement4 = beginStructure.decodeBooleanElement(descriptor2, 5);
            boolean decodeBooleanElement5 = beginStructure.decodeBooleanElement(descriptor2, 6);
            boolean decodeBooleanElement6 = beginStructure.decodeBooleanElement(descriptor2, 7);
            boolean decodeBooleanElement7 = beginStructure.decodeBooleanElement(descriptor2, 8);
            boolean decodeBooleanElement8 = beginStructure.decodeBooleanElement(descriptor2, 9);
            Map map2 = (Map) beginStructure.decodeSerializableElement(descriptor2, 10, deserializationStrategyArr[10], (Object) null);
            SandboxRule sandboxRule2 = (SandboxRule) beginStructure.decodeNullableSerializableElement(descriptor2, 11, SandboxRule$$serializer.INSTANCE, (Object) null);
            boolean decodeBooleanElement9 = beginStructure.decodeBooleanElement(descriptor2, 12);
            boolean decodeBooleanElement10 = beginStructure.decodeBooleanElement(descriptor2, 13);
            boolean decodeBooleanElement11 = beginStructure.decodeBooleanElement(descriptor2, 14);
            list = (List) beginStructure.decodeSerializableElement(descriptor2, 15, deserializationStrategyArr[15], (Object) null);
            z11 = decodeBooleanElement10;
            z3 = decodeBooleanElement8;
            z4 = decodeBooleanElement6;
            z5 = decodeBooleanElement5;
            z7 = decodeBooleanElement3;
            z8 = decodeBooleanElement7;
            z9 = decodeBooleanElement9;
            z10 = decodeBooleanElement11;
            sandboxRule = sandboxRule2;
            z2 = decodeBooleanElement2;
            map = map2;
            i = 65535;
            str = decodeStringElement;
            z = decodeBooleanElement;
            str2 = decodeStringElement2;
            z6 = decodeBooleanElement4;
        } else {
            boolean z12 = false;
            int i3 = 0;
            boolean z13 = false;
            boolean z14 = false;
            boolean z15 = false;
            boolean z16 = false;
            boolean z17 = false;
            boolean z18 = false;
            boolean z19 = false;
            boolean z20 = false;
            boolean z21 = false;
            boolean z22 = true;
            List list2 = null;
            SandboxRule sandboxRule3 = null;
            String str3 = null;
            String str4 = null;
            Map map3 = null;
            boolean z23 = false;
            while (z22) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z22 = false;
                        i2 = 9;
                    case 0:
                        str3 = beginStructure.decodeStringElement(descriptor2, 0);
                        i3 |= 1;
                        i2 = 9;
                    case 1:
                        str4 = beginStructure.decodeStringElement(descriptor2, 1);
                        i3 |= 2;
                        i2 = 9;
                    case 2:
                        i3 |= 4;
                        z23 = beginStructure.decodeBooleanElement(descriptor2, 2);
                        i2 = 9;
                    case 3:
                        z14 = beginStructure.decodeBooleanElement(descriptor2, 3);
                        i3 |= 8;
                        i2 = 9;
                    case 4:
                        z19 = beginStructure.decodeBooleanElement(descriptor2, 4);
                        i3 |= 16;
                    case 5:
                        z18 = beginStructure.decodeBooleanElement(descriptor2, 5);
                        i3 |= 32;
                    case 6:
                        z17 = beginStructure.decodeBooleanElement(descriptor2, 6);
                        i3 |= 64;
                    case 7:
                        z16 = beginStructure.decodeBooleanElement(descriptor2, 7);
                        i3 |= 128;
                    case 8:
                        z20 = beginStructure.decodeBooleanElement(descriptor2, 8);
                        i3 |= 256;
                    case 9:
                        z15 = beginStructure.decodeBooleanElement(descriptor2, i2);
                        i3 |= 512;
                    case 10:
                        map3 = (Map) beginStructure.decodeSerializableElement(descriptor2, 10, deserializationStrategyArr[10], map3);
                        i3 |= 1024;
                    case 11:
                        sandboxRule3 = (SandboxRule) beginStructure.decodeNullableSerializableElement(descriptor2, 11, SandboxRule$$serializer.INSTANCE, sandboxRule3);
                        i3 |= 2048;
                    case 12:
                        z21 = beginStructure.decodeBooleanElement(descriptor2, 12);
                        i3 |= 4096;
                    case 13:
                        z13 = beginStructure.decodeBooleanElement(descriptor2, 13);
                        i3 |= 8192;
                    case 14:
                        z12 = beginStructure.decodeBooleanElement(descriptor2, 14);
                        i3 |= 16384;
                    case 15:
                        list2 = (List) beginStructure.decodeSerializableElement(descriptor2, 15, deserializationStrategyArr[15], list2);
                        i3 |= 32768;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i = i3;
            sandboxRule = sandboxRule3;
            z = z23;
            str = str3;
            str2 = str4;
            z2 = z14;
            z3 = z15;
            z4 = z16;
            z5 = z17;
            z6 = z18;
            z7 = z19;
            z8 = z20;
            z9 = z21;
            z10 = z12;
            list = list2;
            z11 = z13;
            map = map3;
        }
        beginStructure.endStructure(descriptor2);
        return new IsolationConfig(i, str, str2, z, z2, z7, z6, z5, z4, z8, z3, map, sandboxRule, z9, z11, z10, list, (SerializationConstructorMarker) null);
    }

    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public void serialize(Encoder encoder, IsolationConfig value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        IsolationConfig.write$Self$app_debug(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
