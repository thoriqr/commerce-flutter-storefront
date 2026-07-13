// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkoutApi)
final checkoutApiProvider = CheckoutApiProvider._();

final class CheckoutApiProvider
    extends $FunctionalProvider<CheckoutApi, CheckoutApi, CheckoutApi>
    with $Provider<CheckoutApi> {
  CheckoutApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkoutApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkoutApiHash();

  @$internal
  @override
  $ProviderElement<CheckoutApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckoutApi create(Ref ref) {
    return checkoutApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckoutApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckoutApi>(value),
    );
  }
}

String _$checkoutApiHash() => r'f63dda3832a703b13c1cb0266213daab2f93532f';
