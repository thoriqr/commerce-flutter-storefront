import 'package:commerce_flutter_storefront/core/models/pagination_meta.dart';
import 'package:commerce_flutter_storefront/features/order/data/mocks/order_mock.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_listing_result.dart';

abstract final class OrderListingResultMock {
  static OrderListingResult item() {
    return OrderListingResult(
      orders: OrderMock.items(),
      meta: const PaginationMeta(
        page: 1,
        limit: 10,
        total: 3,
        totalPages: 1,
        hasNext: false,
        hasPrev: false,
      ),
    );
  }
}
