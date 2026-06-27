import 'dart:async';

import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/utils/image_utils.dart';
import 'package:commerce_flutter_storefront/features/banner/data/models/hero_banner.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HeroBannerCarousel extends StatefulWidget {
  const HeroBannerCarousel({super.key, required this.banners});

  final List<HeroBanner> banners;

  @override
  State<HeroBannerCarousel> createState() => _HeroBannerCarouselState();
}

class _HeroBannerCarouselState extends State<HeroBannerCarousel> {
  late final PageController _controller;
  late final ValueNotifier<int> _currentIndex;

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _controller = PageController();
    _currentIndex = ValueNotifier(0);

    _startAutoPlay();
  }

  @override
  void didUpdateWidget(covariant HeroBannerCarousel oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.banners == widget.banners) {
      return;
    }

    _currentIndex.value = 0;

    if (_controller.hasClients) {
      _controller.jumpToPage(0);
    }

    _startAutoPlay();
  }

  void _startAutoPlay() {
    _timer?.cancel();

    if (widget.banners.length <= 1) {
      return;
    }

    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (!_controller.hasClients) return;

      final nextIndex = (_currentIndex.value + 1) % widget.banners.length;

      _controller.animateToPage(
        nextIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    });
  }

  void _stopAutoPlay() {
    _timer?.cancel();
    _timer = null;
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (notification is ScrollStartNotification &&
        notification.dragDetails != null) {
      _stopAutoPlay();
    }

    if (notification is ScrollEndNotification) {
      _startAutoPlay();
    }

    return false;
  }

  @override
  void dispose() {
    _stopAutoPlay();
    _controller.dispose();
    _currentIndex.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 3 / 1,
              child: NotificationListener<ScrollNotification>(
                onNotification: _onScrollNotification,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: widget.banners.length,
                  onPageChanged: (index) {
                    _currentIndex.value = index;
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
                      child: Skeleton.replace(
                        child: Image.network(
                          ImageUtils.buildUrl(banner.imageKey),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),

        if (widget.banners.length > 1) ...[
          const SizedBox(height: 12),

          ValueListenableBuilder<int>(
            valueListenable: _currentIndex,
            builder: (_, currentIndex, _) {
              return _BannerIndicator(
                currentIndex: currentIndex,
                length: widget.banners.length,
              );
            },
          ),
        ],
      ],
    );
  }
}

class _BannerIndicator extends StatelessWidget {
  const _BannerIndicator({required this.currentIndex, required this.length});

  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(length, (index) {
        final isActive = currentIndex == index;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: isActive ? 22 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: isActive ? 1 : 0.25),
            borderRadius: BorderRadius.circular(999),
          ),
        );
      }),
    );
  }
}
