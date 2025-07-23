#!/bin/bash

echo "🧪 Testing Compose Multiplatform on Both Platforms..."
echo "=================================================="

# Test Android Build
echo "🤖 Building Android App..."
./gradlew :androidAppKMP:assembleDebug

if [ $? -eq 0 ]; then
    echo "✅ Android build: SUCCESS"
else
    echo "❌ Android build: FAILED"
    exit 1
fi

echo ""

# Test iOS Build
echo "🍎 Building iOS Framework..."
./gradlew :shared:linkDebugFrameworkIosSimulatorArm64

if [ $? -eq 0 ]; then
    echo "✅ iOS framework: SUCCESS"
else
    echo "❌ iOS framework: FAILED"
    exit 1
fi

echo ""
echo "🎉 SUCCESS: Both platforms compile successfully!"
echo ""
echo "🚀 NEXT STEPS:"
echo "   📱 Android: ./run_android.sh (or use Android Studio)"
echo "   🍎 iOS: ./run_ios.sh (opens in Xcode)"
echo ""
echo "🎯 Your SimpleApp will show:"
echo "   • Platform-specific greeting"
echo "   • Interactive click counter"
echo "   • Identical UI on both platforms!"
echo "" 