// lib/widgets/hero_section.dart
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final isDesktop = screenSize.width > 768;
    final isTablet = screenSize.width > 576 && screenSize.width <= 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 64 : 16,
        vertical: isDesktop ? 80 : 40,
      ),
      child: Column(
        children: [
          if (isDesktop)
            Row(
              children: [
                Expanded(flex: 6, child: _buildContent(context)),
                const SizedBox(width: 64),
                Expanded(flex: 4, child: _buildIllustration(context)),
              ],
            )
          else
            Column(
              children: [
                _buildContent(context),
                const SizedBox(height: 40),
                _buildIllustration(context),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final theme = Theme.of(context);
    final isDesktop = MediaQuery.of(context).size.width > 768;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome To Essentials.',
          style: theme.textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
            fontSize: isDesktop ? 48 : 32,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'The World\'s Most Powerful Business Intelligence Tool.',
          style: theme.textTheme.headlineSmall?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w600,
            fontSize: isDesktop ? 28 : 20,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'Transform your business with cutting-edge analytics and insights. Our platform provides comprehensive data visualization and reporting tools to help you make informed decisions.',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurface.withOpacity(0.7),
            height: 1.6,
          ),
        ),
        const SizedBox(height: 32),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(width: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: theme.colorScheme.primary,
                side: BorderSide(color: theme.colorScheme.primary),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Learn More',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildIllustration(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.outline.withOpacity(0.2)),
      ),
      child: Stack(
        children: [
          // Background elements
          Positioned(
            top: 40,
            left: 40,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: theme.colorScheme.tertiary.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 60,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          // Central illustration placeholder
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.analytics_outlined,
                  size: 80,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  'Business Intelligence',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
