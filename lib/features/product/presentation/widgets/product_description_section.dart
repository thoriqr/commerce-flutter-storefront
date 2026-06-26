import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: ReadMoreText(
        description,
        trimMode: TrimMode.Line,
        trimLines: 4,
        trimCollapsedText: ' Read More',
        trimExpandedText: ' Show Less',
        style: Theme.of(context).textTheme.bodyMedium,
        moreStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
        lessStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
