import 'package:commerce_flutter_storefront/features/banner/presentation/widgets/hero_banner_carousel.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/widgets/hero_banner_skeleton.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/providers/banner_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeHeroSection extends ConsumerWidget {
  const HomeHeroSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banners = ref.watch(homepageHeroProvider);

    return banners.when(
      data: (data) => HeroBannerCarousel(banners: data),
      loading: () => const HeroBannerSkeleton(),
      error: (error, _) => Center(child: Text(error.toString())),
    );
  }
}
