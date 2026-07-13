import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_courier_request.freezed.dart';
part 'shipping_courier_request.g.dart';

@freezed
abstract class ShippingCourierRequest with _$ShippingCourierRequest {
  const factory ShippingCourierRequest({required String courier}) =
      _ShippingCourierRequest;

  factory ShippingCourierRequest.fromJson(Map<String, dynamic> json) =>
      _$ShippingCourierRequestFromJson(json);
}
