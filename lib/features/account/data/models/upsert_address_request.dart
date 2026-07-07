import 'package:freezed_annotation/freezed_annotation.dart';

part 'upsert_address_request.freezed.dart';
part 'upsert_address_request.g.dart';

@freezed
abstract class UpsertAddressRequest with _$UpsertAddressRequest {
  const factory UpsertAddressRequest({
    required String label,
    required String recipientName,
    required String shippingProvinceId,
    required String shippingCityId,
    required String shippingDistrictId,
    required String addressLine,
    required String phone,
    required String postalCode,
  }) = _UpsertAddressRequest;

  factory UpsertAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertAddressRequestFromJson(json);
}
