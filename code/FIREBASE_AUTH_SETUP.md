# Firebase Authentication Setup Guide

This guide explains how to set up and test the real Firebase authentication implementation in EntryTestGuru.

## ⚠️ Important: Replace Mock Configuration

The current Firebase configuration files contain **mock/placeholder values**. Before using in production, you must:

1. Create a real Firebase project at [Firebase Console](https://console.firebase.google.com)
2. Replace the mock configuration files with real ones from your Firebase project
3. Set up Firebase Authentication providers (Email/Password, Google)

## 📁 Configuration Files Created

### Flutter App Configuration
- ✅ `lib/firebase_options.dart` - Firebase SDK configuration
- ✅ `android/app/google-services.json` - Android Firebase config
- ✅ `ios/Runner/GoogleService-Info.plist` - iOS Firebase config
- ✅ `android/build.gradle.kts` - Updated with Google Services plugin
- ✅ `android/app/build.gradle.kts` - Updated with Google Services plugin

### Dependencies Already Added
```yaml
# In pubspec.yaml
dependencies:
  firebase_core: ^3.7.1
  firebase_auth: ^5.3.2
  google_sign_in: ^6.1.5
```

## 🚀 Implementation Overview

### 1. Firebase Authentication Service
- **File**: `lib/core/services/firebase_auth_service.dart`
- **Features**:
  - ✅ Email/password registration and sign-in
  - ✅ Google Sign-In integration
  - ✅ Anonymous authentication
  - ✅ Password reset functionality
  - ✅ Automatic token management
  - ✅ Auth state streaming

### 2. Updated Auth Service Wrapper
- **File**: `lib/core/services/auth_service.dart`
- **Purpose**: Provides a consistent API while using Firebase under the hood

### 3. Backend Integration
- **File**: `code/backend/simple_fastapi_server.py`
- **Features**:
  - ✅ Firebase ID token validation
  - ✅ Fallback to mock authentication for testing
  - ✅ User data conversion from Firebase to app format

### 4. Test Screen
- **File**: `lib/features/auth/presentation/screens/auth_test_screen.dart`
- **Features**:
  - ✅ Email/password sign up and sign in
  - ✅ Google Sign-In button
  - ✅ Anonymous sign in
  - ✅ Sign out functionality
  - ✅ Real-time auth state display
  - ✅ Status messages and error handling

## 🧪 Testing Instructions

### 1. Start the Backend Server
```bash
cd code/backend
python simple_fastapi_server.py
```

The server will run at `http://localhost:8000` with:
- API docs at `http://localhost:8000/docs`
- Health check at `http://localhost:8000/health`

### 2. Run the Flutter App
```bash
cd code/entrytestguru
flutter run
```

### 3. Test Authentication Features

The app will open directly to the **Firebase Auth Test Screen** where you can:

#### Test Email/Password Authentication:
1. Enter a test email and password (minimum 6 characters)
2. Click "Sign Up" to create a new account
3. Click "Sign In" to authenticate with existing credentials

#### Test Google Sign-In:
1. Click "Sign In with Google"
2. Follow the Google authentication flow
3. User will be authenticated via Firebase

#### Test Anonymous Authentication:
1. Click "Sign In Anonymously"
2. Creates a temporary anonymous user session

#### Test Sign Out:
1. Click "Sign Out" to clear the authentication session

### 4. Monitor Auth State
The test screen shows real-time authentication state including:
- User ID
- Email address
- Verification status
- Creation date
- Display name (if available)

## 🔧 Production Setup Steps

### Step 1: Create Firebase Project
1. Go to [Firebase Console](https://console.firebase.google.com)
2. Click "Create a project"
3. Follow the setup wizard

### Step 2: Enable Authentication Methods
1. In Firebase Console, go to Authentication → Sign-in method
2. Enable "Email/Password"
3. Enable "Google" (configure OAuth consent screen)

### Step 3: Add Your App to Firebase
1. Click "Add app" and select Android/iOS
2. Follow the setup instructions
3. Download the real configuration files

### Step 4: Replace Mock Configuration
Replace these files with real ones from your Firebase project:
- `android/app/google-services.json`
- `ios/Runner/GoogleService-Info.plist`
- Update values in `lib/firebase_options.dart`

### Step 5: Configure Backend (Optional)
If you want the backend to validate Firebase tokens:
```bash
pip install firebase-admin
```

Then add your service account key and update the initialization in `simple_fastapi_server.py`.

## 🏗️ Architecture Changes

### Before (Mock Authentication)
```
Flutter App → AuthService → AuthApiService → FastAPI Backend (Mock)
```

### After (Firebase Authentication)
```
Flutter App → AuthService → FirebaseAuthService → Firebase Auth
            ↓
      FastAPI Backend (validates Firebase tokens)
```

## 📋 Key Features Implemented

### ✅ Authentication Methods
- [x] Email/Password registration
- [x] Email/Password sign-in
- [x] Google Sign-In
- [x] Anonymous authentication
- [x] Password reset emails
- [x] Sign out functionality

### ✅ Security Features
- [x] Firebase ID token generation
- [x] Automatic token refresh
- [x] Backend token validation
- [x] Secure token storage

### ✅ User Experience
- [x] Real-time auth state updates
- [x] Comprehensive error handling
- [x] Loading states
- [x] Status messages

### ✅ Development Tools
- [x] Test screen for all auth methods
- [x] Debug logging
- [x] Mock fallback for development

## 🚀 Next Steps

1. **Replace mock Firebase configuration** with real project settings
2. **Configure OAuth consent screen** for Google Sign-In
3. **Add email templates** in Firebase Console for password resets
4. **Implement user profile management** with Firestore
5. **Add role-based access control** using Firebase custom claims
6. **Set up production security rules**

## 🐛 Troubleshooting

### Firebase Not Initialized
- Check that `firebase_options.dart` has correct values
- Ensure `google-services.json` is in `android/app/`
- Ensure `GoogleService-Info.plist` is in `ios/Runner/`

### Google Sign-In Issues
- Verify SHA-1 fingerprint in Firebase Console
- Check OAuth consent screen configuration
- Ensure Google Sign-In is enabled in Firebase Console

### Backend Token Validation
- Install `firebase-admin`: `pip install firebase-admin`
- Add service account key for production
- Check that Firebase project ID matches

## 📚 Documentation
- [Firebase Auth Flutter Documentation](https://firebase.google.com/docs/auth/flutter/start)
- [Google Sign-In Flutter Plugin](https://pub.dev/packages/google_sign_in)
- [Firebase Admin Python SDK](https://firebase.google.com/docs/admin/setup)