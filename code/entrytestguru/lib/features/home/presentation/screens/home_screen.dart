// lib/screens/landing_page.dart
import 'package:flutter/material.dart' hide AppBar;
import '../../../../widgets/app_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/features_section.dart';
import '../widgets/benefits_section.dart';
import '../widgets/pricing_section.dart';
import '../widgets/testimonial_section.dart';
import '../widgets/team_section.dart';
import '../widgets/gallery_section.dart';
import '../widgets/analytics_section.dart';
import '../widgets/blog_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer_section.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: const [
          AppBar(),
          SliverToBoxAdapter(child: HeroSection()),
          SliverToBoxAdapter(child: FeaturesSection()),
          SliverToBoxAdapter(child: BenefitsSection()),
          SliverToBoxAdapter(child: PricingSection()),
          SliverToBoxAdapter(child: TestimonialSection()),
          SliverToBoxAdapter(child: TeamSection()),
          SliverToBoxAdapter(child: GallerySection()),
          SliverToBoxAdapter(child: AnalyticsSection()),
          SliverToBoxAdapter(child: BlogSection()),
          SliverToBoxAdapter(child: ContactSection()),
          SliverToBoxAdapter(child: FooterSection()),
        ],
      ),
    );
  }
}
