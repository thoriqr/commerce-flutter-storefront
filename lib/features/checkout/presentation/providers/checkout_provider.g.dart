// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkoutSession)
final checkoutSessionProvider = CheckoutSessionFamily._();

final class CheckoutSessionProvider
    extends
        $FunctionalProvider<
          AsyncValue<CheckoutSession>,
          CheckoutSession,
          FutureOr<CheckoutSession>
        >
    with $FutureModifier<CheckoutSession>, $FutureProvider<CheckoutSession> {
  CheckoutSessionProvider._({
    required CheckoutSessionFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'checkoutSessionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkoutSessionHash();

  @override
  String toString() {
    return r'checkoutSessionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<CheckoutSession> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CheckoutSession> create(Ref ref) {
    final argument = this.argument as int;
    return checkoutSession(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutSessionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkoutSessionHash() => r'0c6cac65c964d08d1a79e7177b7cd4c23a61d248';

final class CheckoutSessionFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<CheckoutSession>, int> {
  CheckoutSessionFamily._()
    : super(
        retry: null,
        name: r'checkoutSessionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CheckoutSessionProvider call(int sessionId) =>
      CheckoutSessionProvider._(argument: sessionId, from: this);

  @override
  String toString() => r'checkoutSessionProvider';
}

@ProviderFor(warehouseOrigin)
final warehouseOriginProvider = WarehouseOriginProvider._();

final class WarehouseOriginProvider
    extends
        $FunctionalProvider<
          AsyncValue<WarehouseOrigin>,
          WarehouseOrigin,
          FutureOr<WarehouseOrigin>
        >
    with $FutureModifier<WarehouseOrigin>, $FutureProvider<WarehouseOrigin> {
  WarehouseOriginProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'warehouseOriginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$warehouseOriginHash();

  @$internal
  @override
  $FutureProviderElement<WarehouseOrigin> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<WarehouseOrigin> create(Ref ref) {
    return warehouseOrigin(ref);
  }
}

String _$warehouseOriginHash() => r'6e36a379c36d7aa3210b1fd70c5d398681f6f7cc';
