// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(collectionPreview)
final collectionPreviewProvider = CollectionPreviewProvider._();

final class CollectionPreviewProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CollectionPreview>>,
          List<CollectionPreview>,
          FutureOr<List<CollectionPreview>>
        >
    with
        $FutureModifier<List<CollectionPreview>>,
        $FutureProvider<List<CollectionPreview>> {
  CollectionPreviewProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'collectionPreviewProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$collectionPreviewHash();

  @$internal
  @override
  $FutureProviderElement<List<CollectionPreview>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CollectionPreview>> create(Ref ref) {
    return collectionPreview(ref);
  }
}

String _$collectionPreviewHash() => r'72063ad449e34c57ccbc70622b7ee0731b61a3f2';

@ProviderFor(collectionDetail)
final collectionDetailProvider = CollectionDetailFamily._();

final class CollectionDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<CollectionDetail>,
          CollectionDetail,
          FutureOr<CollectionDetail>
        >
    with $FutureModifier<CollectionDetail>, $FutureProvider<CollectionDetail> {
  CollectionDetailProvider._({
    required CollectionDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'collectionDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$collectionDetailHash();

  @override
  String toString() {
    return r'collectionDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<CollectionDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CollectionDetail> create(Ref ref) {
    final argument = this.argument as String;
    return collectionDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CollectionDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$collectionDetailHash() => r'4f9e3c2042800e8bebdb618c34958141e6c25600';

final class CollectionDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<CollectionDetail>, String> {
  CollectionDetailFamily._()
    : super(
        retry: null,
        name: r'collectionDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CollectionDetailProvider call(String slug) =>
      CollectionDetailProvider._(argument: slug, from: this);

  @override
  String toString() => r'collectionDetailProvider';
}
