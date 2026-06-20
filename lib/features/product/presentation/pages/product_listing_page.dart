import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:flutter/material.dart';

class ProductListingPage extends StatelessWidget {
  const ProductListingPage({super.key, required this.source});

  final ProductSource source;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(source.toString())),
    );
  }
}
