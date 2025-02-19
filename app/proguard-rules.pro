# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
# -------------------------------
# 1. Kotlin 基础规则（参考）
# -------------------------------
# 保留元数据（反射必需）
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**

# 协程支持
-keep class kotlinx.coroutines.** { *; }
-dontwarn kotlinx.coroutines.**

# -------------------------------
# 2. 数据类与伴生对象（参考）
# -------------------------------
# 保留数据类的构造函数和组件方法
-keepclassmembers class **.data.** {
    public <init>(...);
    public ** component*();
}

# 保留伴生对象中的静态方法
-keepclassmembers class **$Companion {
    public static ** getInstance();
}
# 保留所有继承自 AndroidX Fragment 的类
-keep public class * extends androidx.fragment.app.Fragment

# 保留 NavHostFragment（Jetpack Navigation 必需）
-keepnames class androidx.navigation.fragment.NavHostFragment

# 保留 FragmentContainerView 相关类
-keep class androidx.fragment.app.FragmentContainerView { *; }
# -------------------------------
# 3. Android 组件保留（参考）
# -------------------------------
# Activity/Fragment/View 等组件
-keep public class * extends android.app.Activity
-keep public class * extends androidx.fragment.app.Fragment
-keep public class * extends android.view.View

# -------------------------------
# 4. 第三方库规则（参考）
# -------------------------------
# Retrofit
-keep class retrofit2.** { *; }
-dontwarn retrofit2.**

# Gson
-keep class com.google.gson.** { *; }
-keep class com.google.gson.reflect.** { *; }

# 保留 BrowseFragment 及其子类（TV 主界面核心组件）
-keep public class * extends androidx.leanback.app.BrowseFragment

# 保留 Presenter 和 RowPresenter（数据渲染逻辑）
-keep class * extends androidx.leanback.widget.Presenter
-keep class * extends androidx.leanback.widget.RowPresenter

# 保留 Leanback 布局中的资源 ID（如 R.id.browse_grid）
-keepclassmembers class **.R$* {
    public static <fields>;
}

# 保留 ConstraintLayout 的约束关系相关方法
-keepclassmembers class androidx.constraintlayout.widget.ConstraintLayout {
    public void setConstraintSet(androidx.constraintlayout.widget.ConstraintSet);
}

# 保留 ConstraintSet 类（动态布局调整）
-keep class androidx.constraintlayout.widget.ConstraintSet { *; }
# -------------------------------
# 5. 自定义扩展（参考 DSL设计）
# -------------------------------
# 若使用 Kotlin DSL 生成代码，按需保留
