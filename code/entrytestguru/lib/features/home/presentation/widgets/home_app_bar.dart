import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../widgets/theme_switcher.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/utils/responsive_utils.dart';
import '../../../../core/services/auth_service.dart';

class HomeAppBar extends ConsumerWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return SliverAppBar(
      expandedHeight: 80,
      floating: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: EdgeInsets.symmetric(
          horizontal: ResponsiveUtils.getResponsivePadding(context),
          vertical: AppDimensions.space3,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectableText(
              'EntryTestGuru',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // User info and sign out
                authState.when(
                  data: (user) {
                    if (user != null) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (user.email != null)
                            Flexible(
                              child: Text(
                                user.email!,
                                style: Theme.of(context).textTheme.bodySmall,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          else
                            Text(
                              'Guest',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          const SizedBox(width: 8),
                          IconButton(
                            onPressed: () => _signOut(ref, context),
                            icon: const Icon(Icons.logout),
                            tooltip: 'Sign Out',
                            iconSize: 20,
                          ),
                        ],
                      );
                    }
                    return const SizedBox.shrink();
                  },
                  loading: () => const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  error: (_, __) => const SizedBox.shrink(),
                ),
                const SizedBox(width: 8),
                const ThemeSwitcher(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _signOut(WidgetRef ref, BuildContext context) async {
    try {
      final authService = ref.read(authServiceProvider);
      await authService.signOut();
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to sign out: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
