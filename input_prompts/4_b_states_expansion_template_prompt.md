                STEP 4b  STATES EXPANSION  TEMPLATE PROMPT

---

<!-- #region role -->

role = "You are an industry-veteran SaaS product designer. You've built high-touch UIs for FANG-style companies."

<!-- #endregion -->

<!-- #region goal -->

goal = "Your goal is to take the app-overview below, the aesthetics_guideline, the practicalities(if any), the style_guide, and the user inspiration (if any), the features_list provided and turn it into a "State" Brief, or snapshots of different features at different points in time in the user's journey"

<!-- #endregion -->

<!-- #region consultation_approach -->

consultation_approach = "

- Ask clear, numbered questions to clarify requirements for each feature story
- STRICTLY one question per serial number
- Integrate user responses into the evolving output artifact you generate.
- Only provide the final output when all key information is gathered
- Accept that some answers may be unavailable at this stage. if i dont have answewrs to any question, suggest a few options in follow up and try to help reach a decision on that question. never mind if the questions does not have a resolved answer despite offering me suggestions. . 
- Produce the artifact ONLY AFTER you have all the answers or at least those which can be answered for now.
- aesthetics_guideline must be followed
- be mindful  of accessibility features
- Consider scalability, security, and maintainability in all recommendations"

<!-- #endregion -->

<!-- #region aesthetics_guideline -->

${aesthetics_guideline} = "

* Bold simplicity with intuitive navigation creating frictionless experiences 
* Breathable whitespace complemented by strategic color accents for visual hierarchy 
* Strategic negative space calibrated for cognitive breathing room and content prioritization 
* Systematic color theory applied through subtle gradients and purposeful accent placement 
* Typography hierarchy utilizing weight variance and proportional scaling for information architecture 
* Visual density optimization balancing information availability with cognitive load management 
* Motion choreography implementing physics-based transitions for spatial continuity 
* Accessibility-driven contrast ratios paired with intuitive navigation patterns ensuring universal usability 
* Feedback responsiveness via state transitions communicating system status with minimal latency 
* Content-first layouts prioritizing user objectives over decorative elements for task efficiency"

<!-- #endregion -->

<!-- #region app_overview -->

${app-overview} = "
Elevator Pitch

EntryTestGuru is a comprehensive exam preparation platform that helps students master critical admission tests (ECAT, MCAT, CCAT, GMAT, GRE, SAT) through intelligent practice, precise analytics, and adaptive learning. With over 10,000+ MCQs, real-time performance tracking, ARDE probability insights, and personalized study plans, we transform high-stakes exam preparation from stressful cramming into confident, data-driven success.

## Problem Statement

Students preparing for once-yearly admission exams face three critical challenges:

1. **High Stakes, No Second Chances**: Most exams (ECAT, MCAT, CCAT) offer only one attempt per year with no retakes
2. **Lack of Targeted Practice**: Generic study materials don't identify individual weaknesses or optimize time allocation based on actual exam patterns
3. **Poor Time Management Under Pressure**: Students struggle with time constraints and exam anxiety without realistic practice environments and strategic question prioritization

Current solutions are either too generic (standard textbooks) or too expensive (private tutoring), leaving a gap for intelligent, affordable, personalized preparation that leverages real exam data.

## Target Audience

### Target Audience Segmentation

**Primary Segments:**

* **High School Graduates (16-18 years)**: Preparing for ECAT, MCAT, GMAT, GRE, SAT
* **Middle School Students (12-14 years)**: Preparing for CCAT (7th-8th graders)

**Geographic Focus:**

* Primary: Pakistan (ECAT, MCAT, CCAT)
* Secondary: International students (GMAT, GRE, SAT)

**User Tiers:**

* **Anonymous Users**: Trying the platform (20 MCQs + 2 explanations daily, 1 SE, 1 half-length SRE, device-specific limits with no cross-device sync)
* **Free Users**: 2-week trial with enhanced limits (50 daily MCQs + 4 explanations daily with AI tutoring, 4 SEs, 2 SREs, max 3 devices with cross-device sync)
* **Paid Users**: Unlimited access with premium features (unlimited MCQs + explanations + sprint exams + simulated real exams + fair usage based unlimited AI follow-up tutoring for answer explanations, max 3 devices with cross-device sync)

## Unique Selling Points (USP)

1. **ARDE Intelligence**: Questions tagged with actual exam appearance probability and historical frequency data
2. **Precision Analytics**: Track time-per-question, attempt patterns, and topic mastery with surgical precision
3. **Adaptive Question Variations**: Dynamic question variants that test true understanding, not memorization
4. **Realistic Exam Simulation**: Perfect replicas of actual exam conditions, timing, and marking schemes
5. **Strategic Study Plans**: Time-compressed curricula that prioritize high-probability questions based on ARDE dates
6. **Expert-Created Content**: 10,000+ questions with step-by-step explanations, video tutorials, and ARDE probability insights
7. **Affordable Access**: Comprehensive preparation at a fraction of private tutoring costs

## Target Platforms

* **Primary**: Flutter mobile app (iOS/Android)
* **Secondary**: Web application (responsive design)
* **Backend**: Python FastAPI with Firebase infrastructure

<!-- #endregion -->

<!-- #region style_guide -->

${style_guide} = "
    // lib/core/theme/app_colors.dart
    import 'package:flutter/material.dart';
    
    class AppColors {
      // Primary Brand Colors
      static const Color primary900 = Color(0xFF1B365D);
      static const Color primary700 = Color(0xFF2D5A87);
      static const Color primary500 = Color(0xFF4A7BA7);
      static const Color primary300 = Color(0xFF7BA3C7);
      static const Color primary100 = Color(0xFFE8F2FF);
    
      // User Tier Colors
      static const Color anonymousPrimary = Color(0xFF6B7280);
      static const Color freePrimary = Color(0xFF2D5A87);
      static const Color paidPrimary = Color(0xFF1B365D);
    
      // ARDE Probability Colors
      static const Color ardeHigh = Color(0xFFDC2626);    // >70%
      static const Color ardeMedium = Color(0xFFF59E0B);  // 30-70%
      static const Color ardeLow = Color(0xFF6B7280);     // 0-30%
    
      // Semantic Colors
      static const Color success = Color(0xFF10B981);
      static const Color warning = Color(0xFFF59E0B);
      static const Color error = Color(0xFFEF4444);
      static const Color info = Color(0xFF3B82F6);
    
      // Dark Theme Colors
      static const Color darkBgPrimary = Color(0xFF0F172A);
      static const Color darkBgSecondary = Color(0xFF1E293B);
      static const Color darkBgTertiary = Color(0xFF334155);
      static const Color darkBgAccent = Color(0xFF475569);
    
      static const Color darkTextPrimary = Color(0xFFF8FAFC);
      static const Color darkTextSecondary = Color(0xFFCBD5E1);
      static const Color darkTextTertiary = Color(0xFF94A3B8);
      static const Color darkTextMuted = Color(0xFF64748B);
    
      // Light Theme Colors
      static const Color lightBgPrimary = Color(0xFFFFFFFF);
      static const Color lightBgSecondary = Color(0xFFF8FAFC);
      static const Color lightBgTertiary = Color(0xFFF1F5F9);
      static const Color lightBgAccent = Color(0xFFE2E8F0);
    
      static const Color lightTextPrimary = Color(0xFF0F172A);
      static const Color lightTextSecondary = Color(0xFF334155);
      static const Color lightTextTertiary = Color(0xFF475569);
      static const Color lightTextMuted = Color(0xFF64748B);
    }

