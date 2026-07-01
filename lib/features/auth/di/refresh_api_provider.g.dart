// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(refreshApi)
final refreshApiProvider = RefreshApiProvider._();

final class RefreshApiProvider
    extends $FunctionalProvider<RefreshApi, RefreshApi, RefreshApi>
    with $Provider<RefreshApi> {
  RefreshApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshApiHash();

  @$internal
  @override
  $ProviderElement<RefreshApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RefreshApi create(Ref ref) {
    return refreshApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RefreshApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RefreshApi>(value),
    );
  }
}

String _$refreshApiHash() => r'438661ad5e9dd1d413eea9b3fbb46730b8f9742c';
