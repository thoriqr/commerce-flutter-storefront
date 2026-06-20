import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerIndicator extends StatelessWidget {
  const BannerIndicator({
    super.key,
    required this.currentIndex,
    required this.length,
  });

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
