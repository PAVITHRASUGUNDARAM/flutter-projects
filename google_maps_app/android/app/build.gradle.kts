// This is how your android/app/build.gradle.kts should look
// You may need to integrate these changes with your existing file

plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    // Update compileSdk to 35 as required by the plugins
    compileSdk = 35
    
    // Your namespace and other configurations...
    namespace = "com.example.google_maps_app"  // Use your actual package name
    
    defaultConfig {
        applicationId = "com.example.google_maps_app"  // Use your actual package name
        minSdk = 21
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
            signingConfig = signingConfigs.getByName("debug")  // For development only
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
}

flutter {
    source = ".."
}

dependencies {
    // Your dependencies
}