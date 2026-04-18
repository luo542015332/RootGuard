package com.rootguard.app.data.magisk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: PackageDumpParser.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/rootguard/app/data/magisk/PackageDumpParser;", "", "()V", "parseDumpsysOutput", "", "Lcom/rootguard/app/data/magisk/DumpsysPackageInfo;", "dumpsysOutput", "", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes8.dex */
public final class PackageDumpParser {
    public static final int $stable = 0;
    public static final PackageDumpParser INSTANCE = new PackageDumpParser();

    private PackageDumpParser() {
    }

    public final List<DumpsysPackageInfo> parseDumpsysOutput(String dumpsysOutput) {
        List lines;
        Iterator it;
        boolean z;
        boolean z2;
        Intrinsics.checkNotNullParameter(dumpsysOutput, "dumpsysOutput");
        List packages = new ArrayList();
        List lines2 = StringsKt.lines(dumpsysOutput);
        DumpsysPackageInfo currentPackage = null;
        boolean inPackageSection = false;
        Iterator it2 = lines2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            String line = (String) it2.next();
            MatchResult packageMatch = Regex.find$default(new Regex("Package \\[([^\\]]+)\\] \\((\\w+)\\):"), line, 0, 2, (Object) null);
            if (packageMatch != null) {
                if (currentPackage != null) {
                    DumpsysPackageInfo it3 = currentPackage;
                    if (it3.getPackageName().length() > 0) {
                        packages.add(it3);
                    }
                }
                currentPackage = new DumpsysPackageInfo((String) packageMatch.getGroupValues().get(1), (String) packageMatch.getGroupValues().get(2), null, 0, null, null, false, false, null, 0, 1020, null);
                inPackageSection = true;
            } else {
                if (!inPackageSection || currentPackage == null) {
                    lines = lines2;
                    it = it2;
                    z = true;
                    z2 = false;
                } else {
                    MatchResult codePathMatch = Regex.find$default(new Regex("codePath=([^\\s]+)"), line, 0, 2, (Object) null);
                    if (codePathMatch != null) {
                        currentPackage.setCodePath((String) codePathMatch.getGroupValues().get(1));
                    }
                    MatchResult versionCodeMatch = Regex.find$default(new Regex("versionCode=(\\d+)"), line, 0, 2, (Object) null);
                    if (versionCodeMatch != null) {
                        Integer intOrNull = StringsKt.toIntOrNull((String) versionCodeMatch.getGroupValues().get(1));
                        currentPackage.setVersionCode(intOrNull != null ? intOrNull.intValue() : 0);
                    }
                    MatchResult versionNameMatch = Regex.find$default(new Regex("versionName=([^\\s]+)"), line, 0, 2, (Object) null);
                    if (versionNameMatch != null) {
                        currentPackage.setVersionName((String) versionNameMatch.getGroupValues().get(1));
                    }
                    MatchResult flagsMatch = Regex.find$default(new Regex("flags=\\[ ([^\\]]+) \\]"), line, 0, 2, (Object) null);
                    if (flagsMatch != null) {
                        currentPackage.setFlags(StringsKt.split$default((CharSequence) flagsMatch.getGroupValues().get(1), new String[]{" "}, false, 0, 6, (Object) null));
                    }
                    MatchResult miuiMatch = Regex.find$default(new Regex("isMiuiPreinstall=(\\w+)"), line, 0, 2, (Object) null);
                    if (miuiMatch != null) {
                        currentPackage.setMiuiPreinstall(Intrinsics.areEqual(miuiMatch.getGroupValues().get(1), "true"));
                    }
                    lines = lines2;
                    it = it2;
                    MatchResult stoppedSystemMatch = Regex.find$default(new Regex("scannedAsStoppedSystemApp=(\\w+)"), line, 0, 2, (Object) null);
                    if (stoppedSystemMatch != null) {
                        currentPackage.setScannedAsStoppedSystemApp(Intrinsics.areEqual(stoppedSystemMatch.getGroupValues().get(1), "true"));
                    }
                    MatchResult installerMatch = Regex.find$default(new Regex("installerPackageName=([^\\s]+)"), line, 0, 2, (Object) null);
                    if (installerMatch != null) {
                        currentPackage.setInstallerPackageName((String) installerMatch.getGroupValues().get(1));
                    }
                    z2 = false;
                    MatchResult appIdMatch = Regex.find$default(new Regex("appId=(\\d+)"), line, 0, 2, (Object) null);
                    if (appIdMatch == null) {
                        z = true;
                    } else {
                        z = true;
                        Integer intOrNull2 = StringsKt.toIntOrNull((String) appIdMatch.getGroupValues().get(1));
                        currentPackage.setUid(intOrNull2 != null ? intOrNull2.intValue() : 0);
                    }
                }
                if (inPackageSection) {
                    if ((StringsKt.trim(line).toString().length() == 0 ? z : z2) && currentPackage != null) {
                        if (currentPackage.getPackageName().length() > 0 ? z : z2) {
                            packages.add(currentPackage);
                        }
                        currentPackage = null;
                        inPackageSection = false;
                        lines2 = lines;
                        it2 = it;
                    }
                }
                lines2 = lines;
                it2 = it;
            }
        }
        if (currentPackage != null) {
            DumpsysPackageInfo it4 = currentPackage;
            if (it4.getPackageName().length() > 0) {
                packages.add(it4);
            }
        }
        return packages;
    }
}
