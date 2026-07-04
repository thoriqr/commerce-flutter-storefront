import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
abstract class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    required List<CartItem> items,
    required CartSummary summary,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  bool get isEmpty => items.isEmpty;

  bool get canCheckout {
    return items.every((item) {
      switch (item.warning) {
        case null:
        case CartItemWarning.lowStock:
          return true;

        case CartItemWarning.insufficientStock:
        case CartItemWarning.outOfStock:
        case CartItemWarning.unavailable:
          return false;
      }
    });
  }

  bool get hasUnavailableItems => !canCheckout;
}

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required int variantId,
    required int productId,
    required String name,
    required String slug,
    required int price,
    required int stock,
    required int quantity,
    required String imageKey,
    required bool isAvailable,
    required CartItemWarning? warning,
    required List<CartItemOption> options,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@freezed
abstract class CartItemOption with _$CartItemOption {
  const factory CartItemOption({
    required String dimension,
    required String value,
  }) = _CartItemOption;

  factory CartItemOption.fromJson(Map<String, dynamic> json) =>
      _$CartItemOptionFromJson(json);
}

@freezed
abstract class CartSummary with _$CartSummary {
  const factory CartSummary({required int totalItems, required int subtotal}) =
      _CartSummary;

  factory CartSummary.fromJson(Map<String, dynamic> json) =>
      _$CartSummaryFromJson(json);
}

enum CartItemWarning {
  @JsonValue('UNAVAILABLE')
  unavailable,

  @JsonValue('OUT_OF_STOCK')
  outOfStock,

  @JsonValue('INSUFFICIENT_STOCK')
  insufficientStock,

  @JsonValue('LOW_STOCK')
  lowStock,
}
