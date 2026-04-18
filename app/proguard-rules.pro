# Merge
-flattenpackagehierarchy com.github.catvod.spider.merge

# dontwarn
-dontwarn org.slf4j.**
-dontwarn org.xmlpull.v1.**
-dontwarn com.google.re2j.**
-dontwarn android.content.res.**

# slf4j
-keep class org.slf4j.** { *; }

# AndroidX
-keep class androidx.core.** { *; }

# Spider
-keep class com.github.catvod.crawler.* { *; }
-keep class com.github.catvod.spider.* { public <methods>; }
-keep class com.github.catvod.js.Function { *; }

# OkHttp
-dontwarn okhttp3.**
-keep class okio.** { *; }
-keep class okhttp3.** { *; }

# QuickJS
-keep class com.whl.quickjs.** { *; }

# Sardine
-keep class com.thegrizzlylabs.sardineandroid.** { *; }

# SMBJ
-keep class com.hierynomus.** { *; }
-keep class net.engio.mbassy.** { *; }
-dontwarn org.ietf.jgss.**
-dontwarn javax.**

# Logger
-keep class com.orhanobut.logger.** { *; }

# Gson（2.10.1 无内置混淆规则，需手动保留，为适配安卓4.4所加）
-keepattributes Signature
-keepattributes *Annotation*, InnerClasses, EnclosingMethod
-keep class com.github.catvod.bean.** { *; }
-keep class com.google.gson.stream.** { *; }
-keep class com.google.gson.internal.** { *; }
-keep class com.google.gson.reflect.** { *; }
-keep class com.google.gson.annotations.** { *; }