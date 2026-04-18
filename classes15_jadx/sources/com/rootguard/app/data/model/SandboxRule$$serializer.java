package com.rootguard.app.data.model;

import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/rootguard/app/data/model/SandboxRule.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/rootguard/app/data/model/SandboxRule;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class SandboxRule$$serializer implements GeneratedSerializer<SandboxRule> {
    public static final int $stable = 0;
    public static final SandboxRule$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        SandboxRule$$serializer sandboxRule$$serializer = new SandboxRule$$serializer();
        INSTANCE = sandboxRule$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.rootguard.app.data.model.SandboxRule", sandboxRule$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("packageName", false);
        pluginGeneratedSerialDescriptor.addElement("level", true);
        pluginGeneratedSerialDescriptor.addElement("commandWhitelist", true);
        pluginGeneratedSerialDescriptor.addElement("commandBlacklist", true);
        pluginGeneratedSerialDescriptor.addElement("pathWhitelist", true);
        pluginGeneratedSerialDescriptor.addElement("pathBlacklist", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SandboxRule$$serializer() {
    }

    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = SandboxRule.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, kSerializerArr[1], kSerializerArr[2], kSerializerArr[3], kSerializerArr[4], kSerializerArr[5]};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0071. Please report as an issue. */
    /* renamed from: deserialize, reason: merged with bridge method [inline-methods] */
    public SandboxRule m6deserialize(Decoder decoder) {
        DeserializationStrategy[] deserializationStrategyArr;
        List list;
        List list2;
        List list3;
        List list4;
        SandboxLevel sandboxLevel;
        String str;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        deserializationStrategyArr = SandboxRule.$childSerializers;
        int i2 = 5;
        String str2 = null;
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            SandboxLevel sandboxLevel2 = (SandboxLevel) beginStructure.decodeSerializableElement(descriptor2, 1, deserializationStrategyArr[1], (Object) null);
            List list5 = (List) beginStructure.decodeSerializableElement(descriptor2, 2, deserializationStrategyArr[2], (Object) null);
            List list6 = (List) beginStructure.decodeSerializableElement(descriptor2, 3, deserializationStrategyArr[3], (Object) null);
            List list7 = (List) beginStructure.decodeSerializableElement(descriptor2, 4, deserializationStrategyArr[4], (Object) null);
            list = (List) beginStructure.decodeSerializableElement(descriptor2, 5, deserializationStrategyArr[5], (Object) null);
            str = decodeStringElement;
            i = 63;
            list3 = list6;
            list2 = list7;
            list4 = list5;
            sandboxLevel = sandboxLevel2;
        } else {
            boolean z = true;
            int i3 = 0;
            List list8 = null;
            SandboxLevel sandboxLevel3 = null;
            List list9 = null;
            List list10 = null;
            List list11 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 5;
                    case 0:
                        str2 = beginStructure.decodeStringElement(descriptor2, 0);
                        i3 |= 1;
                        i2 = 5;
                    case 1:
                        sandboxLevel3 = (SandboxLevel) beginStructure.decodeSerializableElement(descriptor2, 1, deserializationStrategyArr[1], sandboxLevel3);
                        i3 |= 2;
                        i2 = 5;
                    case 2:
                        list9 = (List) beginStructure.decodeSerializableElement(descriptor2, 2, deserializationStrategyArr[2], list9);
                        i3 |= 4;
                    case 3:
                        list10 = (List) beginStructure.decodeSerializableElement(descriptor2, 3, deserializationStrategyArr[3], list10);
                        i3 |= 8;
                    case 4:
                        list11 = (List) beginStructure.decodeSerializableElement(descriptor2, 4, deserializationStrategyArr[4], list11);
                        i3 |= 16;
                    case 5:
                        list8 = (List) beginStructure.decodeSerializableElement(descriptor2, i2, deserializationStrategyArr[i2], list8);
                        i3 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            list = list8;
            list2 = list11;
            list3 = list10;
            list4 = list9;
            sandboxLevel = sandboxLevel3;
            str = str2;
            i = i3;
        }
        beginStructure.endStructure(descriptor2);
        return new SandboxRule(i, str, sandboxLevel, list4, list3, list2, list, (SerializationConstructorMarker) null);
    }

    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public void serialize(Encoder encoder, SandboxRule value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        SandboxRule.write$Self$app_debug(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