### Theme Data Configuration

    // lib/core/theme/app_theme.dart
    import 'package:flutter/material.dart';
    import 'app_colors.dart';
    
    class AppTheme {
      static ThemeData get lightTheme {
        return ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          colorScheme: ColorScheme.light(
            primary: AppColors.primary700,
            secondary: AppColors.primary500,
            surface: AppColors.lightBgPrimary,
            background: AppColors.lightBgSecondary,
            error: AppColors.error,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: AppColors.lightTextPrimary,
            onBackground: AppColors.lightTextPrimary,
            onError: Colors.white,
          ),
          scaffoldBackgroundColor: AppColors.lightBgPrimary,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.lightBgPrimary,
            foregroundColor: AppColors.lightTextPrimary,
            elevation: 0,
            centerTitle: true,
          ),
        );
      }
    
      static ThemeData get darkTheme {
        return ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          colorScheme: ColorScheme.dark(
            primary: AppColors.primary500,
            secondary: AppColors.primary300,
            surface: AppColors.darkBgSecondary,
            background: AppColors.darkBgPrimary,
            error: AppColors.error,
            onPrimary: Colors.white,
            onSecondary: Colors.black,
            onSurface: AppColors.darkTextPrimary,
            onBackground: AppColors.darkTextPrimary,
            onError: Colors.white,
          ),
          scaffoldBackgroundColor: AppColors.darkBgPrimary,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.darkBgPrimary,
            foregroundColor: AppColors.darkTextPrimary,
            elevation: 0,
            centerTitle: true,
          ),
        );
      }
    }

## 2. Typography (Flutter TextTheme)

### Typography Scale

    // lib/core/theme/app_text_styles.dart
    import 'package:flutter/material.dart';
    import 'package:google_fonts/google_fonts.dart';
    
    class AppTextStyles {
      // Base font family
      static String get fontFamily => GoogleFonts.inter().fontFamily!;
    
      // Display Styles (Large headings)
      static TextStyle get displayLarge => GoogleFonts.inter(
        fontSize: 36.0, // 2.25rem
        fontWeight: FontWeight.w700,
        height: 1.25,
        letterSpacing: -0.5,
      );
    
      static TextStyle get displayMedium => GoogleFonts.inter(
        fontSize: 30.0, // 1.875rem
        fontWeight: FontWeight.w600,
        height: 1.25,
        letterSpacing: -0.25,
      );
    
      static TextStyle get displaySmall => GoogleFonts.inter(
        fontSize: 24.0, // 1.5rem
        fontWeight: FontWeight.w600,
        height: 1.25,
      );
    
      // Headline Styles
      static TextStyle get headlineLarge => GoogleFonts.inter(
        fontSize: 20.0, // 1.25rem
        fontWeight: FontWeight.w600,
        height: 1.3,
      );
    
      static TextStyle get headlineMedium => GoogleFonts.inter(
        fontSize: 18.0, // 1.125rem
        fontWeight: FontWeight.w500,
        height: 1.3,
      );
    
      static TextStyle get headlineSmall => GoogleFonts.inter(
        fontSize: 16.0, // 1rem
        fontWeight: FontWeight.w500,
        height: 1.3,
      );
    
      // Body Styles
      static TextStyle get bodyLarge => GoogleFonts.inter(
        fontSize: 16.0, // 1rem
        fontWeight: FontWeight.w400,
        height: 1.5,
      );
    
      static TextStyle get bodyMedium => GoogleFonts.inter(
        fontSize: 14.0, // 0.875rem
        fontWeight: FontWeight.w400,
        height: 1.5,
      );
    
      static TextStyle get bodySmall => GoogleFonts.inter(
        fontSize: 12.0, // 0.75rem
        fontWeight: FontWeight.w400,
        height: 1.4,
      );
    
      // Label Styles
      static TextStyle get labelLarge => GoogleFonts.inter(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.1,
      );
    
      static TextStyle get labelMedium => GoogleFonts.inter(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.5,
      );
    
      static TextStyle get labelSmall => GoogleFonts.inter(
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        height: 1.4,
        letterSpacing: 0.5,
      );
    
      // Specialized Styles
      static TextStyle get questionText => GoogleFonts.inter(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );
    
      static TextStyle get mcqOption => GoogleFonts.inter(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );
    
      static TextStyle get mathContent => GoogleFonts.crimsonText(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        height: 1.6,
      );
    
      static TextStyle get monoCode => GoogleFonts.jetBrainsMono(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );
    }

### TextTheme Integration

    // In app_theme.dart, add to ThemeData:
    textTheme: TextTheme(
      displayLarge: AppTextStyles.displayLarge,
      displayMedium: AppTextStyles.displayMedium,
      displaySmall: AppTextStyles.displaySmall,
      headlineLarge: AppTextStyles.headlineLarge,
      headlineMedium: AppTextStyles.headlineMedium,
      headlineSmall: AppTextStyles.headlineSmall,
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
      labelLarge: AppTextStyles.labelLarge,
      labelMedium: AppTextStyles.labelMedium,
      labelSmall: AppTextStyles.labelSmall,
    ),

## 3. Spacing & Layout (Flutter Dimensions)

### Spacing Constants

    // lib/core/theme/app_dimensions.dart
    class AppDimensions {
      // Spacing Scale
      static const double space1 = 4.0;
      static const double space2 = 8.0;
      static const double space3 = 12.0;
      static const double space4 = 16.0;
      static const double space5 = 20.0;
      static const double space6 = 24.0;
      static const double space8 = 32.0;
      static const double space10 = 40.0;
      static const double space12 = 48.0;
      static const double space16 = 64.0;
      static const double space20 = 80.0;
    
      // Border Radius
      static const double radiusSmall = 4.0;
      static const double radiusMedium = 8.0;
      static const double radiusLarge = 12.0;
      static const double radiusXLarge = 16.0;
      static const double radiusRound = 50.0;
    
      // Breakpoints (for ResponsiveBuilder or LayoutBuilder)
      static const double mobileBreakpoint = 640.0;
      static const double tabletBreakpoint = 768.0;
      static const double desktopBreakpoint = 1024.0;
      static const double desktopLargeBreakpoint = 1280.0;
    
      // Touch Targets (Accessibility)
      static const double minTouchTarget = 44.0;
      static const double comfortableTouchTarget = 48.0;
    
      // Card Dimensions
      static const double cardPaddingMobile = 16.0;
      static const double cardPaddingTablet = 24.0;
      static const double cardPaddingDesktop = 32.0;
    }

### Responsive Helper

    // lib/core/utils/responsive_utils.dart
    import 'package:flutter/material.dart';
    import '../theme/app_dimensions.dart';
    
    class ResponsiveUtils {
      static bool isMobile(BuildContext context) {
        return MediaQuery.of(context).size.width < AppDimensions.tabletBreakpoint;
      }
    
      static bool isTablet(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
        return width >= AppDimensions.tabletBreakpoint && 
               width < AppDimensions.desktopBreakpoint;
      }
    
      static bool isDesktop(BuildContext context) {
        return MediaQuery.of(context).size.width >= AppDimensions.desktopBreakpoint;
      }
    
      static double getCardPadding(BuildContext context) {
        if (isMobile(context)) return AppDimensions.cardPaddingMobile;
        if (isTablet(context)) return AppDimensions.cardPaddingTablet;
        return AppDimensions.cardPaddingDesktop;
      }
    
      static EdgeInsets getScreenPadding(BuildContext context) {
        if (isMobile(context)) {
          return const EdgeInsets.all(AppDimensions.space4);
        } else if (isTablet(context)) {
          return const EdgeInsets.all(AppDimensions.space6);
        } else {
          return const EdgeInsets.symmetric(
            horizontal: AppDimensions.space8,
            vertical: AppDimensions.space6,
          );
        }
      }
    }

## 4. Components (Flutter Widgets)

