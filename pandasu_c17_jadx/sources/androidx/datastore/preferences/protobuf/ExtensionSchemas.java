package androidx.datastore.preferences.protobuf;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
final class ExtensionSchemas {
    private static final ExtensionSchema<?> LITE_SCHEMA = new ExtensionSchemaLite();
    private static final ExtensionSchema<?> FULL_SCHEMA = loadSchemaForFullRuntime();

    ExtensionSchemas() {
    }

    private static ExtensionSchema<?> loadSchemaForFullRuntime() {
        try {
            Class<?> clazz = Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull");
            return (ExtensionSchema) clazz.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExtensionSchema<?> lite() {
        return LITE_SCHEMA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExtensionSchema<?> full() {
        ExtensionSchema<?> extensionSchema = FULL_SCHEMA;
        if (extensionSchema == null) {
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        return extensionSchema;
    }
}
