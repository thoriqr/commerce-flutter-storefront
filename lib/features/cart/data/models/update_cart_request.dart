import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_request.freezed.dart';
part 'update_cart_request.g.dart';

@freezed
abstract class UpdateCartRequest with _$UpdateCartRequest {
  const factory UpdateCartRequest({required int quantity}) = _UpdateCartRequest;

  factory UpdateCartRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartRequestFromJson(json);
}
