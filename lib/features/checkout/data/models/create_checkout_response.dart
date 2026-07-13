import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_checkout_response.freezed.dart';
part 'create_checkout_response.g.dart';

@freezed
abstract class CreateCheckoutResponse with _$CreateCheckoutResponse {
  const factory CreateCheckoutResponse({required int sessionId}) =
      _CreateCheckoutResponse;

  factory CreateCheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCheckoutResponseFromJson(json);
}
