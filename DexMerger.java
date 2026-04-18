import java.io.*;
import java.nio.*;
import java.util.*;

public class DexMerger {
    public static void main(String[] args) throws Exception {
        if (args.length < 2) {
            System.out.println("Usage: java DexMerger <pandaTurboDex> <outDex>");
            System.exit(1);
        }
        File pandaDex = new File(args[0]);
        File outFile = new File(args[1]);

        String pkg = "com/rootguard/app/lspoed";
        int PREFIX_LEN = ("L" + pkg + "/").length();

        System.out.println("Reading PandaTurbo DEX: " + pandaDex.length() + " bytes");
        System.out.println("Loading lspoed from PandaSU DEX files...");

        // Step 1: Find and extract lspoed classes from PandaSU DEX files
        List<byte[]> lspoedClasses = new ArrayList<>();
        String[] dexNames = {
            "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk\\classes2.dex",
            "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk\\classes3.dex",
            "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk\\classes4.dex"
        };
        for (String dn : dexNames) {
            File df = new File(dn);
            if (!df.exists()) { System.out.println("  SKIP: " + dn); continue; }
            System.out.println("  Scanning: " + dn);
            byte[] dex = ByteBuffer.wrap(readAll(df)).order(ByteOrder.LITTLE_ENDIAN).array();
            // Walk string_ids to find lspoed class names
            // Then extract that class_def and its class_data into lspoedClasses
            List<byte[]> extracted = extractClassesFromDex(readAll(df), pkg, PREFIX_LEN);
            lspoedClasses.addAll(extracted);
            System.out.println("    Extracted: " + extracted.size());
        }

        System.out.println("\nTotal lspoed classes: " + lspoedClasses.size());
        if (lspoedClasses.isEmpty()) { System.out.println("ERROR"); System.exit(1); }

        // Step 2: Parse PandaSU base DEX, replace lspoed classes
        System.out.println("\nMerging into PandaTurbo DEX...");
        byte[] merged = mergeDex(readAll(pandaDex), lspoedClasses);

        outFile.getParentFile().mkdirs();
        try (FileOutputStream fos = new FileOutputStream(outFile)) {
            fos.write(merged);
        }
        System.out.println("Written: " + outFile.length() + " bytes -> " + outFile);
    }

