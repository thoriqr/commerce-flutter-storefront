import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_address_response.freezed.dart';
part 'create_address_response.g.dart';

@freezed
abstract class CreateAddressResponse with _$CreateAddressResponse {
  const factory CreateAddressResponse({required int addressId}) =
      _CreateAddressResponse;

  factory CreateAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressResponseFromJson(json);
}
