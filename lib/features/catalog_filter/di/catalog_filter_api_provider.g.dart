// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_filter_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catalogFilterApi)
final catalogFilterApiProvider = CatalogFilterApiProvider._();

final class CatalogFilterApiProvider
    extends
        $FunctionalProvider<
          CatalogFilterApi,
          CatalogFilterApi,
          CatalogFilterApi
        >
    with $Provider<CatalogFilterApi> {
  CatalogFilterApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogFilterApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogFilterApiHash();

  @$internal
  @override
  $ProviderElement<CatalogFilterApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CatalogFilterApi create(Ref ref) {
    return catalogFilterApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CatalogFilterApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CatalogFilterApi>(value),
    );
  }
}

String _$catalogFilterApiHash() => r'92ea3803b19126e000f9bad981d8df114dac6325';
