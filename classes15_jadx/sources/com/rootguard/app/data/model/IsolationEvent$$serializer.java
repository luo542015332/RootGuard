package com.rootguard.app.data.model;

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
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tHÖ\u0001¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002HÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VXÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"com/rootguard/app/data/model/IsolationEvent.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/rootguard/app/data/model/IsolationEvent;", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final class IsolationEvent$$serializer implements GeneratedSerializer<IsolationEvent> {
    public static final int $stable = 0;
    public static final IsolationEvent$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        IsolationEvent$$serializer isolationEvent$$serializer = new IsolationEvent$$serializer();
        INSTANCE = isolationEvent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.rootguard.app.data.model.IsolationEvent", isolationEvent$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("packageName", false);
        pluginGeneratedSerialDescriptor.addElement("type", false);
        pluginGeneratedSerialDescriptor.addElement("command", true);
        pluginGeneratedSerialDescriptor.addElement("path", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private IsolationEvent$$serializer() {
    }

    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = IsolationEvent.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, kSerializerArr[1], StringSerializer.INSTANCE, StringSerializer.INSTANCE, LongSerializer.INSTANCE, kSerializerArr[5]};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0063. Please report as an issue. */
    /* renamed from: deserialize, reason: merged with bridge method [inline-methods] */
    public IsolationEvent m2deserialize(Decoder decoder) {
        DeserializationStrategy[] deserializationStrategyArr;
        IsolationAction isolationAction;
        long j;
        String str;
        String str2;
        String str3;
        IsolationEventType isolationEventType;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        deserializationStrategyArr = IsolationEvent.$childSerializers;
        String str4 = null;
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            IsolationEventType isolationEventType2 = (IsolationEventType) beginStructure.decodeSerializableElement(descriptor2, 1, deserializationStrategyArr[1], (Object) null);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 2);
            String decodeStringElement3 = beginStructure.decodeStringElement(descriptor2, 3);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 4);
            isolationAction = (IsolationAction) beginStructure.decodeSerializableElement(descriptor2, 5, deserializationStrategyArr[5], (Object) null);
            str2 = decodeStringElement3;
            str = decodeStringElement2;
            isolationEventType = isolationEventType2;
            j = decodeLongElement;
            str3 = decodeStringElement;
            i = 63;
        } else {
            boolean z = true;
            int i2 = 0;
            String str5 = null;
            IsolationAction isolationAction2 = null;
            long j2 = 0;
            IsolationEventType isolationEventType3 = null;
            String str6 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                    case 0:
                        str4 = beginStructure.decodeStringElement(descriptor2, 0);
                        i2 |= 1;
                    case 1:
                        isolationEventType3 = (IsolationEventType) beginStructure.decodeSerializableElement(descriptor2, 1, deserializationStrategyArr[1], isolationEventType3);
                        i2 |= 2;
                    case 2:
                        str6 = beginStructure.decodeStringElement(descriptor2, 2);
                        i2 |= 4;
                    case 3:
                        str5 = beginStructure.decodeStringElement(descriptor2, 3);
                        i2 |= 8;
                    case 4:
                        j2 = beginStructure.decodeLongElement(descriptor2, 4);
                        i2 |= 16;
                    case 5:
                        isolationAction2 = (IsolationAction) beginStructure.decodeSerializableElement(descriptor2, 5, deserializationStrategyArr[5], isolationAction2);
                        i2 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            isolationAction = isolationAction2;
            j = j2;
            str = str6;
            str2 = str5;
            str3 = str4;
            isolationEventType = isolationEventType3;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new IsolationEvent(i, str3, isolationEventType, str, str2, j, isolationAction, (SerializationConstructorMarker) null);
    }

    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public void serialize(Encoder encoder, IsolationEvent value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        IsolationEvent.write$Self$app_debug(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
