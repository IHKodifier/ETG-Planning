// lib/widgets/features_section.dart
import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});
  //pointless comment added to enable pushing to remote
  //"fix: DR successfully recovered, Firebase config and landing page branch merging catastrophe"
  //
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final isDesktop = screenSize.width > 1024;
    final isTablet = screenSize.width > 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 64 : 16,
        vertical: 80,
      ),
      child: Column(
        children: [
          SelectableText(
            'Integrated solutions designed for small business',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,

              // textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 64),
          _buildFeatureGrid(context),
        ],
      ),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isDesktop = screenSize.width > 1024;
    final isTablet = screenSize.width > 768;

    final features = [
      _FeatureData(
        icon: Icons.speed,
        title: 'Fast & Reliable',
        description:
            'Lightning-fast performance with 99.9% uptime guarantee for your critical business operations.',
      ),
      _FeatureData(
        icon: Icons.security,
        title: 'Secure & Private',
        description:
            'Enterprise-grade security with end-to-end encryption to protect your sensitive data.',
      ),
      _FeatureData(
        icon: Icons.analytics,
        title: 'Advanced Analytics',
        description:
            'Powerful analytics tools with real-time insights and customizable reporting dashboards.',
      ),
    ];

    if (isDesktop) {
      return Row(
        children: features
            .map(
              (feature) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: _buildFeatureCard(context, feature),
                ),
              ),
            )
            .toList(),
      );
    } else {
      return Column(
        children: features
            .map(
              (feature) => Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: _buildFeatureCard(context, feature),
              ),
            )
            .toList(),
      );
    }
  }

  Widget _buildFeatureCard(BuildContext context, _FeatureData feature) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.outline.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              feature.icon,
              size: 40,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 24),
          SelectableText(
            feature.title,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          SelectableText(
            feature.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withOpacity(0.7),
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _FeatureData {
  final IconData icon;
  final String title;
  final String description;

  _FeatureData({
    required this.icon,
    required this.title,
    required this.description,
  });
}
