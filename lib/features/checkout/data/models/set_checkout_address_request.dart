import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_checkout_address_request.freezed.dart';
part 'set_checkout_address_request.g.dart';

@freezed
abstract class SetCheckoutAddressRequest with _$SetCheckoutAddressRequest {
  const factory SetCheckoutAddressRequest({required int addressId}) =
      _SetCheckoutAddressRequest;

  factory SetCheckoutAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$SetCheckoutAddressRequestFromJson(json);
}
