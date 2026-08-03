import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/features/product/domain/product_source.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/controllers/product_listing_controller.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_listing_error_view.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_listing_not_found_view.dart';
import 'package:commerce_flutter_storefront/features/product/presentation/widgets/product_listing_validation_error_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:go_router/go_router.dart';

class ProductListingErrorPage extends ConsumerWidget {
  const ProductListingErrorPage({
    super.key,
    required this.error,
    required this.source,
  });

  final Object error;
  final ProductSource source;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Widget body;

    if (error is! AppException) {
      body = ProductListingErrorView(
        onRetry: () => ref
            .read(productListingControllerProvider(source).notifier)
            .refresh(),
      );
    } else {
      final appError = error as AppException;

      switch (appError.code) {
        case ErrorCodes.notFound:
          body = ProductListingNotFoundView(
            onBackHome: () {
              context.go(AppRoutes.home);
            },
          );

        case ErrorCodes.badRequest:
        case ErrorCodes.validationError:
          body = ProductListingValidationErrorView(
            onResetFilter: () => ref
                .read(productListingControllerProvider(source).notifier)
                .clearAllFilters(),
          );

        default:
          body = ProductListingErrorView(
            onRetry: () => ref
                .read(productListingControllerProvider(source).notifier)
                .refresh(),
          );
      }
    }

    return Scaffold(
      body: Column(
        children: [
          AppHeader(
            initialValue: switch (source) {
              SearchSource(:final query) => query,
              _ => '',
            },
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
