// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cart)
final cartProvider = CartProvider._();

final class CartProvider
    extends $FunctionalProvider<AsyncValue<Cart>, Cart, FutureOr<Cart>>
    with $FutureModifier<Cart>, $FutureProvider<Cart> {
  CartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartHash();

  @$internal
  @override
  $FutureProviderElement<Cart> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Cart> create(Ref ref) {
    return cart(ref);
  }
}

String _$cartHash() => r'ce587d2110bae6e3e99f864e44ab6394933289d7';
