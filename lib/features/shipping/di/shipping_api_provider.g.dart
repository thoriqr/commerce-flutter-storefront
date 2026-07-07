// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(shippingApi)
final shippingApiProvider = ShippingApiProvider._();

final class ShippingApiProvider
    extends $FunctionalProvider<ShippingApi, ShippingApi, ShippingApi>
    with $Provider<ShippingApi> {
  ShippingApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shippingApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shippingApiHash();

  @$internal
  @override
  $ProviderElement<ShippingApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ShippingApi create(Ref ref) {
    return shippingApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShippingApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShippingApi>(value),
    );
  }
}

String _$shippingApiHash() => r'961449a9955c9be1980084b1ba81ed9e758ebf9f';
