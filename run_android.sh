#!/bin/bash

echo "🚀 Building Android Compose Multiplatform App..."

# Build and install on Android
echo "📱 Building and installing on Android device/emulator..."
./gradlew :androidAppKMP:installDebug

if [ $? -eq 0 ]; then
    echo "✅ Android app installed successfully!"
    echo ""
    echo "🎨 Your shared Compose UI should now be running on Android!"
    echo "   The same UI code runs on both Android and iOS! 🚀"
    echo ""
else
    echo "❌ Android build failed!"
    echo "Make sure you have an Android emulator running or device connected"
    exit 1
fi 