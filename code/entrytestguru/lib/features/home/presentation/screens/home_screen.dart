import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/widgets.dart';
import '../../../../core/providers/image_cache_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the hero image cache provider
    final heroImageCached = ref.watch(heroImageCachedProvider);

    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),

          SliverToBoxAdapter(child: HeroSection()),

          SliverToBoxAdapter(child: ContentSection()),

          SliverToBoxAdapter(child: FeaturesSection()),

          SliverToBoxAdapter(child: PricingSection()),
        ],
      ),
    );
  }
}