    static byte[] readAll(File f) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try (FileInputStream fis = new FileInputStream(f)) {
            byte[] buf = new byte[8192];
            int n;
            while ((n = fis.read(buf)) >= 0) baos.write(buf, 0, n);
        }
        return baos.toByteArray();
    }

    static List<byte[]> extractClassesFromDex(byte[] dex, String pkg, int prefixLen) throws Exception {
        List<byte[]> out = new ArrayList<>();
        ByteBuffer bb = ByteBuffer.wrap(dex).order(ByteOrder.LITTLE_ENDIAN);
        bb.position(0);

        // Read header
        byte[] magic = new byte[8];
        bb.get(magic);
        int checksum = bb.getInt(); // adler32
        int signature = 0; // skip 20 bytes
        for (int i = 0; i < 5; i++) bb.getInt();

        int fileSize = bb.getInt();
        int headerSize = bb.getInt();
        int endianTag = bb.getInt();

        int[] offsets = new int[9];
        String[] names = {"string_id", "type_id", "proto_id", "field_id", "method_id", "class_def", "class_data", "map_list", "type_list"};

        int stringIdsSize = bb.getInt();
        int stringIdsOff = bb.getInt();
        int typeIdsSize = bb.getInt();
        int typeIdsOff = bb.getInt();
        int protoIdsSize = bb.getInt();
        int protoIdsOff = bb.getInt();
        int fieldIdsSize = bb.getInt();
        int fieldIdsOff = bb.getInt();
        int methodIdsSize = bb.getInt();
        int methodIdsOff = bb.getInt();
        int classDefsSize = bb.getInt();
        int classDefsOff = bb.getInt();
        int dataSize = bb.getInt();
        int dataOff = bb.getInt();

        // Read all string_ids
        String[] strings = new String[stringIdsSize];
        for (int i = 0; i < stringIdsSize; i++) {
            int off = getInt(dex, stringIdsOff + i * 4);
            int utf16Size = readUleb128(dex, off);
            int byteLen = readUleb128(dex, off + getUleb128Len(utf16Size));
            byte[] strBytes = new byte[byteLen];
            System.arraycopy(dex, off + getUleb128Len(utf16Size) + getUleb128Len(byteLen), strBytes, 0, byteLen);
            strings[i] = new String(strBytes, java.nio.charset.StandardCharsets.UTF_8);
        }

        // Find lspoed class_def indices
        List<Integer> lspoedClassIndices = new ArrayList<>();
        for (int i = 0; i < classDefsSize; i++) {
            int off = classDefsOff + i * 0x20;
            int classIdx = bb.getInt(); // already past header offset
            // Read directly from dex bytes
            int ci = getInt(dex, off);
            if (ci >= 0 && ci < typeIdsSize) {
                int typeOff = typeIdsOff + ci * 4;
                int stringIdx = getInt(dex, typeOff);
                if (stringIdx >= 0 && stringIdx < stringIdsSize) {
                    String t = strings[stringIdx];
                    if (t.startsWith("L" + pkg + "/")) {
                        lspoedClassIndices.add(i);
                        System.out.println("    Found lspoed class: " + t);
                    }
                }
            }
        }

        // Extract each lspoed class as raw bytes
        for (int classIdx : lspoedClassIndices) {
            int off = classDefsOff + classIdx * 0x20;
            // We need to serialize this class into a separate DEX
            // Since DEX is complex, we'll do class-by-class extraction
            byte[] classBytes = extractClassBytes(dex, classIdx, classDefsOff, typeIdsOff, strings);
            if (classBytes != null) out.add(classBytes);
        }

        return out;
    }

    static int getInt(byte[] buf, int off) {
        return ByteBuffer.wrap(buf).order(ByteOrder.LITTLE_ENDIAN).position(off).getInt();
    }

    static int readUleb128(byte[] buf, int off) {
        int result = 0;
        int shift = 0;
        while (true) {
            int b = buf[off++] & 0xFF;
            result |= (b & 0x7F) << shift;
            if ((b & 0x80) == 0) break;
            shift += 7;
        }
        return result;
    }

    static int getUleb128Len(int val) {
        if (val < 0) return 5;
        if (val < 0x80) return 1;
        if (val < 0x4000) return 2;
        if (val < 0x200000) return 3;
        if (val < 0x10000000) return 4;
        return 5;
    }

    static byte[] extractClassBytes(byte[] dex, int classIdx, int classDefsOff, int typeIdsOff, String[] strings) {
        // Just return the class_def_item for now - we'll do full DEX merge
        // by reading the class data from the DEX file
        int off = classDefsOff + classIdx * 0x20;
        int classTypeIdx = getInt(dex, off);
        int classOff = getInt(dex, off + 8); // class_data_off

        if (classOff == 0) return null;

        // Extract a meaningful representation - just the class_data section
        // For now, return a simple marker
        // The real solution is to use a proper DEX merge
        return null;
    }

    static byte[] mergeDex(byte[] baseDex, List<byte[]> extraClasses) throws Exception {
        // Simple approach: append the extra class data to base DEX
        // Since we can't easily modify DEX indices, we'll use the class_data directly

        // Actually, for this to work properly, we need to:
        // 1. Read the base DEX
        // 2. Add all lspoed class_defs to class_defs
        // 3. Add all their class_data to data section
        // 4. Update all string/type/method/field IDs
        // 5. Recompute checksum and file_size

        // This is complex. Let's do it with a proper DEX reader/writer
        ByteBuffer base = ByteBuffer.wrap(baseDex).order(ByteOrder.LITTLE_ENDIAN);

        // Read header fields
        int headerSize = 0x70;
        int stringIdsSize = getInt(baseDex, 0x38);
        int stringIdsOff = getInt(baseDex, 0x3C);
        int typeIdsSize = getInt(baseDex, 0x40);
        int typeIdsOff = getInt(baseDex, 0x44);
        int protoIdsSize = getInt(baseDex, 0x48);
        int protoIdsOff = getInt(baseDex, 0x4C);
        int fieldIdsSize = getInt(baseDex, 0x50);
        int fieldIdsOff = getInt(baseDex, 0x54);
        int methodIdsSize = getInt(baseDex, 0x58);
        int methodIdsOff = getInt(baseDex, 0x5C);
        int classDefsSize = getInt(baseDex, 0x68);
        int classDefsOff = getInt(baseDex, 0x6C);
        int dataSize = getInt(baseDex, 0x70);
        int dataOff = getInt(baseDex, 0x74);
        int origFileSize = getInt(baseDex, 0x20);

        System.out.println("  Base DEX: " + classDefsSize + " classes, " + dataSize + " data bytes");
        System.out.println("  Adding: " + extraClasses.size() + " lspoed classes");

        // Read existing strings and types to find lspoed entries
        Set<String> existingStrings = new LinkedHashSet<>();
        for (int i = 0; i < stringIdsSize; i++) {
            int off = stringIdsOff + i * 4;
            int sOff = getInt(baseDex, off);
            int utf16Len = readUleb128(baseDex, sOff);
            int byteLen = readUleb128(baseDex, sOff + getUleb128Len(utf16Len));
            byte[] str = new byte[byteLen];
            System.arraycopy(baseDex, sOff + getUleb128Len(utf16Len) + getUleb128Len(byteLen), str, 0, byteLen);
            existingStrings.add(new String(str, java.nio.charset.StandardCharsets.UTF_8));
        }

        // Find string indices for lspoed package
        // We need to add "com/pandasu/turbo/lspoed" etc. to string_ids
        // But DEX string_ids can't be easily appended - they need to be in sorted order

        // Alternative: just add lspoed classes to PandaTurbo's DEX directly
        // by reading the PandaSU DEX and extracting class_def + class_data sections

        // Simple working approach:
        // Extract lspoed classes as separate DEX files from PandaSU,
        // then combine all into a single multi-DEX APK

        // Since we can't modify the DEX format easily, let's:
        // 1. Read PandaSU DEX files byte-for-byte
        // 2. Extract the raw class data
        // 3. Append to PandaTurbo's data section

        // For now, let's just test if we can read the lspoed classes
        // and merge them properly
        System.out.println("  Merging via raw DEX manipulation...");

        // DO THE SIMPLE THING: just return base DEX for now and do the merge
        // with a DEX library approach

        // Actually - let's use the fact that we have the lspoed DEX files already
        // from PandaSU! Instead of extracting from smali, let's just include
        // the classes2/3/4.dex as-is in PandaTurbo as secondary DEX files

        // Use multidex: copy classes2/3/4.dex to the APK as secondary DEX
        // The APK will have: classes.dex + classes2.dex + classes3.dex + classes4.dex

        System.out.println("\n  Using multi-DEX approach:");
        String[] lspoedDexNames = {
            "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk\\classes2.dex",
            "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk\\classes3.dex",
            "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk\\classes4.dex"
        };

        for (String dn : lspoedDexNames) {
            File df = new File(dn);
            if (!df.exists()) continue;
            System.out.println("  Copying: " + df.getName() + " (" + df.length() + " bytes)");
        }

        // Write merged DEX (base + lspoed data)
        // For simplicity, just copy base DEX for now and handle multi-DEX in build
        System.out.println("\n  NOTE: Use multidex to include lspoed DEX files");
        return baseDex;
    }
}
