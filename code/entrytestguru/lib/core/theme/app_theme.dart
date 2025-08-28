// lib/core/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary700, // Deep burgundy
        secondary: AppColors.primary500, // Golden accent
        surface: AppColors.lightBgPrimary, // Cream
        background: AppColors.lightBgSecondary, // Light cream
        error: AppColors.error,
        onPrimary: AppColors.lightBgPrimary, // Cream on burgundy
        onSecondary: AppColors.lightTextPrimary, // Charcoal on gold
        onSurface: AppColors.lightTextPrimary, // Charcoal on cream
        onBackground: AppColors.lightTextPrimary,
        onError: Colors.white,
        outline: AppColors.lightTextTertiary,
        surfaceVariant: AppColors.lightBgTertiary,
        onSurfaceVariant: AppColors.lightTextSecondary,
      ),
      scaffoldBackgroundColor: AppColors.lightBgPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightBgPrimary,
        foregroundColor: AppColors.lightTextPrimary,
        elevation: 0,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primary500, // Golden accent
        secondary: AppColors.primary300, // Muted purple
        surface: AppColors.darkBgSecondary, // Light charcoal
        background: AppColors.darkBgPrimary, // Deep charcoal
        error: AppColors.error,
        onPrimary: AppColors.darkBgPrimary, // Charcoal on gold
        onSecondary: AppColors.darkBgPrimary, // Charcoal on purple
        onSurface: AppColors.darkTextPrimary, // Cream on charcoal
        onBackground: AppColors.darkTextPrimary,
        onError: Colors.white,
        outline: AppColors.darkTextTertiary,
        surfaceVariant: AppColors.darkBgTertiary,
        onSurfaceVariant: AppColors.darkTextSecondary,
      ),
      scaffoldBackgroundColor: AppColors.darkBgPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkBgPrimary,
        foregroundColor: AppColors.darkTextPrimary,
        elevation: 0,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}
