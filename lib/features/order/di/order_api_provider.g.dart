// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderApi)
final orderApiProvider = OrderApiProvider._();

final class OrderApiProvider
    extends $FunctionalProvider<OrderApi, OrderApi, OrderApi>
    with $Provider<OrderApi> {
  OrderApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderApiHash();

  @$internal
  @override
  $ProviderElement<OrderApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrderApi create(Ref ref) {
    return orderApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderApi>(value),
    );
  }
}

String _$orderApiHash() => r'eede372445795f43507763e09afbb58a1582f2ac';
