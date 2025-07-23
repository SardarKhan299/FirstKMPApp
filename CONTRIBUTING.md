# Contributing to FirstKmpApp

Thank you for your interest in contributing to FirstKmpApp! This document provides guidelines and instructions for contributing to this Kotlin Multiplatform project.

## 🤝 How to Contribute

### 🐛 Reporting Bugs

1. **Check existing issues** first to avoid duplicates
2. **Use the bug report template** when creating new issues
3. **Provide clear reproduction steps**
4. **Include relevant logs and screenshots**

### 💡 Suggesting Features

1. **Open a feature request issue** with detailed description
2. **Explain the use case** and potential benefits
3. **Consider cross-platform implications**

### 🔧 Code Contributions

#### Prerequisites

- macOS (for iOS development)
- Android Studio Arctic Fox or newer
- Xcode 16.4 or newer
- JDK 17 or newer
- Git

#### Setup Development Environment

1. **Fork the repository**
   ```bash
   git clone https://github.com/your-username/FirstKmpApp.git
   cd FirstKmpApp
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Install dependencies**
   ```bash
   ./gradlew build
   ```

#### Development Guidelines

##### 📦 Project Structure

- **Common code**: `shared/src/commonMain/kotlin/`
- **Android-specific**: `shared/src/androidMain/kotlin/`
- **iOS-specific**: `shared/src/iosMain/kotlin/`
- **UI components**: `shared/src/commonMain/kotlin/ui/`

##### 🎨 Code Style

- Follow **Kotlin coding conventions**
- Use **meaningful variable names**
- Add **KDoc comments** for public APIs
- **4 spaces** for indentation (no tabs)

##### 🏗️ Architecture Patterns

- **Expect/Actual** for platform-specific implementations
- **Repository pattern** for data access
- **MVVM** for UI layer (if applicable)
- **Dependency injection** using constructor injection

##### ✅ Testing

- **Write tests** for new functionality
- **Test on both platforms** (Android & iOS)
- **Use descriptive test names**

```bash
# Run all tests
./gradlew test

# Test Android
./gradlew :androidAppKMP:test

# Test iOS (build framework)
./gradlew :shared:linkDebugFrameworkIosSimulatorArm64
```

##### 📱 Platform Testing

**Android:**
```bash
./gradlew :androidAppKMP:installDebug
```

**iOS:**
```bash
./gradlew :shared:linkDebugFrameworkIosSimulatorArm64
open iosAppKMP/iosAppKMP.xcodeproj
```

#### 🔄 Submitting Changes

1. **Ensure code quality**
   ```bash
   ./gradlew build
   ./gradlew test
   ```

2. **Test on both platforms**
   - Verify Android app runs correctly
   - Verify iOS app runs correctly

3. **Commit with meaningful messages**
   ```bash
   git commit -m "feat: add user authentication feature"
   ```

4. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create Pull Request**
   - Use the PR template
   - Include screenshots/videos if UI changes
   - Reference related issues

## 📋 Pull Request Guidelines

### ✅ PR Checklist

- [ ] **Code builds** without errors
- [ ] **Tests pass** on both platforms
- [ ] **No lint errors** or warnings
- [ ] **Documentation updated** (if needed)
- [ ] **Screenshots included** (for UI changes)
- [ ] **Breaking changes documented**

### 📝 PR Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement
- [ ] Refactoring

## Testing
- [ ] Tested on Android
- [ ] Tested on iOS
- [ ] Unit tests added/updated

## Screenshots (if applicable)

## Related Issues
Fixes #(issue number)
```

## 🚀 Release Process

1. **Version bumping** in `gradle/libs.versions.toml`
2. **Update CHANGELOG.md**
3. **Create release PR**
4. **Tag release** after merge

## 📚 Additional Resources

- [Kotlin Multiplatform Documentation](https://kotlinlang.org/docs/multiplatform.html)
- [Compose Multiplatform Documentation](https://www.jetbrains.com/lp/compose-multiplatform/)
- [Android Development Guidelines](https://developer.android.com/guide)
- [iOS Development Guidelines](https://developer.apple.com/documentation/)

## 🤔 Questions?

- **Open an issue** for general questions
- **Start a discussion** for architecture questions
- **Check existing documentation** first

## 📄 Code of Conduct

By participating in this project, you agree to abide by our Code of Conduct:

- **Be respectful** and inclusive
- **Provide constructive feedback**
- **Help others learn and grow**
- **Focus on the issue**, not the person

---

Thank you for contributing to FirstKmpApp! 🎉 