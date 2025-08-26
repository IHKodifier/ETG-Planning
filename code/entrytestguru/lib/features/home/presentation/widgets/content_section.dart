import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../widgets/app_button.dart';
import '../../../../widgets/app_card.dart';
import '../../../../widgets/arde_badge.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/utils/responsive_utils.dart';

class ContentSection extends ConsumerWidget {
  const ContentSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: ResponsiveUtils.getMaxContentWidth(context),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveUtils.getResponsivePadding(context),
        vertical: AppDimensions.space12,
      ),
      child: Center(
        child: Column(
          children: [
            _buildMainContent(context),
            const SizedBox(height: AppDimensions.space12),
            _buildHeroVisual(context),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      child: Column(
        children: [
          SelectableText(
            'Surgical Precision Exam Prep for Maximum Impact.',
            style: ResponsiveUtils.isDesktop(context)
                ? Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 48,
                    fontWeight: FontWeight.w800,
                    height: 1.25,
                  )
                : Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    height: 1.2,
                  ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.space6),
          SelectableText(
            'Master entrance exams with Actual Exam probability tracking for each questions. Get personalized study plans that adapt to your learning patterns.',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).textTheme.bodyMedium?.color,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.space8),
          _buildContentButtons(),
        ],
      ),
    );
  }

  Widget _buildContentButtons() {
    return Wrap(
      spacing: AppDimensions.space4,
      runSpacing: AppDimensions.space3,
      alignment: WrapAlignment.center,
      children: [
        AppButton(text: 'Start Learning for Free', onPressed: () {}),
        AppButton(
          text: 'Watch Demo',
          type: ButtonType.outline,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildHeroVisual(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 900),
      child: AppCard(
        elevation: 8,
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.space8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatCard(context, '10K+', 'Practice Questions'),
                  _buildStatCard(context, '95%', 'Success Rate'),
                  _buildStatCard(context, '500+', 'Happy Students'),
                ],
              ),
              const SizedBox(height: AppDimensions.space6),
              Wrap(
                spacing: AppDimensions.space3,
                runSpacing: AppDimensions.space2,
                alignment: WrapAlignment.center,
                children: const [
                  ArdeBadge(probability: ArdeProbability.high),
                  ArdeBadge(probability: ArdeProbability.medium),
                  ArdeBadge(probability: ArdeProbability.low),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String number, String label) {
    return Column(
      children: [
        SelectableText(
          number,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SelectableText(
          label,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
