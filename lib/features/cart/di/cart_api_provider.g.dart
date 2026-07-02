// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartApi)
final cartApiProvider = CartApiProvider._();

final class CartApiProvider
    extends $FunctionalProvider<CartApi, CartApi, CartApi>
    with $Provider<CartApi> {
  CartApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartApiHash();

  @$internal
  @override
  $ProviderElement<CartApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartApi create(Ref ref) {
    return cartApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartApi>(value),
    );
  }
}

String _$cartApiHash() => r'9fbe205dc4b8896b135c0512d6c7714c39bf3dc1';
