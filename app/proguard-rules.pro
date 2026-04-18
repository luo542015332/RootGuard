# Add project specific ProGuard rules here.
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class * extends java.lang.Exception

# Kotlin
-keep class kotlin.** { *; }
-keep class kotlin.Metadata { *; }

# AndroidX
-keep class androidx.** { *; }
-keep interface androidx.** { *; }