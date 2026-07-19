import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    required int id,
    required String orderCode,
    required int productId,
    required String slug,
    required OrderStatus status,
    required int total,
    required String createdAt,
    required int itemCount,
    required OrderPreviewItem previewItem,
    required bool canConfirm,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
abstract class OrderPreviewItem with _$OrderPreviewItem {
  const factory OrderPreviewItem({
    required String name,
    required String? imageKey,
  }) = _OrderPreviewItem;

  factory OrderPreviewItem.fromJson(Map<String, dynamic> json) =>
      _$OrderPreviewItemFromJson(json);
}
