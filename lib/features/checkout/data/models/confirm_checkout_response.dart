import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_checkout_response.freezed.dart';
part 'confirm_checkout_response.g.dart';

@freezed
abstract class ConfirmCheckoutResponse with _$ConfirmCheckoutResponse {
  const factory ConfirmCheckoutResponse({required String orderCode}) =
      _ConfirmCheckoutResponse;

  factory ConfirmCheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCheckoutResponseFromJson(json);
}
