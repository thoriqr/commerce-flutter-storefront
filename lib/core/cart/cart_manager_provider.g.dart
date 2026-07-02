// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_manager_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cartManager)
final cartManagerProvider = CartManagerProvider._();

final class CartManagerProvider
    extends $FunctionalProvider<CartManager, CartManager, CartManager>
    with $Provider<CartManager> {
  CartManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartManagerHash();

  @$internal
  @override
  $ProviderElement<CartManager> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CartManager create(Ref ref) {
    return cartManager(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartManager value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartManager>(value),
    );
  }
}

String _$cartManagerHash() => r'3279e04067d6b78eff8e952a8a732efec957af8d';
