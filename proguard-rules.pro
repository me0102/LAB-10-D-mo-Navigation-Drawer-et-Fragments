plugins {
    alias(libs.plugins.android.application)
}

android {
    namespace = "com.example.navigationdrawerdemo"
    // CHANGED TO 35
    //noinspection GradleDependency
    compileSdk = 35

    defaultConfig {
        applicationId = "com.example.navigationdrawerdemo"
        minSdk = 24
        // CHANGED TO 35
        //noinspection OldTargetApi
        targetSdk = 35
        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
}

dependencies {
    implementation(libs.appcompat)
    implementation(libs.material)
    implementation(libs.constraintlayout)

    // Explicit string to avoid the accessor issue we saw earlier
    //noinspection UseTomlInstead,GradleDependency
    implementation("androidx.activity:activity:1.8.0")

    testImplementation(libs.junit)
    androidTestImplementation(libs.ext.junit)
    androidTestImplementation(libs.espresso.core)
}