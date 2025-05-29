buildscript {
    repositories {
        google()  // This is needed to fetch Firebase dependencies
        mavenCentral()  // Add if you are using other Maven dependencies
    }
    dependencies {
        // Add the Google services classpath here
        classpath 'com.android.tools.build:gradle:7.3.0'  // Adjust the version as necessary
        classpath 'com.google.gms:google-services:4.3.15'  // Firebase services plugin
        
    }
}

allprojects {
    repositories {
        google()  // Add Firebase dependencies
        mavenCentral()  // For other dependencies
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
plugins {
    id("com.android.application")
    id("com.google.gms.google-services") // Firebase services plugin
}

repositories {
    google()  // To fetch dependencies from Firebase
    mavenCentral()  // For other Maven dependencies
}


