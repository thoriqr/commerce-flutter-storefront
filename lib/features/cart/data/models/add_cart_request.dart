import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cart_request.freezed.dart';
part 'add_cart_request.g.dart';

@freezed
abstract class AddCartRequest with _$AddCartRequest {
  const factory AddCartRequest({
    required int variantId,
    required int quantity,
  }) = _AddCartRequest;

  factory AddCartRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCartRequestFromJson(json);
}
