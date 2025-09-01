import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/theme_provider.dart';
import 'app_logo.dart';

// import '../../../../core/theme/app_colors.dart';

class AppBar extends ConsumerWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDesktop = MediaQuery.of(context).size.width > 768;
    final themeMode = ref.watch(themeProvider);

    return SliverAppBar(
      floating: true,
      pinned: false,
      expandedHeight: 60,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 64 : 16,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.outline.withOpacity(0.1),
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              // Logo
              const AppLogo(),

              const Spacer(),

              if (isDesktop) ...[
                // Navigation Items
                _buildNavItem(context, 'Home', true),
                _buildNavItem(context, 'About', false),
                _buildNavItem(context, 'Services', false),
                _buildNavItem(context, 'Portfolio', false),
                _buildNavItem(context, 'Blog', false),
                _buildNavItem(context, 'Contact', false),

                const SizedBox(width: 24),

                // Theme Toggle
                PopupMenuButton<ThemeMode>(
                  icon: Icon(
                    theme.brightness == Brightness.light
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined,
                    color: theme.colorScheme.onSurface,
                  ),
                  onSelected: (ThemeMode value) {
                    ref.read(themeProvider.notifier).setTheme(value);
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem<ThemeMode>(
                      value: ThemeMode.light,
                      child: Row(
                        children: [
                          Icon(Icons.light_mode),
                          SizedBox(width: 8),
                          Text('Light Theme'),
                        ],
                      ),
                    ),
                    PopupMenuItem<ThemeMode>(
                      value: ThemeMode.dark,
                      child: Row(
                        children: [
                          Icon(Icons.dark_mode),
                          SizedBox(width: 8),
                          Text('Dark Theme'),
                        ],
                      ),
                    ),
                    PopupMenuItem<ThemeMode>(
                      value: ThemeMode.system,
                      child: Row(
                        children: [
                          Icon(Icons.brightness_auto),
                          SizedBox(width: 8),
                          Text('System Theme'),
                        ],
                      ),
                    ),
                  ],
                ),
              ] else ...[
                // Mobile menu button
                IconButton(
                  onPressed: () {
                    // Mobile menu functionality
                  },
                  icon: Icon(Icons.menu, color: theme.colorScheme.onSurface),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String title, bool isActive) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: isActive
              ? theme.colorScheme.primary
              : theme.colorScheme.onSurface,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        child: Text(
          title,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
