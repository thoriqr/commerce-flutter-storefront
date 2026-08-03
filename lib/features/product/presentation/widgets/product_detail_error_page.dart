import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_detail_error_view.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_detail_not_found_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';

class ProductDetailErrorPage extends StatelessWidget {
  const ProductDetailErrorPage({
    super.key,
    required this.error,
    required this.onRetry,
  });

  final Object error;
  final Future<void> Function() onRetry;

  @override
  Widget build(BuildContext context) {
    Widget body;

    if (error is! AppException) {
      body = ProductDetailErrorView(onRetry: onRetry);
    } else {
      switch ((error as AppException).code) {
        case ErrorCodes.notFound:
          body = ProductDetailNotFoundView(
            onBackHome: () {
              context.go(AppRoutes.home);
            },
          );

        default:
          body = ProductDetailErrorView(onRetry: onRetry);
      }
    }

    return Scaffold(
      body: Column(
        children: [
          AppHeader(
            initialValue: '',
            onSearch: (query) {
              context.go(AppRoutes.products, extra: SearchSource(query));
            },
          ),

          Expanded(child: body),
        ],
      ),
    );
  }
}
