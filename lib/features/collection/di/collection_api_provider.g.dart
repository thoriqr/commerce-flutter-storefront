// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(collectionApi)
final collectionApiProvider = CollectionApiProvider._();

final class CollectionApiProvider
    extends $FunctionalProvider<CollectionApi, CollectionApi, CollectionApi>
    with $Provider<CollectionApi> {
  CollectionApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'collectionApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$collectionApiHash();

  @$internal
  @override
  $ProviderElement<CollectionApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CollectionApi create(Ref ref) {
    return collectionApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CollectionApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CollectionApi>(value),
    );
  }
}

String _$collectionApiHash() => r'993cb7ee062bbc719fd068761402026a1a386a8b';
