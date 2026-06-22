// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catalogFilterBySearch)
final catalogFilterBySearchProvider = CatalogFilterBySearchFamily._();

final class CatalogFilterBySearchProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CatalogFilterGroup>>,
          List<CatalogFilterGroup>,
          FutureOr<List<CatalogFilterGroup>>
        >
    with
        $FutureModifier<List<CatalogFilterGroup>>,
        $FutureProvider<List<CatalogFilterGroup>> {
  CatalogFilterBySearchProvider._({
    required CatalogFilterBySearchFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'catalogFilterBySearchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$catalogFilterBySearchHash();

  @override
  String toString() {
    return r'catalogFilterBySearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<CatalogFilterGroup>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CatalogFilterGroup>> create(Ref ref) {
    final argument = this.argument as String;
    return catalogFilterBySearch(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CatalogFilterBySearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$catalogFilterBySearchHash() =>
    r'b7a66603b96f414f1e955c65e0848b1e719b5c49';

final class CatalogFilterBySearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<CatalogFilterGroup>>, String> {
  CatalogFilterBySearchFamily._()
    : super(
        retry: null,
        name: r'catalogFilterBySearchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CatalogFilterBySearchProvider call(String query) =>
      CatalogFilterBySearchProvider._(argument: query, from: this);

  @override
  String toString() => r'catalogFilterBySearchProvider';
}

@ProviderFor(catalogFilterByCategory)
final catalogFilterByCategoryProvider = CatalogFilterByCategoryFamily._();

final class CatalogFilterByCategoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CatalogFilterGroup>>,
          List<CatalogFilterGroup>,
          FutureOr<List<CatalogFilterGroup>>
        >
    with
        $FutureModifier<List<CatalogFilterGroup>>,
        $FutureProvider<List<CatalogFilterGroup>> {
  CatalogFilterByCategoryProvider._({
    required CatalogFilterByCategoryFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'catalogFilterByCategoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$catalogFilterByCategoryHash();

  @override
  String toString() {
    return r'catalogFilterByCategoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<CatalogFilterGroup>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CatalogFilterGroup>> create(Ref ref) {
    final argument = this.argument as String;
    return catalogFilterByCategory(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CatalogFilterByCategoryProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$catalogFilterByCategoryHash() =>
    r'06c2490d919ec38101d371f81adf2d973f3366af';

final class CatalogFilterByCategoryFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<CatalogFilterGroup>>, String> {
  CatalogFilterByCategoryFamily._()
    : super(
        retry: null,
        name: r'catalogFilterByCategoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CatalogFilterByCategoryProvider call(String slugPath) =>
      CatalogFilterByCategoryProvider._(argument: slugPath, from: this);

  @override
  String toString() => r'catalogFilterByCategoryProvider';
}
