// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_filter_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catalogFilterRepository)
final catalogFilterRepositoryProvider = CatalogFilterRepositoryProvider._();

final class CatalogFilterRepositoryProvider
    extends
        $FunctionalProvider<
          CatalogFilterRepository,
          CatalogFilterRepository,
          CatalogFilterRepository
        >
    with $Provider<CatalogFilterRepository> {
  CatalogFilterRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogFilterRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogFilterRepositoryHash();

  @$internal
  @override
  $ProviderElement<CatalogFilterRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CatalogFilterRepository create(Ref ref) {
    return catalogFilterRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CatalogFilterRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CatalogFilterRepository>(value),
    );
  }
}

String _$catalogFilterRepositoryHash() =>
    r'22e0bd18e5d6042be0befdf79dba84e360b59ac2';
