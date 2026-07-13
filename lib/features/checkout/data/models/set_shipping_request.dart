import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_shipping_request.freezed.dart';
part 'set_shipping_request.g.dart';

@freezed
abstract class SetShippingRequest with _$SetShippingRequest {
  const factory SetShippingRequest({
    required String courierCode,
    required String courierService,
  }) = _SetShippingRequest;

  factory SetShippingRequest.fromJson(Map<String, dynamic> json) =>
      _$SetShippingRequestFromJson(json);
}