### Theme Switcher Widget

    // lib/widgets/theme_switcher.dart
    import 'package:flutter/material.dart';
    import 'package:flutter_riverpod/flutter_riverpod.dart';
    
    class ThemeSwitcher extends ConsumerWidget {
      const ThemeSwitcher({super.key});
    
      @override
      Widget build(BuildContext context, WidgetRef ref) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
    
        return Positioned(
          top: AppDimensions.space4 + MediaQuery.of(context).padding.top,
          right: AppDimensions.space4,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(AppDimensions.radiusRound),
            child: Container(
              width: AppDimensions.comfortableTouchTarget,
              height: AppDimensions.comfortableTouchTarget,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(AppDimensions.radiusRound),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                  width: 2,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  // Toggle theme using Riverpod provider
                  ref.read(themeProvider.notifier).toggleTheme();
                },
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Icon(
                    isDark ? Icons.light_mode : Icons.dark_mode,
                    key: ValueKey(isDark),
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                tooltip: isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode',
              ),
            ),
          ),
        );
      }
    }

### Custom Button Styles

    // lib/widgets/custom_buttons.dart
    import 'package:flutter/material.dart';
    import '../core/theme/app_colors.dart';
    import '../core/theme/app_dimensions.dart';
    
    class AppButton extends StatelessWidget {
      final String text;
      final VoidCallback? onPressed;
      final ButtonType type;
      final UserTier? userTier;
      final bool isLoading;
    
      const AppButton({
        super.key,
        required this.text,
        this.onPressed,
        this.type = ButtonType.primary,
        this.userTier,
        this.isLoading = false,
      });
    
      @override
      Widget build(BuildContext context) {
        return SizedBox(
          height: AppDimensions.minTouchTarget,
          child: ElevatedButton(
            onPressed: isLoading ? null : onPressed,
            style: _getButtonStyle(context),
            child: isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : Text(
                    text,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: _getTextColor(context),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        );
      }
    
      ButtonStyle _getButtonStyle(BuildContext context) {
        Color backgroundColor;
    
        switch (type) {
          case ButtonType.primary:
            backgroundColor = _getPrimaryColor();
            break;
          case ButtonType.secondary:
            backgroundColor = Colors.transparent;
            break;
          case ButtonType.outline:
            backgroundColor = Colors.transparent;
            break;
        }
    
        return ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: _getTextColor(context),
          elevation: type == ButtonType.primary ? 2 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
            side: type == ButtonType.outline
                ? BorderSide(color: _getPrimaryColor(), width: 2)
                : BorderSide.none,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.space6,
            vertical: AppDimensions.space3,
          ),
        );
      }
    
      Color _getPrimaryColor() {
        switch (userTier) {
          case UserTier.anonymous:
            return AppColors.anonymousPrimary;
          case UserTier.free:
            return AppColors.freePrimary;
          case UserTier.paid:
            return AppColors.paidPrimary;
          default:
            return AppColors.primary700;
        }
      }
    
      Color _getTextColor(BuildContext context) {
        if (type == ButtonType.primary) {
          return Colors.white;
        } else {
          return _getPrimaryColor();
        }
      }
    }
    
    enum ButtonType { primary, secondary, outline }
    enum UserTier { anonymous, free, paid }

### ARDE Probability Badge

    // lib/widgets/arde_badge.dart
    import 'package:flutter/material.dart';
    import '../core/theme/app_colors.dart';
    import '../core/theme/app_dimensions.dart';
    
    class ArdeBadge extends StatelessWidget {
      final ArdeProbability probability;
      final bool showLabel;
    
      const ArdeBadge({
        super.key,
        required this.probability,
        this.showLabel = true,
      });
    
      @override
      Widget build(BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.space3,
            vertical: AppDimensions.space2,
          ),
          decoration: BoxDecoration(
            color: _getBackgroundColor().withOpacity(0.1),
            border: Border.all(color: _getColor(), width: 1),
            borderRadius: BorderRadius.circular(AppDimensions.radiusXLarge),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                _getIcon(),
                size: 12,
                color: _getColor(),
              ),
              if (showLabel) ...[
                const SizedBox(width: AppDimensions.space1),
                Text(
                  _getLabel(),
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: _getColor(),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ],
          ),
        );
      }
    
      Color _getColor() {
        switch (probability) {
          case ArdeProbability.high:
            return AppColors.ardeHigh;
          case ArdeProbability.medium:
            return AppColors.ardeMedium;
          case ArdeProbability.low:
            return AppColors.ardeLow;
        }
      }
    
      Color _getBackgroundColor() {
        return _getColor();
      }
    
      IconData _getIcon() {
        switch (probability) {
          case ArdeProbability.high:
            return Icons.trending_up;
          case ArdeProbability.medium:
            return Icons.trending_flat;
          case ArdeProbability.low:
            return Icons.trending_down;
        }
      }
    
      String _getLabel() {
        switch (probability) {
          case ArdeProbability.high:
            return 'HIGH ARDE';
          case ArdeProbability.medium:
            return 'MED ARDE';
          case ArdeProbability.low:
            return 'LOW ARDE';
        }
      }
    }
    
    enum ArdeProbability { high, medium, low }

### Custom Card Widget

    // lib/widgets/app_card.dart
    import 'package:flutter/material.dart';
    import '../core/theme/app_dimensions.dart';
    import '../core/utils/responsive_utils.dart';
    
    class AppCard extends StatelessWidget {
      final Widget child;
      final bool isInteractive;
      final VoidCallback? onTap;
      final EdgeInsets? padding;
      final double? elevation;
    
      const AppCard({
        super.key,
        required this.child,
        this.isInteractive = false,
        this.onTap,
        this.padding,
        this.elevation,
      });
    
      @override
      Widget build(BuildContext context) {
        final cardPadding = padding ?? EdgeInsets.all(
          ResponsiveUtils.getCardPadding(context),
        );
    
        return Material(
          elevation: elevation ?? (isInteractive ? 2 : 1),
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
          color: Theme.of(context).colorScheme.surface,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: cardPadding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
                  width: 1,
                ),
              ),
              child: child,
            ),
          ),
        );
      }
    }

## 5. Iconography (Flutter Icons)

### Custom Icon Widget

    // lib/widgets/academic_icon.dart
    import 'package:flutter/material.dart';
    import 'package:flutter_svg/flutter_svg.dart';
    
    class AcademicIcon extends StatelessWidget {
      final AcademicIconType type;
      final double size;
      final Color? color;
      final bool isActive;
    
      const AcademicIcon({
        super.key,
        required this.type,
        this.size = 24.0,
        this.color,
        this.isActive = false,
      });
    
      @override
      Widget build(BuildContext context) {
        final iconColor = color ?? Theme.of(context).colorScheme.onSurface;
    
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Icon(
            _getIconData(),
            key: ValueKey('${type}_$isActive'),
            size: size,
            color: iconColor,
            weight: isActive ? 600 : 400,
            fill: isActive ? 1.0 : 0.0,
          ),
        );
      }
    
      IconData _getIconData() {
        switch (type) {
          case AcademicIconType.practice:
            return isActive ? Icons.edit : Icons.edit_outlined;
          case AcademicIconType.exam:
            return isActive ? Icons.timer : Icons.timer_outlined;
          case AcademicIconType.analytics:
            return isActive ? Icons.bar_chart : Icons.bar_chart_outlined;
          case AcademicIconType.aiTutor:
            return isActive ? Icons.psychology : Icons.psychology_outlined;
          case AcademicIconType.leaderboard:
            return isActive ? Icons.emoji_events : Icons.emoji_events_outlined;
          case AcademicIconType.settings:
            return isActive ? Icons.settings : Icons.settings_outlined;
          case AcademicIconType.profile:
            return isActive ? Icons.person : Icons.person_outlined;
          case AcademicIconType.bookmark:
            return isActive ? Icons.bookmark : Icons.bookmark_outlined;
        }
      }
    }
    
    enum AcademicIconType {
      practice,
      exam,
      analytics,
      aiTutor,
      leaderboard,
      settings,
      profile,
      bookmark,
    }

## 6. Motion & Interaction (Flutter Animations)

