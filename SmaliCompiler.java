import java.io.*;
import java.nio.file.*;
import java.util.*;
import com.android.tools.smali.*;

public class SmaliCompiler {
    public static void main(String[] args) throws Exception {
        if (args.length < 2) {
            System.out.println("Usage: java SmaliCompiler <smali_dir> <output_dex>");
            System.exit(1);
        }
        File smaliDir = new File(args[0]);
        File outputDex = new File(args[1]);
        outputDex.getParentFile().mkdirs();

        SmaliOptions options = new SmaliOptions();
        options.apiLevel = 34;

        System.out.println("Compiling: " + smaliDir);
        System.out.println("Output: " + outputDex);

        // 使用 smali 的 DexBuilder
        Object builder = null;
        try {
            Class<?> cls = Class.forName("com.android.tools.smali.DexBuilder");
            builder = cls.getDeclaredConstructor().newInstance();
        } catch(Exception e) {
            System.err.println("Cannot create DexBuilder: " + e);
            System.exit(1);
        }

        int count = 0;
        for (File f : findSmaliFiles(smaliDir)) {
            System.out.println("  + " + f.getName());
            try {
                java.lang.reflect.Method assemble = Smali.class.getMethod(
                    "assembleSmaliFile", File.class, builder.getClass(), SmaliOptions.class, boolean.class);
                assemble.invoke(null, f, builder, options, false);
                count++;
            } catch (Exception e) {
                System.err.println("  ERROR: " + f.getName() + " -> " + e.getCause());
                e.printStackTrace();
                System.exit(1);
            }
        }

        System.out.println("Compiled " + count + " files");

        // 写 DEX
        java.lang.reflect.Method gen = builder.getClass().getMethod("generateDex");
        Object dexFile = gen.invoke(builder);

        java.lang.reflect.Method writeTo = dexFile.getClass().getMethod("writeTo", OutputStream.class);
        try (FileOutputStream fos = new FileOutputStream(outputDex)) {
            writeTo.invoke(dexFile, fos);
        }
        System.out.println("Done: " + outputDex.length() + " bytes");
    }

    static List<File> findSmaliFiles(File dir) {
        List<File> r = new ArrayList<>();
        if (dir == null || !dir.exists()) return r;
        for (File f : dir.listFiles()) {
            if (f.isDirectory()) r.addAll(findSmaliFiles(f));
            else if (f.getName().endsWith(".smali")) r.add(f);
        }
        return r;
    }
}
