import java.io.*;
import java.nio.file.*;
import java.util.*;
import com.android.tools.smali.dexlib2.*;

public class DexExtractor {
    public static void main(String[] args) throws Exception {
        if (args.length < 3) {
            System.out.println("Usage: java DexExtractor <dex_file> <pkg_prefix> <out_dir>");
            System.exit(1);
        }
        String dexFile = args[0];
        String pkgPrefix = args[1];  // e.g. "com/rootguard/app/lspoed"
        File outDir = new File(args[2]);
        outDir.mkdirs();

        System.out.println("Reading DEX: " + dexFile);
        System.out.println("Extracting: " + pkgPrefix);
        
        int count = 0;
        Collection<? extends DexFile> dexFiles = DexFile.loadDexFile(
            new File(dexFile), null, null);
        
        for (DexFile dex : dexFiles) {
            for (ClassDef classDef : dex.getClasses()) {
                String type = classDef.getType();
                if (type.startsWith("L" + pkgPrefix + "/")) {
                    String relPath = type.substring(1, type.length()-1).replace('/', File.separatorChar) + ".class";
                    File outFile = new File(outDir, relPath);
                    outFile.getParentFile().mkdirs();
                    
                    // Extract class bytes
                    try (OutputStream os = new FileOutputStream(outFile)) {
                        for (EncodedMethod m : classDef.getMethods()) {}
                        byte[] bytes = classDef.getAllFields().getClass().getName().getBytes();
                    }
                    
                    // Write class from methods - need to reconstruct
                    System.out.println("  Found: " + type);
                    count++;
                }
            }
        }
        System.out.println("Total: " + count);
    }
}
