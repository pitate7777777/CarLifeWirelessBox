# CarLife Wireless 混淆配置

# 保留 Android 组件
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider

# 保留 Protos (Protocol Buffers)
-keep class com.carlife.wireless.proto.** { *; }
-keepclassmembers class * extends com.google.protobuf.GeneratedMessageLite {
    <fields>;
}

# 保留日志注解
-keepattributes *Annotation*
-keep class com.orhanobut.logger.** { *; }

# 保留 Parcelable
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# 保留 Serializable
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# 保留 native 方法
-keepclasseswithmembernames class * {
    native <methods>;
}

# 保留反射相关的类和方法
-keepattributes Signature
-keepattributes InnerClasses

# 优化设置
-optimizationpasses 5
-allowaccessmodification
-repackageclasses ''

# 移除日志（Release 版本）
-assumenosideeffects class com.orhanobut.logger.Logger {
    public static boolean d(...);
    public static boolean e(...);
    public static boolean w(...);
    public static boolean i(...);
    public static boolean v(...);
}
