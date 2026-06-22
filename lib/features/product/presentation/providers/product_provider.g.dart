// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productsBySearch)
final productsBySearchProvider = ProductsBySearchFamily._();

final class ProductsBySearchProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductListingResult>,
          ProductListingResult,
          FutureOr<ProductListingResult>
        >
    with
        $FutureModifier<ProductListingResult>,
        $FutureProvider<ProductListingResult> {
  ProductsBySearchProvider._({
    required ProductsBySearchFamily super.from,
    required (String, ProductListingQueryParams) super.argument,
  }) : super(
         retry: null,
         name: r'productsBySearchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productsBySearchHash();

  @override
  String toString() {
    return r'productsBySearchProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ProductListingResult> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductListingResult> create(Ref ref) {
    final argument = this.argument as (String, ProductListingQueryParams);
    return productsBySearch(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsBySearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productsBySearchHash() => r'a60531f0e32f3aa67e407bdee45052181f53293d';

final class ProductsBySearchFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<ProductListingResult>,
          (String, ProductListingQueryParams)
        > {
  ProductsBySearchFamily._()
    : super(
        retry: null,
        name: r'productsBySearchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductsBySearchProvider call(
    String query,
    ProductListingQueryParams params,
  ) => ProductsBySearchProvider._(argument: (query, params), from: this);

  @override
  String toString() => r'productsBySearchProvider';
}

@ProviderFor(productsByCategory)
final productsByCategoryProvider = ProductsByCategoryFamily._();

final class ProductsByCategoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductListingResult>,
          ProductListingResult,
          FutureOr<ProductListingResult>
        >
    with
        $FutureModifier<ProductListingResult>,
        $FutureProvider<ProductListingResult> {
  ProductsByCategoryProvider._({
    required ProductsByCategoryFamily super.from,
    required (String, ProductListingQueryParams) super.argument,
  }) : super(
         retry: null,
         name: r'productsByCategoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productsByCategoryHash();

  @override
  String toString() {
    return r'productsByCategoryProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ProductListingResult> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductListingResult> create(Ref ref) {
    final argument = this.argument as (String, ProductListingQueryParams);
    return productsByCategory(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsByCategoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productsByCategoryHash() =>
    r'2334c402de4b410dc38d1dd0edc29b7d490131ec';

final class ProductsByCategoryFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<ProductListingResult>,
          (String, ProductListingQueryParams)
        > {
  ProductsByCategoryFamily._()
    : super(
        retry: null,
        name: r'productsByCategoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductsByCategoryProvider call(
    String slugPath,
    ProductListingQueryParams params,
  ) => ProductsByCategoryProvider._(argument: (slugPath, params), from: this);

  @override
  String toString() => r'productsByCategoryProvider';
}

@ProviderFor(productsByCollection)
final productsByCollectionProvider = ProductsByCollectionFamily._();

final class ProductsByCollectionProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductListingResult>,
          ProductListingResult,
          FutureOr<ProductListingResult>
        >
    with
        $FutureModifier<ProductListingResult>,
        $FutureProvider<ProductListingResult> {
  ProductsByCollectionProvider._({
    required ProductsByCollectionFamily super.from,
    required (String, ProductListingQueryParams) super.argument,
  }) : super(
         retry: null,
         name: r'productsByCollectionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productsByCollectionHash();

  @override
  String toString() {
    return r'productsByCollectionProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ProductListingResult> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductListingResult> create(Ref ref) {
    final argument = this.argument as (String, ProductListingQueryParams);
    return productsByCollection(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsByCollectionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productsByCollectionHash() =>
    r'811e4de5887c104bfb63d89e82ee40e5a435c882';

final class ProductsByCollectionFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<ProductListingResult>,
          (String, ProductListingQueryParams)
        > {
  ProductsByCollectionFamily._()
    : super(
        retry: null,
        name: r'productsByCollectionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductsByCollectionProvider call(
    String slug,
    ProductListingQueryParams params,
  ) => ProductsByCollectionProvider._(argument: (slug, params), from: this);

  @override
  String toString() => r'productsByCollectionProvider';
}
