import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../widgets/app_card.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/utils/responsive_utils.dart';

class FeaturesSection extends ConsumerWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.grey.shade50
          : Theme.of(context).colorScheme.surface.withOpacity(0.3),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: ResponsiveUtils.getMaxContentWidth(context),
        ),
        padding: EdgeInsets.all(ResponsiveUtils.getResponsivePadding(context)),
        child: Column(
          children: [
            const SizedBox(height: AppDimensions.space12),
            _buildSectionTitle(context),
            const SizedBox(height: AppDimensions.space8),
            _buildFeaturesGrid(context),
            const SizedBox(height: AppDimensions.space12),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context) {
    return SelectableText(
      'Everything you need to ace your entrance exams',
      style: Theme.of(
        context,
      ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w700),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildFeaturesGrid(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: ResponsiveUtils.getGridColumns(context),
          mainAxisSpacing: AppDimensions.space6,
          crossAxisSpacing: AppDimensions.space6,
          childAspectRatio: ResponsiveUtils.isDesktop(context) ? 1.1 : 1.0,
          children: [
            _buildFeatureCard(
              context,
              'ARDE Intelligence',
              'AI-powered question probability tracking that learns from your progress',
              Icons.psychology_outlined,
              AppColors.primary600,
            ),
            _buildFeatureCard(
              context,
              'Smart Analytics',
              'Detailed insights into your performance with personalized recommendations',
              Icons.analytics_outlined,
              AppColors.freePrimary,
            ),
            _buildFeatureCard(
              context,
              'Adaptive Testing',
              'Dynamic mock tests that adjust to your skill level and learning pace',
              Icons.quiz_outlined,
              AppColors.paidPrimary,
            ),
            _buildFeatureCard(
              context,
              'Progress Tracking',
              'Visual progress reports to keep you motivated and on track',
              Icons.trending_up_outlined,
              AppColors.ardeHigh,
            ),
          ],
        );
      },
    );
  }

  Widget _buildFeatureCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    Color accentColor,
  ) {
    return AppCard(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.space6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(AppDimensions.space3),
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              ),
              child: Icon(icon, size: 24, color: accentColor),
            ),
            const SizedBox(height: AppDimensions.space4),
            SelectableText(
              title,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: AppDimensions.space2),
            SelectableText(
              description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).textTheme.bodySmall?.color,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
