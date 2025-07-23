#!/bin/bash

echo "🔄 Upgrading to Full SimpleApp..."

# Switch back to SimpleApp
sed -i '' 's/TestApp/SimpleApp/g' shared/src/iosMain/kotlin/com/example/firstkmpapp/MainViewController.kt
sed -i '' 's/com.example.firstkmpapp.ui.TestApp/com.example.firstkmpapp.ui.SimpleApp/g' shared/src/iosMain/kotlin/com/example/firstkmpapp/MainViewController.kt

# Rebuild framework
./gradlew :shared:linkDebugFrameworkIosSimulatorArm64

echo "✅ Upgraded! Now run the iOS app in Xcode"
echo "   You should see the full interactive UI with buttons!" 