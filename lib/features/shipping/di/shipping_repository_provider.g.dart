// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(shippingRepository)
final shippingRepositoryProvider = ShippingRepositoryProvider._();

final class ShippingRepositoryProvider
    extends
        $FunctionalProvider<
          ShippingRepository,
          ShippingRepository,
          ShippingRepository
        >
    with $Provider<ShippingRepository> {
  ShippingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shippingRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shippingRepositoryHash();

  @$internal
  @override
  $ProviderElement<ShippingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ShippingRepository create(Ref ref) {
    return shippingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShippingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShippingRepository>(value),
    );
  }
}

String _$shippingRepositoryHash() =>
    r'28f1cc4bb13b45b74c533ba0e1576704122008eb';
