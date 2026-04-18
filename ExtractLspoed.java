import java.io.*;
import java.util.*;
import com.android.tools.smali.dexlib2.*;
import com.android.tools.smali.dexlib2.dexbacked.*;
import com.android.tools.smali.dexlib2.rewriter.*;
import com.android.tools.smali.dexlib2.writer.*;
import com.android.tools.smali.dexlib2.writer.io.*;
import com.android.tools.smali.dexlib2.immutable.*;

public class ExtractLspoed {
    public static void main(String[] args) throws Exception {
        // lspoed classes are in classes2, classes3, classes4
        String base = "C:\\Users\\Administrator\\Desktop\\新建文件夹 (2)\\current_decompiled\\build\\apk";
        String outDex = "C:\\Users\\Administrator\\WorkBuddy\\20260410212817\\PandaTurbo\\app\\build\\lspoed.dex";
        new File(outDex).getParentFile().mkdirs();

        String pkgPrefix = "Lcom/rootguard/app/lspoed/";

        System.out.println("Extracting lspoed from PandaSU DEX files...");

        // Collect all lspoed classes
        Set<String> seen = new HashSet<>();
        List<ClassDef> allClasses = new ArrayList<>();

        String[] dexNames = {"classes2.dex", "classes3.dex", "classes4.dex"};
        for (String dexName : dexNames) {
            File dexFile = new File(base, dexName);
            if (!dexFile.exists()) {
                System.out.println("  SKIP: " + dexName);
                continue;
            }
            System.out.println("  Loading: " + dexName + " (" + dexFile.length() + " bytes)");

            try {
                DexFile dx = DexFileFactory.loadDexFile(dexFile, null);
                for (ClassDef cd : dx.getClasses()) {
                    if (cd.getType().startsWith(pkgPrefix) && !seen.contains(cd.getType())) {
                        seen.add(cd.getType());
                        allClasses.add(cd);
                        System.out.println("    + " + cd.getType());
                    }
                }
            } catch (Exception e) {
                System.out.println("    ERROR: " + e.getMessage());
            }
        }

        System.out.println("\nTotal: " + allClasses.size() + " lspoed classes");
        if (allClasses.isEmpty()) {
            System.out.println("ERROR: nothing found!");
            System.exit(1);
        }

        // Convert to immutable and write as a new DEX
        System.out.println("\nConverting to immutable...");
        Opcodes opcodes = Opcodes.forApi(34);

        // Build string pool
        Set<String> strings = new LinkedHashSet<>();
        Set<String> types = new LinkedHashSet<>();
        Set<String> protoIds = new LinkedHashSet<>();
        Set<String> fieldIds = new LinkedHashSet<>();
        Set<String> methodIds = new LinkedHashSet<>();
        Set<String> typeLists = new LinkedHashSet<>();
        Set<String> classDefs = new LinkedHashSet<>();

        for (ClassDef cd : allClasses) {
            classDefs.add(cd.getType());
            strings.add(cd.getType());
            strings.add(cd.getSuperclass());
            for (String iface : cd.getInterfaces()) strings.add(iface);
            strings.add(cd.getSourceFile());
            for (EncodedMethod m : cd.getMethods()) {
                strings.add(m.getDefiningClass());
                strings.add(m.getName());
                strings.add(m.getPrototype().getReturnType());
                for (String p : m.getPrototype().getParameterTypes()) strings.add(p);
                protoIds.add(m.getDefiningClass() + m.getName() + m.getPrototype().getDescriptor());
                methodIds.add(m.getDefiningClass() + m.getName() + m.getPrototype().getDescriptor());
                if (m.getImplementation() != null) {
                    for (Code.CatchHandler h : m.getImplementation().getTryBlocks()) {
                        for (Code.CatchHandler.CatchItem ci : h.getHandlers()) {
                            strings.add(ci.getType());
                        }
                    }
                }
            }
            for (EncodedField f : cd.getFields()) {
                strings.add(f.getDefiningClass());
                strings.add(f.getName());
                strings.add(f.getType());
                fieldIds.add(f.getDefiningClass() + f.getName() + f.getType());
            }
        }

        // Write using DexBuilder-style approach
        // Use PoolDexBuilder via the actual smali API
        System.out.println("Writing DEX via smali DexBuilder...");
        try {
            Class<?> builderClass = Class.forName("com.android.tools.smali.smali.DexBuilder");
            Object builder = builderClass.getDeclaredConstructor().newInstance();
            
            Class<?> smaliClass = Class.forName("com.android.tools.smali.smali.Smali");
            java.lang.reflect.Method assembleMethod = smaliClass.getMethod(
                "assembleSmaliFile",
                File.class,
                Class.forName("com.android.tools.smali.dexlib2.dex.DexBuilder"),
                Class.forName("com.android.tools.smali.smali.SmaliOptions"),
                boolean.class
            );

            // Write classes to temp smali -> compile
            // Actually, we can add class data directly
            // Use DexBuilder.addClass()
            java.lang.reflect.Method addClass = builderClass.getMethod(
                "addClass", ClassDef.class
            );
            
            for (ClassDef cd : allClasses) {
                addClass.invoke(builder, cd);
            }

            java.lang.reflect.Method generate = builderClass.getMethod("generateDex");
            Object dexFile = generate.invoke(builder);

            java.lang.reflect.Method writeTo = dexFile.getClass().getMethod(
                "writeTo", OutputStream.class
            );
            try (FileOutputStream fos = new FileOutputStream(outDex)) {
                writeTo.invoke(dexFile, fos);
            }

            System.out.println("SUCCESS! Written: " + outDex + " (" +
                new File(outDex).length() + " bytes)");

        } catch (ClassNotFoundException e) {
            System.err.println("DexBuilder not found: " + e.getMessage());
            e.printStackTrace();
            System.exit(1);
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            if (e instanceof java.lang.reflect.InvocationTargetException) {
                Throwable cause = ((java.lang.reflect.InvocationTargetException)e).getCause();
                if (cause != null) cause.printStackTrace();
            } else {
                e.printStackTrace();
            }
            System.exit(1);
        }
    }
}
