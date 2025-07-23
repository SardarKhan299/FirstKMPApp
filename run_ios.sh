#!/bin/bash

echo "🚀 Building Compose Multiplatform App..."

# Build the shared Compose framework
echo "📦 Building shared Compose Multiplatform framework..."
./gradlew :shared:compileKotlinIosSimulatorArm64
./gradlew :shared:linkDebugFrameworkIosSimulatorArm64

if [ $? -eq 0 ]; then
    echo "✅ Compose Multiplatform framework built successfully!"
    
    echo "📱 Starting iOS Simulator..."
    xcrun simctl boot "iPhone 16 Pro" 2>/dev/null || echo "Simulator already running"
    open -a Simulator
    
    echo "🍎 Opening iOS project in Xcode..."
    open iosAppKMP/iosAppKMP.xcodeproj
    
    echo ""
    echo "🎯 NEXT STEPS IN XCODE:"
    echo "1. Wait for Xcode to open"
    echo "2. Click on 'Any iOS Device' dropdown (top-left)"
    echo "3. Select 'iPhone 16 Pro' from the list"
    echo "4. Press Cmd+R or click ▶️ to run"
    echo ""
    echo "🎨 You should see your shared Compose UI on both:"
    echo "   📱 Android (run from Android Studio)"
    echo "   🍎 iOS (run from Xcode)"
    echo ""
else
    echo "❌ Framework build failed!"
    exit 1
fi 