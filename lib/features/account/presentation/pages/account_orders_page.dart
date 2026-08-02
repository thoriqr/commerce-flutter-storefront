import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_order_filter.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_query_params.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_sort_status.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/providers/order_provider.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_orders_content.dart';
import 'package:commerce_flutter_storefront/features/order/data/mocks/order_listing_result_mock.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_error_view.dart';

class AccountOrdersPage extends ConsumerWidget {
  const AccountOrdersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),

      AsyncError(:final error) => Scaffold(
        appBar: AppHeader(
          title: 'Orders',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: AccountErrorView(
          error: error,
          onRetry: () {
            ref.invalidate(hasLocalSessionProvider);
          },
        ),
      ),

      AsyncData(value: false) => Scaffold(
        appBar: AppHeader(
          title: 'Orders',
          showCartButton: false,
          onSearch: (_) {},
        ),
        body: AccountGuestView(
          redirect: LoginRedirect(
            GoRouterState.of(context).uri.toString(),
            requiresSameUser: true,
          ),
        ),
      ),

      AsyncData(value: true) => const _AuthenticatedAccountOrders(),
    };
  }
}

class _AuthenticatedAccountOrders extends ConsumerStatefulWidget {
  const _AuthenticatedAccountOrders();

  @override
  ConsumerState<_AuthenticatedAccountOrders> createState() =>
      _AuthenticatedAccountOrdersState();
}

class _AuthenticatedAccountOrdersState
    extends ConsumerState<_AuthenticatedAccountOrders> {
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
            if (!result.meta.hasNext) return;

            setState(() {
              page++;
            });
          },
          onPreviousPage: () {
            if (!result.meta.hasPrev) return;

            setState(() {
              page--;
            });
          },
        ),
      ),

      AsyncError(:final error)
          when error is AppException && error.code == ErrorCodes.unauthorized =>
        AccountGuestView(
          redirect: LoginRedirect(
            GoRouterState.of(context).uri.toString(),
            requiresSameUser: true,
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
          if (!result.meta.hasNext) return;

          setState(() {
            page++;
          });
        },
        onPreviousPage: () {
          if (!result.meta.hasPrev) return;

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
