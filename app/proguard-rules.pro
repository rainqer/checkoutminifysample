-keepclassmembers,allowoptimization enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# remove runtime assertions, they are enforced in compile-time by Kotlin compiler
-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
  public static void checkExpressionValueIsNotNull(java.lang.Object, java.lang.String);
  public static void checkFieldIsNotNull(java.lang.Object, java.lang.String);
  public static void checkFieldIsNotNull(java.lang.Object, java.lang.String, java.lang.String);
  public static void checkNotNull(java.lang.Object);
  public static void checkNotNull(java.lang.Object, java.lang.String);
  public static void checkNotNullExpressionValue(java.lang.Object, java.lang.String);
  public static void checkNotNullParameter(java.lang.Object, java.lang.String);
  public static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
  public static void checkReturnedValueIsNotNull(java.lang.Object, java.lang.String);
  public static void checkReturnedValueIsNotNull(java.lang.Object, java.lang.String, java.lang.String);
  public static void throwUninitializedPropertyAccessException(java.lang.String);
}

### remove logs ###
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** w(...);
    public static *** v(...);
    public static *** i(...);
    public static *** e(...);
    public static *** wtf(...);
}
-keep class com.google.errorprone.annotations.Immutable
-keep class org.conscrypt.** {*; }
-keep class org.conscrypt.** {*; }
-keep class org.conscrypt.** {*; }
-keep class org.openjsse.** {*; }
-keep class org.openjsse.** {*; }
-keep class org.openjsse.** {*; }
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**
-dontwarn com.google.errorprone.annotations.Immutable
-dontwarn d.a.c.**

#Note:This is warning class being exposed from the checkout 3DS SDK and its known issue. We are adding dontwanr class rules
# in 3DS SDK because it is not necessary to expose to merchant who use 3DS SDK. However, currently workaround of adding missing rules in proguard able to resolve missing class rules compile error
-dontwarn b.a.c.g.b
-dontwarn b.a.c.g.f
-dontwarn b.a.c.g.k$a
-dontwarn b.a.c.g.k$b
-dontwarn b.a.c.g.o
-dontwarn b.a.c.g.p
-dontwarn b.a.c.g.t
-dontwarn b.a.c.l.a
-dontwarn com.checkout.sessions.data.mapper.KeyMapper
#
#-dontwarn com.google.errorprone.annotations.Immutable
#-dontwarn d.a.c.g.b
#-dontwarn d.a.c.g.f
#-dontwarn d.a.c.g.k$a
#-dontwarn d.a.c.g.k$b
#-dontwarn d.a.c.g.o
#-dontwarn d.a.c.g.p
#-dontwarn d.a.c.g.t
#-dontwarn d.a.c.l.a
#-dontwarn org.conscrypt.Conscrypt$Version
#-dontwarn org.conscrypt.Conscrypt
#-dontwarn org.conscrypt.ConscryptHostnameVerifier
#-dontwarn org.openjsse.javax.net.ssl.SSLParameters
#-dontwarn org.openjsse.javax.net.ssl.SSLSocket
#-dontwarn org.openjsse.net.ssl.OpenJSSE