import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_cost.freezed.dart';
part 'shipping_cost.g.dart';

@freezed
abstract class ShippingCost with _$ShippingCost {
  const factory ShippingCost({
    required String courier,
    required List<ShippingService> services,
  }) = _ShippingCost;

  factory ShippingCost.fromJson(Map<String, dynamic> json) =>
      _$ShippingCostFromJson(json);
}

@freezed
abstract class ShippingService with _$ShippingService {
  const factory ShippingService({
    required String name,
    required String code,
    required String service,
    required String description,
    required String cost,
    required String etd,
  }) = _ShippingService;

  factory ShippingService.fromJson(Map<String, dynamic> json) =>
      _$ShippingServiceFromJson(json);
}
