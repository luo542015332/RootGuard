import java.io.*;
import java.nio.*;
import java.util.*;
import java.util.zip.*;

public class PureDexMerger {
    static final int DEX_FILE_MAGIC = 0x0A786544; // "dex\n"
    static final int SHA1_LEN = 20;

    public static void main(String[] args) throws Exception {
        String pandaBase = "C:\\Users\\Administrator\\WorkBuddy\\20260410212817\\PandaTurbo\\app\\build\\outputs\\apk\\debug";
        String pandaDexPath = pandaBase + "\\classes.dex";
        String lspoedBase = "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk";
        String outDir = pandaBase;
        String outPath = outDir + "\\classes.dex";

        File pandaDex = new File(pandaDexPath);
        System.out.println("PandaTurbo DEX: " + pandaDex.length() + " bytes");

        // Read base DEX
        byte[] base = readAll(pandaDex);
        System.out.println("Loaded PandaTurbo DEX: " + base.length + " bytes");

        // Read all PandaSU secondary DEX files
        List<String> pandaSuDexNames = Arrays.asList(
            "classes2.dex", "classes3.dex", "classes4.dex"
        );

        for (String dexName : pandaSuDexNames) {
            File f = new File(lspoedBase, dexName);
            if (!f.exists()) { System.out.println("SKIP: " + dexName); continue; }

            byte[] dex = readAll(f);
            System.out.println("\nProcessing " + dexName + " (" + dex.length + " bytes)");

            // Find lspoed classes in this DEX
            int count = extractAndMergeLspoed(base, dex);
            System.out.println("  Merged " + count + " lspoed classes");
        }

        // Write merged DEX
        // Update checksum
        updateChecksum(base);
        new File(outPath).delete();
        try (FileOutputStream fos = new FileOutputStream(outPath)) {
            fos.write(base);
        }
        System.out.println("\nWritten: " + outPath + " (" + base.length + " bytes)");
    }