### Animation Constants

    // lib/core/theme/app_animations.dart
    class AppAnimations {
      // Duration Constants
      static const Duration fast = Duration(milliseconds: 150);
      static const Duration normal = Duration(milliseconds: 250);
      static const Duration slow = Duration(milliseconds: 400);
    
      // Curves
      static const Curve easeInOut = Curves.easeInOut;
      static const Curve easeOut = Curves.easeOut;
      static const Curve bounce = Curves.elasticOut;
    
      // Page Transitions
      static Route<T> slideTransition<T extends Object?>(
        Widget page,
        RouteSettings settings,
      ) {
        return PageRouteBuilder<T>(
          settings: settings,
          pageBuilder: (context, animation, _) => page,
          transitionDuration: normal,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);
    
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      }
    }

### Feedback Animations

    // lib/widgets/animated_feedback.dart
    import 'package:flutter/material.dart';
    
    class AnimatedFeedback extends StatefulWidget {
      final Widget child;
      final FeedbackType type;
      final bool trigger;
    
      const AnimatedFeedback({
        super.key,
        required this.child,
        required this.type,
        required this.trigger,
      });
    
      @override
      State<AnimatedFeedback> createState() => _AnimatedFeedbackState();
    }
    
    class _AnimatedFeedbackState extends State<AnimatedFeedback>
        with SingleTickerProviderStateMixin {
      late AnimationController _controller;
      late Animation<double> _animation;
    
      @override
      void initState() {
        super.initState();
        _controller = AnimationController(
          duration: const Duration(milliseconds: 600),
          vsync: this,
        );
    
        _animation = widget.type == FeedbackType.success
            ? Tween<double>(begin: 1.0, end: 1.1).animate(
                CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
              )
            : Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
              );
      }
    
      @override
      void didUpdateWidget(AnimatedFeedback oldWidget) {
        super.didUpdateWidget(oldWidget);
        if (widget.trigger && !oldWidget.trigger) {
          _controller.forward().then((_) => _controller.reverse());
        }
      }
    
      @override
      Widget build(BuildContext context) {
        return AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: widget.type == FeedbackType.success ? _animation.value : 1.0,
              child: Transform.translate(
                offset: widget.type == FeedbackType.error
                    ? Offset(_animation.value * 10 * (1 - _animation.value), 0)
                    : Offset.zero,
                child: widget.child,
              ),
            );
          },
        );
      }
    
      @override
      void dispose() {
        _controller.dispose();
        super.dispose();
      }
    }
    
    enum FeedbackType { success, error }

## 7. Accessibility (Flutter Implementation)

### Focus Management

    // lib/core/accessibility/focus_helper.dart
    import 'package:flutter/material.dart';
    import 'package:flutter/services.dart';
    
    class FocusHelper {
      static void announceFocus(BuildContext context, String message) {
        SemanticsService.announce(message, TextDirection.ltr);
      }
    
      static Widget buildFocusableItem({
        required Widget child,
        required VoidCallback onTap,
        String? semanticLabel,
        String? semanticHint,
      }) {
        return Semantics(
          label: semanticLabel,
          hint: semanticHint,
          button: true,
          child: Focus(
            child: Builder(
              builder: (context) {
                final focusNode = Focus.of(context);
                return GestureDetector(
                  onTap: onTap,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      border: focusNode.hasFocus
                          ? Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3,
                            )
                          : null,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: child,
                  ),
                );
              },
            ),
          ),
        );
      }
    }

### Screen Reader Support

    // lib/widgets/accessible_text.dart
    import 'package:flutter/material.dart';
    
    class AccessibleText extends StatelessWidget {
      final String text;
      final TextStyle? style;
      final String? semanticLabel;
      final bool excludeSemantics;
    
      const AccessibleText(
        this.text, {
        super.key,
        this.style,
        this.semanticLabel,
        this.excludeSemantics = false,
      });
    
      @override
      Widget build(BuildContext context) {
        return Semantics(
          label: semanticLabel ?? text,
          excludeSemantics: excludeSemantics,
          child: Text(
            text,
            style: style,
          ),
        );
      }
    }

## 8. Responsive Implementation

### Responsive Builder

    // lib/widgets/responsive_builder.dart
    import 'package:flutter/material.dart';
    import '../core/theme/app_dimensions.dart';
    
    class ResponsiveBuilder extends StatelessWidget {
      final Widget Function(BuildContext, BoxConstraints) mobile;
      final Widget Function(BuildContext, BoxConstraints)? tablet;
      final Widget Function(BuildContext, BoxConstraints)? desktop;
    
      const ResponsiveBuilder({
        super.key,
        required this.mobile,
        this.tablet,
        this.desktop,
      });
    
      @override
      Widget build(BuildContext context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= AppDimensions.desktopBreakpoint) {
              return desktop?.call(context, constraints) ?? 
                     tablet?.call(context, constraints) ?? 
                     mobile(context, constraints);
            } else if (constraints.maxWidth >= AppDimensions.tabletBreakpoint) {
              return tablet?.call(context, constraints) ?? 
                     mobile(context, constraints);
            } else {
              return mobile(context, constraints);
            }
          },
        );
      }
    }

