import 'package:commerce_flutter_storefront/features/banner/presentation/providers/banner_provider.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/widgets/hero_banner_carousel.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/widgets/hero_banner_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banners = ref.watch(homepageHeroProvider);

    return banners.when(
      data: (data) {
        return ListView(children: [HeroBannerCarousel(banners: data)]);
      },
      error: (error, stack) => Center(child: Text(error.toString())),
      loading: () => const HeroBannerSkeleton(),
    );
  }
}
