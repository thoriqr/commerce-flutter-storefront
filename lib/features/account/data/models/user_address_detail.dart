import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address_detail.freezed.dart';
part 'user_address_detail.g.dart';

@freezed
abstract class UserAddressDetail with _$UserAddressDetail {
  const factory UserAddressDetail({
    required String label,
    required String recipientName,
    required String shippingProvinceId,
    required String shippingCityId,
    required String shippingDistrictId,
    required String addressLine,
    required bool isDefault,
    required String postalCode,
  }) = _UserAddressDetail;

  factory UserAddressDetail.fromJson(Map<String, dynamic> json) =>
      _$UserAddressDetailFromJson(json);
}
