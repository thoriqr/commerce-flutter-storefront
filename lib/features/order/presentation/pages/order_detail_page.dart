import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/widgets/account_guest_view.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/providers/order_provider.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_error_view.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_detail_content.dart';
import 'package:commerce_flutter_storefront/features/order/presentation/widgets/order_detail_bottom_bar.dart';
import 'package:go_router/go_router.dart';

class OrderDetailPage extends ConsumerWidget {
  const OrderDetailPage({super.key, required this.orderCode});

  final String orderCode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(hasLocalSessionProvider);

    return switch (session) {
      AsyncLoading() => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),

      AsyncError() => const Scaffold(body: OrderErrorView()),

      AsyncData(value: false) => Scaffold(
        appBar: AppHeader(
          title: 'Order',
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

      AsyncData(value: true) => _AuthenticatedOrderDetail(orderCode: orderCode),
    };
  }
}

class _AuthenticatedOrderDetail extends ConsumerWidget {
  const _AuthenticatedOrderDetail({required this.orderCode});

  final String orderCode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = ref.watch(orderDetailProvider(orderCode));

    final body = switch (order) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),

      AsyncError(:final error)
          when error is AppException && error.code == ErrorCodes.unauthorized =>
        AccountGuestView(
          redirect: LoginRedirect(
            GoRouterState.of(context).uri.toString(),
            requiresSameUser: true,
          ),
        ),

      AsyncError() => const OrderErrorView(),

      AsyncData(:final value) => OrderDetailContent(
        order: value,
        onRefresh: () {
          return ref.refresh(orderDetailProvider(orderCode).future);
        },
      ),
    };

    return Scaffold(
      appBar: AppHeader(
        title: 'Order',
        showCartButton: false,
        onSearch: (_) {},
      ),
      body: body,
      bottomNavigationBar: switch (order) {
        AsyncData(:final value) => OrderDetailBottomBar(order: value),

        _ => null,
      },
    );
  }
}