### Navigation Implementation

    // lib/widgets/app_navigation.dart
    import 'package:flutter/material.dart';
    import '../core/theme/app_dimensions.dart';
    import '../core/utils/responsive_utils.dart';
    import 'academic_icon.dart';
    
    class AppNavigation extends StatelessWidget {
      final int currentIndex;
      final Function(int) onIndexChanged;
      final List<NavigationItem> items;
    
      const AppNavigation({
        super.key,
        required this.currentIndex,
        required this.onIndexChanged,
        required this.items,
      });
    
      @override
      Widget build(BuildContext context) {
        return ResponsiveUtils.isMobile(context)
            ? _buildBottomNavigation(context)
            : _buildSideNavigation(context);
      }
    
      Widget _buildBottomNavigation(BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              top: BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: SafeArea(
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.space4,
                vertical: AppDimensions.space2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: items.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;
                  final isActive = index == currentIndex;
    
                  return _buildNavItem(
                    context: context,
                    item: item,
                    isActive: isActive,
                    onTap: () => onIndexChanged(index),
                    isMobile: true,
                  );
                }).toList(),
              ),
            ),
          ),
        );
      }
    
      Widget _buildSideNavigation(BuildContext context) {
        return Container(
          width: 280,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              right: BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: AppDimensions.space8),
                // Logo section
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.space6,
                  ),
                  child: Text(
                    'EntryTestGuru',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(height: AppDimensions.space8),
                // Navigation items
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.space4,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final isActive = index == currentIndex;
    
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppDimensions.space2,
                        ),
                        child: _buildNavItem(
                          context: context,
                          item: item,
                          isActive: isActive,
                          onTap: () => onIndexChanged(index),
                          isMobile: false,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }
    
      Widget _buildNavItem({
        required BuildContext context,
        required NavigationItem item,
        required bool isActive,
        required VoidCallback onTap,
        required bool isMobile,
      }) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
            child: Container(
              constraints: BoxConstraints(
                minHeight: AppDimensions.minTouchTarget,
                minWidth: isMobile ? AppDimensions.minTouchTarget : double.infinity,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? AppDimensions.space2 : AppDimensions.space4,
                vertical: AppDimensions.space3,
              ),
              decoration: BoxDecoration(
                color: isActive
                    ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              ),
              child: isMobile
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AcademicIcon(
                          type: item.iconType,
                          isActive: isActive,
                          color: isActive
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                        ),
                        const SizedBox(height: AppDimensions.space1),
                        Text(
                          item.label,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: isActive
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.onSurface,
                            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        AcademicIcon(
                          type: item.iconType,
                          isActive: isActive,
                          color: isActive
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                        ),
                        const SizedBox(width: AppDimensions.space3),
                        Expanded(
                          child: Text(
                            item.label,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: isActive
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.onSurface,
                              fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      }
    }
    
    class NavigationItem {
      final String label;
      final AcademicIconType iconType;
    
      const NavigationItem({
        required this.label,
        required this.iconType,
      });
    }

## 9. Theme Provider (Riverpod Implementation)

### Theme State Management

    // lib/providers/theme_provider.dart
    import 'package:flutter/material.dart';
    import 'package:flutter_riverpod/flutter_riverpod.dart';
    import 'package:shared_preferences/shared_preferences.dart';
    
    class ThemeNotifier extends StateNotifier<ThemeMode> {
      ThemeNotifier() : super(ThemeMode.system) {
        _loadTheme();
      }
    
      static const String _themeKey = 'app_theme_mode';
    
      Future<void> _loadTheme() async {
        final prefs = await SharedPreferences.getInstance();
        final themeIndex = prefs.getInt(_themeKey) ?? 0;
        state = ThemeMode.values[themeIndex];
      }
    
      Future<void> setTheme(ThemeMode themeMode) async {
        state = themeMode;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt(_themeKey, themeMode.index);
      }
    
      Future<void> toggleTheme() async {
        final newTheme = state == ThemeMode.dark 
            ? ThemeMode.light 
            : ThemeMode.dark;
        await setTheme(newTheme);
      }
    
      bool get isDarkMode => state == ThemeMode.dark;
      bool get isLightMode => state == ThemeMode.light;
      bool get isSystemMode => state == ThemeMode.system;
    }
    
    final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
      (ref) => ThemeNotifier(),
    );

## 10. Usage Examples

### Complete App Setup

    // lib/main.dart
    import 'package:flutter/material.dart';
    import 'package:flutter_riverpod/flutter_riverpod.dart';
    import 'core/theme/app_theme.dart';
    import 'providers/theme_provider.dart';
    import 'widgets/theme_switcher.dart';
    
    void main() {
      runApp(
        const ProviderScope(
          child: EntryTestGuruApp(),
        ),
      );
    }
    
    class EntryTestGuruApp extends ConsumerWidget {
      const EntryTestGuruApp({super.key});
    
      @override
      Widget build(BuildContext context, WidgetRef ref) {
        final themeMode = ref.watch(themeProvider);
    
        return MaterialApp(
          title: 'EntryTestGuru',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          home: const MainScreen(),
          builder: (context, child) {
            return Stack(
              children: [
                child!,
                const ThemeSwitcher(),
              ],
            );
          },
        );
      }
    }

### Practice Screen Example

    // lib/screens/practice_screen.dart
    import 'package:flutter/material.dart';
    import '../widgets/app_card.dart';
    import '../widgets/app_button.dart';
    import '../widgets/arde_badge.dart';
    import '../core/theme/app_dimensions.dart';
    import '../core/theme/app_text_styles.dart';
    import '../core/utils/responsive_utils.dart';
    
    class PracticeScreen extends StatelessWidget {
      const PracticeScreen({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: ResponsiveUtils.getScreenPadding(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Text(
                    'Practice Mode',
                    style: AppTextStyles.displayMedium.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.space6),
    
                  // Question Card
                  Expanded(
                    child: AppCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Question header with ARDE badge
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Question 5 of 20',
                                  style: AppTextStyles.labelLarge.copyWith(
                                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ),
                              const ArdeBadge(probability: ArdeProbability.high),
                            ],
                          ),
                          const SizedBox(height: AppDimensions.space6),
    
                          // Question text
                          Text(
                            'Which of the following is the correct formula for calculating kinetic energy?',
                            style: AppTextStyles.questionText.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: AppDimensions.space8),
    
                          // MCQ Options
                          Expanded(
                            child: Column(
                              children: [
                                _buildMCQOption(context, 'A', 'KE = ½mv²', false),
                                _buildMCQOption(context, 'B', 'KE = mv²', false),
                                _buildMCQOption(context, 'C', 'KE = ½m²v', false),
                                _buildMCQOption(context, 'D', 'KE = 2mv²', false),
                              ],
                            ),
                          ),
    
                          // Action buttons
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  text: 'Skip Question',
                                  type: ButtonType.outline,
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(width: AppDimensions.space4),
                              Expanded(
                                flex: 2,
                                child: AppButton(
                                  text: 'Submit Answer',
                                  type: ButtonType.primary,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    
      Widget _buildMCQOption(
        BuildContext context,
        String option,
        String text,
        bool isSelected,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: AppDimensions.space3),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  minHeight: AppDimensions.minTouchTarget,
                ),
                padding: const EdgeInsets.all(AppDimensions.space4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.outline.withOpacity(0.3),
                    width: isSelected ? 2 : 1,
                  ),
                  borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary.withOpacity(0.05)
                      : Colors.transparent,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected
                            ? Theme.of(context).colorScheme.primary
                            : Colors.transparent,
                        border: Border.all(
                          color: isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.outline,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          option,
                          style: AppTextStyles.labelMedium.copyWith(
                            color: isSelected
                                ? Colors.white
                                : Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppDimensions.space4),
                    Expanded(
                      child: Text(
                        text,
                        style: AppTextStyles.mcqOption.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }

## 11. Dependencies Required

### pubspec.yaml additions

    dependencies:
      flutter:
        sdk: flutter
    
      # State Management
      flutter_riverpod: ^2.4.9
    
      # Fonts & Icons
      google_fonts: ^6.1.0
      flutter_svg: ^2.0.9
    
      # UI & Animations
      animations: ^2.0.8
    
      # Storage
      shared_preferences: ^2.2.2
    
      # Responsive
      flutter_screenutil: ^5.9.0
    
      # Accessibility
      flutter_tts: ^3.8.3

## 12. File Structure

    lib/
    ├── core/
    │   ├── theme/
    │   │   ├── app_colors.dart
    │   │   ├── app_theme.dart
    │   │   ├── app_text_styles.dart
    │   │   ├── app_dimensions.dart
    │   │   └── app_animations.dart
    │   ├── utils/
    │   │   └── responsive_utils.dart
    │   └── accessibility/
    │       └── focus_helper.dart
    ├── widgets/
    │   ├── theme_switcher.dart
    │   ├── custom_buttons.dart
    │   ├── arde_badge.dart
    │   ├── app_card.dart
    │   ├── academic_icon.dart
    │   ├── app_navigation.dart
    │   ├── responsive_builder.dart
    │   ├── animated_feedback.dart
    │   └── accessible_text.dart
    ├── providers/
    │   └── theme_provider.dart
    ├── screens/
    │   └── practice_screen.dart
    └── main.dart

This Flutter-specific style guide provides:

✅ **Native Flutter implementation** using Material 3 design system✅ **Dark/Light theme support** with persistent storage✅ **Always-accessible theme switcher** via fixed position widget✅ **User tier differentiation** through color variations✅ **ARDE probability badges** with Flutter widgets✅ **Responsive design** using LayoutBuilder and MediaQuery✅ **WCAG 2.1 AA compliance** with proper focus management✅ **Academic iconography** using Material Icons with active/inactive states✅ **Typography scale** using Google Fonts and TextTheme✅ **Animation system** with duration and curve constants✅ **Riverpod state management** for theme switching

"

<!-- #endregion -->

<!-- #region output_format -->

${output_format} = "
[
\#\# Feature Name  
\#\#\# Screen X  
\#\#\#\# Screen X State N  
\* description  
\* of  
\* UI & UX  
\* in detail  
\* including animations  
\* any anything else  
\* and colors based on the style-guide below  
\#\#\#\# Screen X State N+1

Repeat for as many N+\# as needed based on the function of the state]
"

<!-- #endregion -->

<!-- #region features_list -->

${features_list} = "
Features List

### Authentication & User Management

#### Anonymous User Flow (Device-Isolated Experience)

* **User Stories**
  * As an anonymous student, I want to try the platform on my current device, so that I can evaluate if it's worth my time before committing
  * As an anonymous user, I want to see exactly what limits I have on this device, so that I understand the value of upgrading
  * As a trial user, I want to seamlessly upgrade when I hit my limits, so that my learning isn't interrupted
  * As an anonymous user, I understand my progress won't sync across devices, so that I can make informed decisions about upgrading

#### UX/UI Considerations

**Step-by-step User Journey:**

* User lands on welcome screen with clear "Continue as Guest" prominent button alongside "Sign Up" options
  
* Onboarding flow shows exam category selection with visual preview of question types and ARDE data availability
  
* Dashboard displays usage meter showing "18/20 practice questions remaining today on this device" with progress bar
  
* Each interaction shows gentle reminder of tier benefits and device limitations without being intrusive
  
* When approaching limits, soft prompts appear: "2 questions left today on this device - unlock unlimited practice + sync across devices"
  
* Limit reached state shows motivational upgrade screen emphasizing cross-device sync and advanced features
  
* **Core Experience**
  
  * **Device-Specific Tracking**: All limits and progress tied to current device only, with clear messaging about device isolation
  * **No Cross-Device Sync**: Prominent messaging that progress won't transfer between devices without account registration
  * **Simplified Analytics**: Basic session statistics without granular performance tracking or historical trends
  * **Limited AI Access**: Basic explanations without conversation history or advanced AI tutoring features
  * **Upgrade Incentives**: Clear value propositions highlighting cross-device sync, advanced analytics, and AI features
* **Advanced Users & Edge Cases**
  
  * **Device Fingerprint Binding**: Daily limits (20 MCQs + 2 explanations) tied to specific device fingerprint
  * **Local Storage Backup**: Session-based tracking with device fingerprint validation to prevent simple circumvention
  * **No Cloud Sync**: All anonymous progress stored locally with no server-side session management
  * **Upgrade Path**: Clear migration flow to transfer local progress when registering for account

* * *

#### Multi-Device Authentication System (Registered Users Only)

* **User Stories**
  * As a registered student with multiple devices, I want to see all my connected devices, so that I can manage my account security
  * As a registered user adding a 4th device, I want to easily remove an old device, so that I can access my account on my new device
  * As a security-conscious registered user, I want to know when someone tries to access my account, so that I can protect my data
  * As a registered user with multiple browsers, I want them treated as one device, so that I don't waste device slots unnecessarily

#### UX/UI Considerations

**Step-by-step User Journey (Registered Users):**

* Registered user attempts login on 4th device and sees friendly blocking screen: "Account limit reached"
  
* Interactive device list shows: "My Laptop (Chrome, Firefox, Safari) - Last active 2 hours ago"
  
* Each device card has "Remove" button with confirmation dialog explaining immediate logout
  
* Push notification sent to existing devices: "New login attempt from iPhone - Manage devices"
  
* Real-time updates show device status changes across all active sessions
  
* **Core Experience**
  
  * **Device Registry**: Clean card-based layout with device icons, custom names, and session indicators (registered users only)
  * **Active Status**: Green dot indicators for online devices with "Last seen" timestamps (registered users only)
  * **Browser Consolidation**: Desktop devices show expandable browser session list with individual session management (registered users only)
  * **Removal Flow**: Smooth slide-out animation with confirmation dialog and immediate cross-device updates (registered users only)
* **Advanced Users & Edge Cases**
  
  * **Automatic Device Consolidation**: When fingerprint similarity >85% detected, system automatically treats devices as same device without user intervention
  * **Network Interruptions**: Graceful handling of device status updates with retry mechanisms (registered users only)
  * **Emergency Access**: Account recovery flow for registered users locked out due to device limit issues
  * **Session Hijacking Protection**: Suspicious activity detection with automatic device unregistration and user notification (registered users only)

* * *

### Question Bank & Content Management System

#### Content Discovery & Filtering

* **User Stories**
  * As a focused student, I want to filter questions by ARDE probability, so that I can prioritize high-yield topics
  * As a struggling student, I want to focus on my weak areas, so that I can improve my overall performance
  * As a content creator, I want to see which questions need more variations, so that I can prioritize my content creation
  * As an admin, I want to track question performance, so that I can identify content gaps

#### UX/UI Considerations

**Step-by-step User Journey:**

* User opens practice mode and sees comprehensive filter interface with multiple filter categories and real-time question count preview
  
* **Subject/Topic Filters**: Hierarchical selection with Main Subjects (Physics, Chemistry, Biology, Mathematics, English) → Sub-topics (Physics: Mechanics, Thermodynamics, Optics) → Granular Topics (Mechanics: Kinematics, Dynamics, Circular Motion)
  
* **Difficulty Level**: 1-5 star rating slider with visual difficulty indicators and smart recommendations
  
* **ARDE Probability Filters**: High ARDE (>70% probability), Medium ARDE (30-70%), Low ARDE (0-30%) with color-coded badges and historical frequency indicators ("Asked 3+ times in last 5 years")
  
* **Performance-Based Filters**: Smart suggestions including "My Weak Areas" (<60% accuracy), "Need Review" (previously incorrect), "Never Attempted" (new questions), "Mastered Topics" (confidence building), "Time Struggles" (above average time)
  
* **Question Type/Format Filters**: MCQ Style (single correct, multiple correct, assertion-reason), Question Length (short/medium/long passages), Image-Based (diagrams/graphs), Calculation-Heavy (numerical problems), Conceptual (theory-based)
  
* Filter combinations show real-time preview: "847 questions available, ~45 min estimated time" with smart recommendations
  
* Applied filters display as removable chips with one-tap clearing and save filter combination as presets
  
* **Core Experience**
  
  * **Comprehensive Filter Interface**: Multi-category filter system with collapsible sections for progressive disclosure
  * **Subject Hierarchy**: Expandable tree structure (Physics → Mechanics → Kinematics) with visual question count indicators
  * **Difficulty Slider**: Interactive 1-5 star rating with difficulty distribution charts
  * **ARDE Probability Badges**: Color-coded visual indicators (Red: High >70%, Orange: Medium 30-70%, Gray: Low 0-30%) with historical frequency data
  * **Performance Insights**: Smart filter suggestions based on user analytics with accuracy percentages and time performance
  * **Question Format Icons**: Visual indicators for MCQ types, image-based questions, calculation-heavy problems, and conceptual questions
  * **Real-time Preview Panel**: Dynamic question count updates with estimated completion time and difficulty distribution charts
  * **Filter Combination Management**: Applied filters shown as removable chips with preset saving functionality and quick-clear options
* **Advanced Users & Edge Cases**
  
  * **Complex Filtering**: Multiple filter combinations with visual tag system showing active filters
  * **Performance Optimization**: Intelligent caching with background prefetching based on user patterns
  * **Content Conflicts**: When questions have conflicting difficulty ratings, show averaged values with source indicators
  * **Version Control**: Question updates show change indicators with rollback options for admins

* * *

### Practice Mode & Learning Engine

#### Interactive Learning Experience

* **User Stories**
  * As a practicing student, I want immediate feedback on my answers, so that I can learn from my mistakes quickly
  * As a time-conscious student, I want to see how long I'm taking per question, so that I can improve my speed
  * As a visual learner, I want rich explanations with diagrams, so that I can understand concepts better
  * As a mobile user, I want smooth offline practice, so that I can study during my commute

#### UX/UI Considerations

**Step-by-step User Journey:**

* User selects practice mode and chooses question filters with visual preview of question count
  
* Question interface shows clean MCQ layout with subtle timer and attempt counter
  
* Answer selection provides immediate visual feedback with smooth color transitions
  
* Explanation panel slides up with text, diagrams, and "Ask AI" button for follow-up questions
  
* Progress tracking shows session statistics with encouraging micro-animations for streaks
  
* **Core Experience**
  
  * **Question Interface**: Minimalist design with focus on question text, clear answer options, and non-intrusive timing
  * **Feedback States**: Green checkmarks for correct answers, red X for incorrect, with gentle haptic feedback
  * **Explanation Modal**: Expandable content area with tabbed interface for text explanations, videos, and AI chat
  * **Progress Indicators**: Circular progress rings showing session completion with satisfying fill animations
* **Advanced Users & Edge Cases**
  
  * **Offline Synchronization**: Cached questions with background sync indicators and conflict resolution
  * **Connection Loss**: Graceful degradation with saved progress and resume functionality
  * **Multiple Attempts**: Visual attempt indicators (circles filling up) with performance tracking per attempt
  * **Accessibility**: Screen reader support, high contrast mode, and keyboard navigation for all interactions

* * *

### Sprint Exams & Simulated Real Exams

#### Realistic Exam Environment

* **User Stories**
  * As an exam-anxious student, I want realistic practice conditions, so that I can build confidence for the real exam
  * As a strategic student, I want to configure custom sprint exams, so that I can focus on specific weaknesses
  * As a time-pressured student, I want accurate timing simulation, so that I can practice time management
  * As a performance tracker, I want detailed analytics after exams, so that I can identify improvement areas

#### UX/UI Considerations

**Step-by-step User Journey:**

* User selects exam type with clear differentiation between Sprint (custom) and SRE (real exam replica)
  
* Configuration screen shows intuitive sliders for question count, time limits, and difficulty distribution
  
* Pre-exam checklist ensures user understands requirements: "Stay connected throughout exam"
  
* Exam interface enters distraction-free mode with prominent timer and question navigator
  
* Post-exam analytics show comprehensive performance breakdown with actionable insights
  
* **Core Experience**
  
  * **Exam Setup**: Visual configuration interface with real-time preview of selected parameters
  * **Exam Environment**: Full-screen mode with minimal UI, prominent timer, and clear navigation controls
  * **Timer Interface**: Large, readable countdown with color transitions (green → yellow → red) as time decreases
  * **Results Dashboard**: Interactive charts showing time per question, accuracy trends, and topic performance
* **Advanced Users & Edge Cases**
  
  * **Connection Monitoring**: Real-time connection status with graceful recovery from brief disconnections
  * **Browser Restrictions**: Preventing tab switching and other cheating behaviors during exam mode
  * **Emergency Situations**: Pause functionality for genuine emergencies with admin override capabilities
  * **Performance Optimization**: Efficient question loading to prevent delays during timed exams

* * *

### AI-Powered Tutoring & Explanation System

#### Intelligent Learning Assistant

* **User Stories**
  * As a confused student, I want to ask follow-up questions about explanations, so that I can truly understand concepts
  * As a deep learner, I want the AI to remember our previous discussions, so that conversations build on each other
  * As a fair-use conscious user, I want to see my explanation limits, so that I can use them strategically
  * As a premium user, I want unlimited access to AI tutoring, so that I can get help whenever needed

#### UX/UI Considerations

**Step-by-step User Journey:**

* User answers question incorrectly and sees explanation with "Chat with AI Tutor" button
  
* AI chat interface opens with context about the specific question and user's answer
  
* Conversation maintains context across multiple exchanges with clear conversation boundaries
  
* Usage indicator shows remaining explanations with elegant countdown and upgrade prompts
  
* AI responses include relevant examples and check for understanding
  
* **Core Experience**
  
  * **Chat Interface**: WhatsApp-style conversation with clear AI vs user message distinction
  * **Context Indicators**: Subtle visual cues showing which question/topic the conversation relates to
  * **Usage Tracking**: Non-intrusive progress indicators showing explanation limits with tier upgrade options
  * **Response Quality**: Typing indicators, smooth message delivery, and error recovery for failed requests
* **Advanced Users & Edge Cases**
  
  * **Context Management**: When approaching token limits, graceful conversation summarization and continuation
  * **Multi-Question Discussions**: Clear visual separation when conversations span multiple questions
  * **Content Moderation**: Automatic filtering of inappropriate content with human review escalation

* * *

### Analytics & Performance Tracking Engine

#### Comprehensive Learning Insights

* **User Stories**
  * As a data-driven student, I want detailed performance analytics, so that I can optimize my study strategy
  * As a progress tracker, I want to see improvement over time, so that I can stay motivated
  * As a strategic learner, I want ARDE probability performance data, so that I can focus on high-value questions
  * As an export-minded user, I want to download my data, so that I can analyze it externally

#### UX/UI Considerations

**Step-by-step User Journey:**

* User accesses analytics dashboard with clear overview cards showing key metrics
  
* Interactive charts allow drilling down into specific time periods and subjects
  
* Performance insights highlight patterns: "You're 23% faster on Physics questions this week"
  
* ARDE probability analysis shows strategic recommendations for exam preparation
  
* Export functionality provides CSV/PDF reports with customizable date ranges and metrics
  
* **Core Experience**
  
  * **Dashboard Overview**: Card-based layout with key performance indicators and trend sparklines
  * **Interactive Charts**: Touch-responsive graphs with zoom, pan, and detail-on-demand functionality
  * **Insight Cards**: AI-generated insights presented as digestible cards with actionable recommendations
  * **Time Range Selection**: Intuitive date picker with preset ranges (Last 7 days, This month, etc.)
* **Advanced Users & Edge Cases**
  
  * **Data Visualization**: Responsive charts that work well on mobile with appropriate touch targets
  * **Performance Optimization**: Efficient data loading with progressive enhancement and caching
  * **Data Privacy**: Clear data retention policies with user control over data deletion
  * **Cross-Device Sync**: Seamless analytics sync across all user devices with conflict resolution

* * *

### Social Features & Community Platform

#### Collaborative Learning Environment

* **User Stories**
  * As a competitive student, I want to see leaderboards, so that I can measure myself against peers
  * As a study group member, I want to track our collective progress, so that we can support each other
  * As a motivated learner, I want to participate in challenges, so that I can stay engaged
  * As a social learner, I want to share achievements, so that I can celebrate progress with friends

#### UX/UI Considerations

**Step-by-step User Journey:**

* User creates or joins study groups with clear privacy settings and member management
  
* Leaderboard interface shows rankings with user-configurable opt-out setting (default: opt-in) and achievement badges
  
* Group dashboard displays collective progress with individual contributions visible to members
  
* Challenge participation shows progress tracking with social celebration of milestones
  
* Achievement sharing generates beautiful social media cards with personal statistics
  
* **Core Experience**
  
  * **Leaderboards**: Clean ranking interface with user's position highlighted and user-configurable opt-out setting (default: opt-in for app-wide leaderboards)
  * **Group Management**: Intuitive member invitation system with role-based permissions and explicit consent for joining competitive peer groups
  * **Challenge Interface**: Engaging progress tracking with team vs individual challenge options
  * **Achievement System**: Celebration animations with shareable badge collection
* **Advanced Users & Edge Cases**
  
  * **Privacy Controls**: Granular privacy settings with app-wide leaderboard opt-out option (default: opt-in) and explicit consent required for study group participation
  * **Moderation Tools**: Automated content filtering with human review for inappropriate behavior
  * **Cross-Timezone Coordination**: Smart scheduling for global study groups with timezone awareness
  * **Performance Impact**: Efficient social features that don't impact core learning experience performance

* * *

### Subscription Management & Monetization

#### Seamless Upgrade Experience

* **User Stories**
  * As a trial user, I want clear upgrade prompts, so that I understand the value of premium features
  * As a paying customer, I want transparent billing, so that I know exactly what I'm paying for
  * As a subscription manager, I want easy payment method updates, so that I can avoid service interruptions
  * As a grace period user, I want clear communication about my status, so that I can make informed decisions

#### UX/UI Considerations

**Step-by-step User Journey:**

* User encounters gentle upgrade prompts when approaching usage limits
  
* Paddle.com integration provides secure, localized payment processing with multiple payment methods
  
* Subscription dashboard shows clear billing history, next payment date, and usage statistics
  
* Grace period interface shows countdown with clear action items and payment options
  
* Downgrade flow preserves data while clearly communicating feature restrictions
  
* **Core Experience**
  
  * **Upgrade Flow**: Seamless integration with Paddle.com maintaining app design consistency
  * **Billing Dashboard**: Clean interface showing subscription status, usage, and payment history
  * **Grace Period Indicators**: Prominent but non-intrusive countdown with clear resolution steps
  * **Feature Gating**: Elegant blocking screens that educate rather than frustrate users
* **Advanced Users & Edge Cases**
  
  * **Payment Failures**: Graceful error handling with multiple retry options and support escalation
  * **Regional Pricing**: Automatic currency and pricing adjustments based on user location
  * **Subscription Changes**: Mid-cycle upgrades/downgrades with prorated billing calculations
  * **Tax Compliance**: Automatic tax calculation and receipt generation for business users

* * *

### Device Management & Account Settings (Registered Users Only)

#### Comprehensive Device Control for Registered Users

* **User Stories**
  * As a registered multi-device user, I want to see all my connected devices, so that I can manage my account security
  * As a registered security-conscious user, I want to customize device names, so that I can easily identify them
  * As a registered browser user, I want my desktop treated as one device, so that I don't waste device slots
  * As a registered device manager, I want real-time status updates, so that I know which devices are active

#### UX/UI Considerations

**Step-by-step User Journey:**

* Registered user accesses device management from account settings with clear overview of all registered devices
  
* Device cards show custom names, device types, browser sessions, and last active timestamps
  
* Real-time status indicators update across all devices when changes occur
  
* Device removal triggers immediate logout with cross-device notifications
  
* Browser consolidation shows expandable session details with individual management options
  
* **Core Experience**
  
  * **Device Registry**: Card-based interface with clear device identification and status indicators (registered users only)
  * **Real-time Updates**: Live status changes with smooth animations and immediate cross-device sync (registered users only)
  * **Browser Sessions**: Expandable device cards showing individual browser sessions with management controls (registered users only)
  * **Security Alerts**: Immediate notifications for new device additions with approval workflows (registered users only)
* **Advanced Users & Edge Cases**
  
  * **Automatic Device Consolidation**: When fingerprint similarity >85% detected, system automatically treats devices as same device without user intervention (registered users only)
  * **Emergency Access**: Account recovery options for registered users locked out due to device management issues
  * **Session Security**: Automatic logout on suspicious activity with re-authentication requirements (registered users only)
  * **Cross-Platform Consistency**: Unified device management experience across mobile and web platforms (registered users only)

#### Anonymous User Device Limitations

* **Core Experience**
  * **No Device Management Interface**: Anonymous users have no access to device management features
  * **Single Device Experience**: All functionality tied to current device with clear messaging about limitations
  * **No Cross-Device Notifications**: No push notifications or device status tracking for anonymous users
  * **Upgrade Incentive**: Clear messaging about device management benefits when registering for an account

* * *

### Account Recovery & Security Management

#### Comprehensive Recovery System

* **User Stories**
  * As a forgetful user, I want to reset my password easily, so that I can regain access to my account
  * As a locked-out user, I want multiple recovery options, so that I can recover my account even if I lose access to my email/phone
  * As a security-conscious user, I want to know when someone attempts to access my account, so that I can protect my data
  * As a device-limited user, I want emergency account access, so that I can manage my devices when locked out
  * As a compromised user, I want to secure my account quickly, so that I can prevent unauthorized access

#### UX/UI Considerations

**Step-by-step User Journey:**

* User attempts login and selects "Forgot Password" with multiple recovery method options
  
* System provides step-by-step recovery process with clear progress indicators and estimated completion times
  
* Multi-factor verification through email, SMS, and security questions with fallback options
  
* Emergency recovery flow for users locked out due to device limits or compromised accounts
  
* Post-recovery security review showing recent login attempts and recommended security actions
  
* **Core Experience**
  
  * **Recovery Initiation**: Clean interface with multiple recovery options (email, phone, security questions, emergency contact)
  * **Progress Tracking**: Step-by-step wizard with clear completion indicators and time estimates
  * **Verification Methods**: Multiple verification channels with user choice and fallback options
  * **Security Dashboard**: Post-recovery overview of account security status with recommended actions
* **Advanced Users & Edge Cases**
  
  * **Device Limit Lockout**: Emergency recovery flow when all 3 devices are lost/compromised
  * **Compromised Account**: Rapid security lockdown with admin intervention capabilities
  * **Multiple Failed Attempts**: Progressive security measures with cooling-off periods
  * **Cross-Platform Recovery**: Seamless recovery experience across mobile and web platforms

* * *

### Content Quality Assurance & Support System

#### Collaborative Quality Management

* **User Stories**
  * As a quality-focused student, I want to report incorrect questions, so that content accuracy improves
  * As a content creator, I want to see user feedback, so that I can prioritize improvements
  * As a support user, I want multiple contact methods, so that I can get help when needed
  * As an admin, I want efficient review workflows, so that I can maintain content quality

#### UX/UI Considerations

**Step-by-step User Journey:**

* User encounters questionable content and uses in-app reporting with categorized issue types
  
* Reporting interface allows detailed feedback with screenshot capabilities and context preservation
  
* Support system provides multiple contact options with expected response time indicators
  
* Admin dashboard shows prioritized issues with batch processing capabilities
  
* User feedback loop provides updates on reported issues with resolution confirmations
  
* **Core Experience**
  
  * **Issue Reporting**: Contextual reporting interface with smart categorization and evidence collection
  * **Support Channels**: Multi-channel support access with appropriate escalation paths
  * **Feedback Loop**: Transparent issue tracking with user notifications about resolution progress
  * **Quality Metrics**: Dashboard showing content quality scores and improvement trends
* **Advanced Users & Edge Cases**
  
  * **Bulk Issue Handling**: Efficient admin tools for processing multiple similar reports
  * **False Positive Management**: Smart filtering to identify and handle incorrect user reports
  * **Emergency Escalation**: Priority handling for critical content errors affecting exam preparation
  * **Community Moderation**: User reputation system for trusted community contributors

* * *

## Key Integration Points & Cross-Feature Considerations

### Question Selection Algorithm (QSA) - Future Development Priority 🚩

**Strategic Importance**: This algorithm will be the heart of EntryTestGuru's competitive advantage, determining which questions users see based on:

* ARDE probability weightings
* Individual performance patterns
* Time until exam date
* Learning velocity and retention rates
* Optimal challenge curve for sustained engagement

**Recommended Approach**: Develop machine learning model that balances:

1. **Immediate Value**: High ARDE probability questions for exam success
2. **Learning Efficiency**: Spaced repetition for knowledge retention
3. **Engagement**: Appropriate difficulty progression to maintain motivation
4. **Personalization**: Adaptive selection based on individual learning patterns

### Performance Data Visibility Guidelines

**Recommended Social Analytics Sharing Levels**:

* **Public Leaderboards**: Overall scores, streaks, and achievements only
* **Study Groups**: Detailed topic performance, study time, and progress trends
* **Individual Profiles**: Full analytics access with export capabilities
* **Competitive Challenges**: Challenge-specific metrics with temporary visibility

### Offline Capability Strategy

**Recommended Implementation**:

* **Smart Caching**: Pre-load questions based on user patterns and preferences
* **Sync Indicators**: Clear visual feedback about online/offline status and sync progress
* **Conflict Resolution**: Graceful handling of offline progress when returning online
* **Storage Management**: Intelligent cache cleanup to manage device storage efficiently

"

<!-- #endregion -->
