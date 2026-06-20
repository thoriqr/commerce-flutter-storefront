import 'dart:async';

import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/banner/data/models/hero_banner.dart';
import 'package:commerce_flutter_storefront/features/banner/presentation/widgets/banner_indicator.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeroBannerCarousel extends StatefulWidget {
  const HeroBannerCarousel({super.key, required this.banners});

  final List<HeroBanner> banners;

  @override
  State<HeroBannerCarousel> createState() => _HeroBannerCarouselState();
}

class _HeroBannerCarouselState extends State<HeroBannerCarousel> {
  late final PageController _controller;

  Timer? _timer;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller = PageController();

    _startAutoPlay();
  }

  void _startAutoPlay() {
    if (widget.banners.length <= 1) return;

    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (!_controller.hasClients) return;

      final nextIndex = (_currentIndex + 1) % widget.banners.length;

      _controller.animateToPage(
        nextIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 3 / 1,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: widget.banners.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (_, index) {
                    final banner = widget.banners[index];

                    return GestureDetector(
                      onTap: () {
                        final source = switch (banner.targetType) {
                          BannerTargetType.collection =>
                            ProductSource.collection(banner.targetValue),
                          BannerTargetType.category => ProductSource.category(
                            banner.targetValue,
                          ),
                        };

                        context.push(AppRoutes.products, extra: source);
                      },
                      child: Image.network(
                        ImageUtils.buildUrl(banner.imageKey),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),

        BannerIndicator(
          currentIndex: _currentIndex,
          length: widget.banners.length,
        ),
      ],
    );
  }
}
