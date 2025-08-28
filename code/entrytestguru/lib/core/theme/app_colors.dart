// lib/core/theme/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // Your 5 Anchor Colors
  static const Color anchor1 = Color(0xFF1A0F11); // Deep charcoal/black
  static const Color anchor2 = Color(0xFFA59132); // Golden/mustard yellow
  static const Color anchor3 = Color(0xFFFFFBDB); // Cream/pale yellow
  static const Color anchor4 = Color(0xFF440D1B); // Deep burgundy/maroon
  static const Color anchor5 = Color(0xFFBDA0BC); // Muted purple/mauve

  // Material 3 Primary Scale (Using burgundy as primary with less red interpolation)
  static const Color primary50 = Color(0xFFFAF8F8); // Very light neutral tint
  static const Color primary100 = Color(0xFFF5F3F0); // Toned down cream
  static const Color primary200 = Color(0xFFE8E0DD); // Light neutral
  static const Color primary300 = Color(
    0xFFBDA0BC,
  ); // Your muted purple (anchor5)
  static const Color primary400 = Color(
    0xFF8B6B70,
  ); // Muted burgundy (less red)
  static const Color primary500 = Color(
    0xFF6B4A4F,
  ); // Burgundy blend (less red)
  static const Color primary600 = Color(
    0xFF440D1B,
  ); // Your deep burgundy (anchor4)
  static const Color primary700 = Color(
    0xFF2F0912,
  ); // Darker burgundy (more charcoal)
  static const Color primary800 = Color(
    0xFF221014,
  ); // Very dark burgundy (charcoal blend)
  static const Color primary900 = Color(
    0xFF1A0F11,
  ); // Your deep charcoal (anchor1)

  // Secondary Scale (Using golden as secondary)
  static const Color secondary50 = Color(0xFFFEFBF2); // Very light golden tint
  static const Color secondary100 = Color(0xFFF8F5E8); // Toned down cream
  static const Color secondary200 = Color(0xFFF0E8A8); // Light golden tint
  static const Color secondary300 = Color(0xFFE0D16F); // Medium light golden
  static const Color secondary400 = Color(0xFFC2B150); // Medium golden
  static const Color secondary500 = Color(0xFFA59132); // Your golden (anchor2)
  static const Color secondary600 = Color(0xFF8A7729); // Darker golden
  static const Color secondary700 = Color(0xFF6F5D20); // Dark golden
  static const Color secondary800 = Color(0xFF544617); // Very dark golden
  static const Color secondary900 = Color(
    0xFF1A0F11,
  ); // Your deep charcoal (anchor1)

  // Tertiary Scale (Using muted purple with neutral tones)
  static const Color tertiary50 = Color(0xFFFBFAFB); // Very light neutral
  static const Color tertiary100 = Color(0xFFF5F3F5); // Light neutral
  static const Color tertiary200 = Color(0xFFE6DDE5); // Light muted neutral
  static const Color tertiary300 = Color(
    0xFFBDA0BC,
  ); // Your muted purple (anchor5)
  static const Color tertiary400 = Color(0xFF9B7B9A); // Medium muted purple
  static const Color tertiary500 = Color(0xFF7D5C7C); // Darker muted purple
  static const Color tertiary600 = Color(0xFF634261); // Deep muted purple
  static const Color tertiary700 = Color(0xFF4E324D); // Very deep muted purple
  static const Color tertiary800 = Color(
    0xFF2F1F2E,
  ); // Dark purple-charcoal (less red)
  static const Color tertiary900 = Color(
    0xFF1A0F11,
  ); // Your deep charcoal (anchor1)

  // User Tier Colors (Using your anchor colors)
  static const Color anonymousPrimary = Color(0xFF6B7280); // Neutral gray
  static const Color freePrimary = Color(0xFFA59132); // Your golden (anchor2)
  static const Color paidPrimary = Color(0xFF440D1B); // Your burgundy (anchor4)

  // ARDE Probability Colors (Harmonized with your palette)
  static const Color ardeHigh = Color(0xFF8B4B57); // Muted red (less harsh)
  static const Color ardeMedium = Color(0xFFA59132); // Your golden (anchor2)
  static const Color ardeLow = Color(0xFF696969); // Neutral gray

  // Semantic Colors (Harmonized with your palette)
  static const Color success = Color(0xFF4A7C59); // Muted green
  static const Color warning = Color(0xFFA59132); // Your golden (anchor2)
  static const Color error = Color(0xFF8B4B57); // Muted red from burgundy blend
  static const Color info = Color(0xFF7D5C7C); // From tertiary purple

  // Dark Theme Colors (Reduced reddish tones)
  static const Color darkBgPrimary = Color(
    0xFF1A0F11,
  ); // Your deep charcoal (anchor1)
  static const Color darkBgSecondary = Color(
    0xFF221C1E,
  ); // Charcoal blend (less red)
  static const Color darkBgTertiary = Color(
    0xFF2A2427,
  ); // Neutral charcoal blend
  static const Color darkBgAccent = Color(
    0xFF332B2D,
  ); // Light charcoal (less red)

  static const Color darkTextPrimary = Color(
    0xFFF5F3F0,
  ); // Toned down cream (less yellow)
  static const Color darkTextSecondary = Color(0xFFE8E0DD); // Light neutral
  static const Color darkTextTertiary = Color(
    0xFFBDA0BC,
  ); // Your muted purple (anchor5)
  static const Color darkTextMuted = Color(0xFF9B7B9A); // tertiary400 blend

  // Light Theme Colors (Reduced yellow in cream)
  static const Color lightBgPrimary = Color(
    0xFFF5F3F0,
  ); // Toned down cream (less yellow)
  static const Color lightBgSecondary = Color(0xFFFAF8F8); // Very light neutral
  static const Color lightBgTertiary = Color(0xFFF5F3F5); // Light neutral
  static const Color lightBgAccent = Color(0xFFE8E0DD); // Light neutral accent

  static const Color lightTextPrimary = Color(
    0xFF1A0F11,
  ); // Your deep charcoal (anchor1)
  static const Color lightTextSecondary = Color(
    0xFF440D1B,
  ); // Your burgundy (anchor4)
  static const Color lightTextTertiary = Color(0xFF634261); // tertiary600 blend
  static const Color lightTextMuted = Color(0xFF9B7B9A); // tertiary400 blend

  // Material 3 Additional Colors (Using adjusted values)
  static const Color surface = Color(0xFFF5F3F0); // Toned down cream
  static const Color surfaceVariant = Color(0xFFF5F3F5); // Light neutral
  static const Color outline = Color(0xFF634261); // tertiary600 blend
  static const Color outlineVariant = Color(
    0xFFBDA0BC,
  ); // Your muted purple (anchor5)
  static const Color shadow = Color(0xFF1A0F11); // Your deep charcoal (anchor1)
  static const Color scrim = Color(0xFF1A0F11); // Your deep charcoal (anchor1)
  static const Color inverseSurface = Color(
    0xFF221C1E,
  ); // Charcoal blend (less red)
  static const Color inverseOnSurface = Color(0xFFF5F3F0); // Toned down cream
  static const Color inversePrimary = Color(
    0xFFA59132,
  ); // Your golden (anchor2)
}