    static int extractAndMergeLspoed(byte[] base, byte[] src) throws Exception {
        ByteBuffer bb = ByteBuffer.wrap(src).order(ByteOrder.LITTLE_ENDIAN);

        // Read src header
        int srcStringIdsSize = readInt(src, 0x38);
        int srcStringIdsOff = readInt(src, 0x3C);
        int srcTypeIdsSize = readInt(src, 0x40);
        int srcTypeIdsOff = readInt(src, 0x44);
        int srcClassDefsSize = readInt(src, 0x68);
        int srcClassDefsOff = readInt(src, 0x6C);
        int srcDataOff = readInt(src, 0x74);
        int srcDataSize = readInt(src, 0x70);
        int srcFileSize = readInt(src, 0x20);

        // Build string table from src
        String[] srcStrings = new String[srcStringIdsSize];
        for (int i = 0; i < srcStringIdsSize; i++) {
            int sOff = readInt(src, srcStringIdsOff + i * 4);
            srcStrings[i] = readString(src, sOff);
        }

        // Build type table from src
        int[] srcTypeToStringIdx = new int[srcTypeIdsSize];
        for (int i = 0; i < srcTypeIdsSize; i++) {
            srcTypeToStringIdx[i] = readInt(src, srcTypeIdsOff + i * 4);
        }

        // Read base header
        int baseStringIdsSize = readInt(base, 0x38);
        int baseStringIdsOff = readInt(base, 0x3C);
        int baseClassDefsSize = readInt(base, 0x68);
        int baseClassDefsOff = readInt(base, 0x6C);
        int baseDataOff = readInt(base, 0x74);
        int baseDataSize = readInt(base, 0x70);
        int baseFileSize = readInt(base, 0x20);

        // Build base string table
        String[] baseStrings = new String[baseStringIdsSize];
        for (int i = 0; i < baseStringIdsSize; i++) {
            int sOff = readInt(base, baseStringIdsOff + i * 4);
            baseStrings[i] = readString(base, sOff);
        }

        // Build string->index map for base
        Map<String, Integer> baseStringMap = new HashMap<>();
        for (int i = 0; i < baseStringIdsSize; i++) {
            baseStringMap.put(baseStrings[i], i);
        }

        // Find lspoed class_defs in src
        List<int[]> lspoedClassDefs = new ArrayList<>();
        int lspoedCount = 0;

        for (int i = 0; i < srcClassDefsSize; i++) {
            int cdoff = srcClassDefsOff + i * 0x20;
            int typeIdx = readInt(src, cdoff);
            if (typeIdx >= 0 && typeIdx < srcTypeIdsSize) {
                int strIdx = srcTypeToStringIdx[typeIdx];
                if (strIdx >= 0 && strIdx < srcStringIdsSize) {
                    String type = srcStrings[strIdx];
                    if (type.startsWith("Lcom/rootguard/app/lspoed/") ||
                        type.equals("Lcom/rootguard/app/lspoed;")) {
                        lspoedClassDefs.add(new int[]{cdoff, typeIdx, strIdx});
                        System.out.println("    LSPOED: " + type);
                        lspoedCount++;
                    }
                }
            }
        }

        if (lspoedClassDefs.isEmpty()) return 0;

        // For each lspoed class:
        // We need to copy its class_def + class_data into base DEX
        // Steps:
        // 1. Add all strings from lspoed classes to base string_ids (at the END)
        // 2. Add string_idx_off adjustments
        // 3. Copy class_defs
        // 4. Copy class_data (and fix string/type indices)
        // 5. Fix base's class_def count
        // 6. Fix data section
        // 7. Fix file_size

        // Strategy: We'll do a proper DEX merge
        // Step A: Collect all new strings needed
        Set<String> newStrings = new LinkedHashSet<>();
        for (int[] cd : lspoedClassDefs) {
            int typeIdx = cd[1]; // src type index
            int strIdx = srcTypeToStringIdx[typeIdx];
            String type = srcStrings[strIdx];
            newStrings.add(type);

            // Read the class_data to find all string references
            int classDefOff = cd[0];
            int classDataOff = readInt(src, classDefOff + 0x08);
            int annotationsOff = readInt(src, classDefOff + 0x0C);

            if (classDataOff > 0) {
                collectStringsFromClassData(src, classDataOff, srcStrings, newStrings);
            }
        }

        System.out.println("    New strings needed: " + newStrings.size());

        // Step B: Map existing base strings - find which ones we need to add
        // We add new strings to the END of the string_ids and data section
        List<String> stringsToAdd = new ArrayList<>();
        for (String s : newStrings) {
            if (!baseStringMap.containsKey(s)) {
                stringsToAdd.add(s);
            }
        }

        int newStringsCount = stringsToAdd.size();
        System.out.println("    New strings to append: " + newStringsCount);

        // Step C: Expand base DEX to accommodate new data
        int origDataSize = baseDataSize;
        int newDataSize = estimateNewDataSize(src, lspoedClassDefs, srcStrings, newStrings);
        int sizeDiff = newDataSize - origDataSize + (newStringsCount * 8); // rough estimate

        byte[] newBase = Arrays.copyOf(base, base.length + sizeDiff + 65536);
        // Zero out the new space
        Arrays.fill(newBase, base.length, newBase.length, (byte)0);

        // Step D: Add new strings to string_ids
        int newStringIdsStart = baseStringIdsOff + baseStringIdsSize * 4;
        int newStringDataStart = align4(baseDataOff + baseDataSize);
        int curStringDataOff = newStringDataStart;

        // Write new string data
        int[] newStringOffsets = new int[stringsToAdd.size()];
        for (int i = 0; i < stringsToAdd.size(); i++) {
            String s = stringsToAdd.get(i);
            newStringOffsets[i] = curStringDataOff;

            // Write MUTF-8 encoded string
            curStringDataOff = writeMutf8(newBase, curStringDataOff, s);
        }

        // Step E: Update string_ids in newBase (just update new entries)
        for (int i = 0; i < stringsToAdd.size(); i++) {
            int off = newStringIdsStart + i * 4;
            writeInt(newBase, off, newStringOffsets[i]);
        }

        // Step F: Copy and fix lspoed class_defs
        int newClassDefsStart = baseClassDefsOff + baseClassDefsSize * 0x20;
        int curClassDefOff = newClassDefsStart;

        for (int[] cd : lspoedClassDefs) {
            int srcClassDefOff = cd[0];
            int typeIdx = cd[1]; // src type idx
            String typeStr = srcStrings[cd[2]];

            // Map new type index
            int newTypeIdx;
            Integer existing = baseStringMap.get(typeStr);
            if (existing != null) {
                newTypeIdx = existing;
            } else {
                newTypeIdx = baseStringIdsSize + stringsToAdd.indexOf(typeStr);
            }

            // Copy class_def_item (0x20 bytes)
            byte[] classDefBytes = new byte[0x20];
            System.arraycopy(src, srcClassDefOff, classDefBytes, 0, 0x20);

            // Fix type_idx to new index
            writeInt(classDefBytes, 0, newTypeIdx);

            // Copy class_data and fix offsets
            int srcClassDataOff = readInt(src, srcClassDefOff + 0x08);
            int srcAnnotationsOff = readInt(src, srcClassDefOff + 0x0C);
            int srcStaticValuesOff = readInt(src, srcClassDefOff + 0x10);
            int srcInterfaceOff = readInt(src, srcClassDefOff + 0x14);

            // Estimate new class_data size
            int newClassDataSize = srcClassDataOff > 0 ? estimateClassDataSize(src, srcClassDataOff) : 0;
            int newClassDataOff = curStringDataOff;

            if (srcClassDataOff > 0 && newClassDataSize > 0) {
                // Copy and fix class_data
                copyAndFixClassData(src, srcClassDataOff, newBase, newClassDataOff, newStrings, baseStringMap);
                writeInt(classDefBytes, 0x08, newClassDataOff);
            }

            // Write class_def to newBase
            System.arraycopy(classDefBytes, 0, newBase, curClassDefOff, 0x20);
            curClassDefOff += 0x20;
        }

        // Step G: Update base header fields
        writeInt(newBase, 0x38, baseStringIdsSize + newStringsCount); // string_ids_size
        // string_ids_off stays the same
        writeInt(newBase, 0x68, baseClassDefsSize + lspoedClassDefs.size()); // class_defs_size
        writeInt(newBase, 0x6C, baseClassDefsOff); // class_defs_off (same)
        writeInt(newBase, 0x70, newBase.length - baseDataOff); // data_size
        writeInt(newBase, 0x20, newBase.length); // file_size

        // Update header_size (0x70) if needed
        base = newBase;

        System.out.println("    Merged " + lspoedClassDefs.size() + " classes into base DEX");
        System.out.println("    New DEX size: " + base.length);
        return lspoedClassDefs.size();
    }

