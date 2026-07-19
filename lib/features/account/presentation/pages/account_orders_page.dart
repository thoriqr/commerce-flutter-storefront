import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_order_filter.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_sort_status.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/providers/order_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_orders_content.dart';
import 'package:commerce_flutter_storefront/features/order/data/mocks/order_listing_result_mock.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';

class AccountOrdersPage extends ConsumerStatefulWidget {
  const AccountOrdersPage({super.key});

  @override
  ConsumerState<AccountOrdersPage> createState() => _AccountOrdersPageState();
}

class _AccountOrdersPageState extends ConsumerState<AccountOrdersPage> {
  OrderSortStatus status = OrderSortStatus.ongoing;

  int page = 1;

  @override
  Widget build(BuildContext context) {
    final params = OrderListingQueryParams(page: page, status: status);

    final orders = ref.watch(ordersProvider(params));

    final result = switch (orders) {
      AsyncData(:final value) => value,
      _ => OrderListingResultMock.item(),
    };

    final body = switch (orders) {
      AsyncLoading() => Skeletonizer(
        enabled: true,
        child: AccountOrdersContent(
          result: result,
          onRefresh: () {
            return ref.refresh(ordersProvider(params).future);
          },

          onNextPage: () {
            if (!result.meta.hasNext) {
              return;
            }

            setState(() {
              page++;
            });
          },

          onPreviousPage: () {
            if (!result.meta.hasPrev) {
              return;
            }

            setState(() {
              page--;
            });
          },
        ),
      ),

      AsyncError(:final error) => AccountErrorView(
        error: error,
        onRetry: () {
          ref.invalidate(ordersProvider(params));
        },
      ),

      AsyncData() => AccountOrdersContent(
        result: result,
        onRefresh: () {
          return ref.refresh(ordersProvider(params).future);
        },

        onNextPage: () {
          if (!result.meta.hasNext) {
            return;
          }

          setState(() {
            page++;
          });
        },

        onPreviousPage: () {
          if (!result.meta.hasPrev) {
            return;
          }

          setState(() {
            page--;
          });
        },
      ),
    };

    return Scaffold(
      appBar: AppHeader(
        title: 'Orders',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: AccountOrderFilter(
              value: status,
              onChanged: (value) {
                setState(() {
                  status = value;
                  page = 1;
                });
              },
            ),
          ),

          Expanded(child: body),
        ],
      ),
    );
  }
}
