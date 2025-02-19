plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
}

android {
    namespace = "com.example.leanbackdemo"
    compileSdk = 33
    defaultConfig {
        applicationId = "com.example.leanbackdemo"
        minSdk = 21
        targetSdk = 33
        versionCode = 1
        versionName = "1.0"

    }
    buildFeatures {
        dataBinding = true
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            //混淆开关
            isShrinkResources = true
            // 移除无用的resource文件

            // 是否打开debuggable开关
            isDebuggable = false
            // 是否打开jniDebuggable开关
            isJniDebuggable =  false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    kotlinOptions {
        jvmTarget = "1.8"
    }
}

dependencies {
    implementation("androidx.fragment:fragment:1.6.2")
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.appcompat)
    implementation("androidx.leanback:leanback:1.1.0-alpha01")
    implementation("androidx.leanback:leanback-preference:1.1.0")
    implementation("androidx.constraintlayout:constraintlayout:2.2.0-alpha01")
}