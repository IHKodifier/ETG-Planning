import 'package:entrytestguru/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../widgets/app_button.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/responsive_utils.dart';

class HeroSection extends ConsumerWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: ResponsiveUtils.isDesktop(context) ? 500 : 400,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary600.withValues(alpha: 0.8),
            AppColors.primary600.withValues(alpha: 0.9),
            AppColors.primary700.withValues(alpha: 0.7),
            AppColors.primary900.withValues(alpha: 1),
          ],
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/exam_hero_bg.webp'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black54],
          ),
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: ResponsiveUtils.getMaxContentWidth(context),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveUtils.getResponsivePadding(context),
              vertical: AppDimensions.space12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildHeroTitle(context),
                const SizedBox(height: AppDimensions.space6),
                _buildHeroSubtitle(context),
                const SizedBox(height: AppDimensions.space8),
                _buildHeroButtons(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeroTitle(BuildContext context) {
    return SelectableText(
      'Entrance Exam preparation with SURGICAL PRECISION',
      style: ResponsiveUtils.isDesktop(context)
          ? Theme.of(context).textTheme.displayLarge?.copyWith(
              fontSize: 56,
              fontWeight: FontWeight.w900,
              height: 1.55,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: const Offset(0, 2),
                  blurRadius: 8,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ],
            )
          : Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 36,
              fontWeight: FontWeight.w800,
              height: 1.2,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildHeroSubtitle(BuildContext context) {
    return SelectableText(
      'AI-Powered Learning with Real Exam Probability Tracking',
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontSize: ResponsiveUtils.isDesktop(context) ? 24 : 20,
        fontWeight: FontWeight.w400,
        height: 1.4,
        color: Colors.white.withOpacity(0.95),
        shadows: [
          Shadow(
            offset: const Offset(0, 1),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildHeroButtons(BuildContext context) {
    return Wrap(
      spacing: AppDimensions.space4,
      runSpacing: AppDimensions.space3,
      alignment: WrapAlignment.center,
      children: [
        AppButton(
          text: 'Start Learning Now',
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
        ),
        AppButton(
          text: 'Take Free Demo',
          type: ButtonType.outline,
          onPressed: () {},
        ),
      ],
    );
  }
}
