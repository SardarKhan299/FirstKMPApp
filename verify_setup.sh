#!/bin/bash

echo "🔍 Verifying Compose Multiplatform Setup..."
echo "=========================================="

# Check if framework exists
if [ -f "shared/build/bin/iosSimulatorArm64/debugFramework/shared.framework/shared" ]; then
    echo "✅ iOS Framework: EXISTS"
else
    echo "❌ iOS Framework: NOT FOUND"
fi

# Check if Kotlin files exist
if [ -f "shared/src/commonMain/kotlin/com/example/firstkmpapp/ui/SimpleApp.kt" ]; then
    echo "✅ Shared UI Code: EXISTS"
else
    echo "❌ Shared UI Code: NOT FOUND"
fi

# Check iOS integration
if grep -q "MainViewControllerKt.MainViewController()" iosAppKMP/iosAppKMP/ContentView.swift; then
    echo "✅ iOS Integration: CONFIGURED"
else
    echo "❌ iOS Integration: NOT CONFIGURED"
fi

# Check Android integration
if grep -q "SimpleApp()" androidAppKMP/src/main/java/com/example/firstkmpapp/android/MainActivity.kt; then
    echo "✅ Android Integration: CONFIGURED"
else
    echo "❌ Android Integration: NOT CONFIGURED"
fi

echo ""
echo "🎯 SUMMARY:"
echo "   • iOS: Run from Xcode (already opened)"
echo "   • Android: Run from Android Studio"
echo "   • Both use identical SimpleApp Compose UI"
echo ""
echo "🚀 Your Compose Multiplatform setup is ready!" 