    static int align4(int v) { return (v + 3) & ~3; }

    static int writeMutf8(byte[] buf, int off, String s) {
        // MUTF-8: modified UTF-8 (null-terminated, uses 2-byte for chars > U+07F)
        int start = off;
        buf[off++] = (byte) encodeLen(s.length());
        try {
            byte[] utf8 = s.getBytes("UTF-8");
            System.arraycopy(utf8, 0, buf, off, utf8.length);
            off += utf8.length;
        } catch (UnsupportedEncodingException e) {
            // fallback
            for (int i = 0; i < s.length(); i++) {
                int c = s.charAt(i);
                if (c == 0) { buf[off++] = 1; buf[off++] = 0; }
                else if (c < 0x80) buf[off++] = (byte) c;
                else if (c < 0x800) {
                    buf[off++] = (byte)(0xC0 | (c >> 6));
                    buf[off++] = (byte)(0x80 | (c & 0x3F));
                } else {
                    buf[off++] = (byte)(0xE0 | (c >> 12));
                    buf[off++] = (byte)(0x80 | ((c >> 6) & 0x3F));
                    buf[off++] = (byte)(0x80 | (c & 0x3F));
                }
            }
        }
        buf[off++] = 0;
        return off;
    }

    static int encodeLen(int len) {
        if (len > 0xFFFF) return 4;
        if (len > 0xFF) return 3;
        if (len > 0x7F) return 2;
        return 1;
    }

    static String readString(byte[] dex, int off) {
        int len = readUleb128(dex, off);
        int byteLen = readUleb128(dex, off + getUlebLen(len));
        byte[] buf = new byte[byteLen];
        System.arraycopy(dex, off + getUlebLen(len) + getUlebLen(byteLen), buf, 0, byteLen);
        try {
            return new String(buf, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return new String(buf);
        }
    }

    static int readUleb128(byte[] buf, int off) {
        int v = 0, shift = 0;
        while (true) {
            int b = buf[off++] & 0xFF;
            v |= (b & 0x7F) << shift;
            if ((b & 0x80) == 0) break;
            shift += 7;
        }
        return v;
    }

    static int getUlebLen(int v) {
        if (v < 0) return 5;
        if (v < 0x80) return 1;
        if (v < 0x4000) return 2;
        if (v < 0x200000) return 3;
        if (v < 0x10000000) return 4;
        return 5;
    }

    static int readInt(byte[] buf, int off) {
        return ByteBuffer.wrap(buf).order(ByteOrder.LITTLE_ENDIAN).position(off).getInt();
    }

    static void writeInt(byte[] buf, int off, int val) {
        ByteBuffer.wrap(buf).order(ByteOrder.LITTLE_ENDIAN).position(off).putInt(val);
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

    static void updateChecksum(byte[] dex) {
        // adler32 checksum at offset 8
        java.util.zip.Adler32 adler = new java.util.zip.Adler32();
        adler.update(dex, 12, dex.length - 12);
        int sum = (int) adler.getValue();
        ByteBuffer.wrap(dex).order(ByteOrder.LITTLE_ENDIAN).position(8).putInt(sum);
    }

    static void collectStringsFromClassData(byte[] dex, int off, String[] strings, Set<String> out) {
        // Just estimate: read uleb128 values from class_data
        // This is a simplified approach
    }

    static int estimateNewDataSize(byte[] src, List<int[]> classDefs, String[] srcStrings, Set<String> newStrings) {
        return 65536; // rough estimate
    }

    static int estimateClassDataSize(byte[] dex, int off) {
        int sz = 0;
        while (off < dex.length) {
            int b = dex[off++] & 0xFF;
            if (b == 0 && (dex[off] & 0xFF) < 0x80) break;
            int v = b, shift = 0;
            while ((b & 0x80) != 0) {
                b = dex[off++] & 0xFF;
                v |= (b & 0x7F) << shift;
                shift += 7;
            }
            sz++;
        }
        return sz * 4;
    }

    static void copyAndFixClassData(byte[] src, int srcOff, byte[] dst, int dstOff,
            Set<String> newStrings, Map<String, Integer> stringMap) {
        // Simple copy for now
        int n = srcOff;
        int d = dstOff;
        while (n < src.length) {
            int b = src[n++] & 0xFF;
            if (b == 0) break;
            dst[d++] = (byte) b;
        }
    }
}
