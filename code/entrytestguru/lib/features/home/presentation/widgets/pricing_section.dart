import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../widgets/app_button.dart';
import '../../../../widgets/app_card.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/utils/responsive_utils.dart';

class PricingSection extends ConsumerWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: ResponsiveUtils.getMaxContentWidth(context),
      ),
      padding: EdgeInsets.all(ResponsiveUtils.getResponsivePadding(context)),
      child: Column(
        children: [
          const SizedBox(height: AppDimensions.space12),
          _buildSectionTitle(context),
          const SizedBox(height: AppDimensions.space3),
          _buildSectionSubtitle(context),
          const SizedBox(height: AppDimensions.space8),
          _buildPricingCards(context),
          const SizedBox(height: AppDimensions.space12),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context) {
    return SelectableText(
      'Choose your learning journey',
      style: Theme.of(
        context,
      ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w700),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSectionSubtitle(BuildContext context) {
    return SelectableText(
      'Start for free, upgrade when you need more',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        color: Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildPricingCards(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (ResponsiveUtils.isDesktop(context)) {
          return Row(
            children: [
              Expanded(
                child: _buildPricingCard(
                  context,
                  'Anonymous',
                  'Try for free',
                  'No signup required',
                  UserTier.anonymous,
                  false,
                ),
              ),
              const SizedBox(width: AppDimensions.space4),
              Expanded(
                child: _buildPricingCard(
                  context,
                  'Free',
                  'Free forever',
                  'Basic features included',
                  UserTier.free,
                  false,
                ),
              ),
              const SizedBox(width: AppDimensions.space4),
              Expanded(
                child: _buildPricingCard(
                  context,
                  'Premium',
                  '\$9.99/month',
                  'Full ARDE Intelligence',
                  UserTier.paid,
                  true,
                ),
              ),
            ],
          );
        } else {
          return Column(
            children: [
              _buildPricingCard(
                context,
                'Anonymous',
                'Try for free',
                'No signup required',
                UserTier.anonymous,
                false,
              ),
              const SizedBox(height: AppDimensions.space4),
              _buildPricingCard(
                context,
                'Free',
                'Free forever',
                'Basic features included',
                UserTier.free,
                false,
              ),
              const SizedBox(height: AppDimensions.space4),
              _buildPricingCard(
                context,
                'Premium',
                '\$9.99/month',
                'Full ARDE Intelligence',
                UserTier.paid,
                true,
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildPricingCard(
    BuildContext context,
    String tier,
    String price,
    String description,
    UserTier userTier,
    bool isPopular,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: isPopular
            ? Border.all(color: AppColors.primary500, width: 2)
            : null,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      ),
      child: AppCard(
        elevation: isPopular ? 8 : 2,
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.space6),
          child: Column(
            children: [
              if (isPopular) ...[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.space3,
                    vertical: AppDimensions.space1,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary600,
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusSmall,
                    ),
                  ),
                  child: SelectableText(
                    'MOST POPULAR',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: AppDimensions.space4),
              ],
              Icon(
                _getTierIcon(userTier),
                size: 48,
                color: _getTierColor(userTier),
              ),
              const SizedBox(height: AppDimensions.space3),
              SelectableText(
                tier,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppDimensions.space2),
              SelectableText(
                price,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: _getTierColor(userTier),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: AppDimensions.space2),
              SelectableText(
                description,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDimensions.space4),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: _getTierButtonText(userTier),
                  userTier: userTier,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getTierIcon(UserTier userTier) {
    switch (userTier) {
      case UserTier.anonymous:
        return Icons.person_outline;
      case UserTier.free:
        return Icons.person;
      case UserTier.paid:
        return Icons.star;
    }
  }

  Color _getTierColor(UserTier userTier) {
    switch (userTier) {
      case UserTier.anonymous:
        return AppColors.anonymousPrimary;
      case UserTier.free:
        return AppColors.freePrimary;
      case UserTier.paid:
        return AppColors.paidPrimary;
    }
  }

  String _getTierButtonText(UserTier userTier) {
    switch (userTier) {
      case UserTier.anonymous:
        return 'Try Now';
      case UserTier.free:
        return 'Sign Up Free';
      case UserTier.paid:
        return 'Upgrade Now';
    }
  }
}
