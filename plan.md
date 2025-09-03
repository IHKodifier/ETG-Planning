# User-Specific Home Screen Implementation Plan

## Overview
This document outlines the implementation plan for creating a user-specific home screen that will be shown to logged-in users instead of the generic app home screen.

## Current Architecture
1. App starts with SplashScreen
2. SplashScreen navigates to AuthWrapper
3. AuthWrapper checks authentication state:
   - If user is logged in: Shows HomeScreen
   - If user is not logged in: Shows LoginScreen

## Proposed Changes
1. Create a new UserHomeScreen widget for logged-in users
2. Modify AuthWrapper to show UserHomeScreen instead of HomeScreen for logged-in users
3. Design UserHomeScreen to display personalized content based on user data

## UserHomeScreen Features
The user-specific home screen should include:
1. Personalized greeting with user's name
2. Exam type information
3. Usage statistics
4. Quick access to relevant features based on user's exam type
5. Subscription tier information
6. Profile information display

## Implementation Steps
1. Create UserHomeScreen widget
2. Design personalized content sections
3. Modify AuthWrapper to use UserHomeScreen
4. Test navigation flow
5. Verify proper fallback to LoginScreen for non-logged-in users

## Files to be Modified
1. Create: `lib/features/home/presentation/screens/user_home_screen.dart`
2. Modify: `lib/features/auth/presentation/screens/auth_wrapper.dart`

## User Data Utilization
The UserHomeScreen will utilize the following user data:
- `displayName` from profile for personalization
- `examType` for exam-specific content
- `usageStats` for progress tracking
- `tier` for subscription information
- `email` for user identification

## Navigation Flow
```
graph TD
    A[SplashScreen] --> B[AuthWrapper]
    B --> C{User Logged In?}
    C -->|Yes| D[UserHomeScreen]
    C -->|No| E[LoginScreen]