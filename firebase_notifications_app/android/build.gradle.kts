// File: android/build.gradle.kts
plugins {
    id("com.android.application")
    id("kotlin-android")
}

android {
    compileSdk = 33  // Or your desired compileSdk version

    // Specify the namespace (package name)
    namespace = "com.example.firebase_notifications_app"  // Replace with your actual package name

    defaultConfig {
        applicationId = "com.example.firebase_notifications_app"
        minSdk = 21
        targetSdk = 33  // Or your desired targetSdk version
        versionCode = 1
        versionName = "1.0"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }

    // Enable core library desugaring
    compileOptions {
        isCoreLibraryDesugaringEnabled = true
    }
}

dependencies {
    implementation("com.android.tools:desugar_jdk_libs:1.1.5")
    classpath("com.google.gms:google-services:4.3.15") 
    // Other dependencies...
}
