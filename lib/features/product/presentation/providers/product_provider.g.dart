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
    r'b88c8644cd4f7e86f562ab8e56f0c49a1bf6efca';

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
    r'2dc2fa8db6d103e14724c7da5976c85eacd532e4';

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

@ProviderFor(productDetail)
final productDetailProvider = ProductDetailFamily._();

final class ProductDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductDetail>,
          ProductDetail,
          FutureOr<ProductDetail>
        >
    with $FutureModifier<ProductDetail>, $FutureProvider<ProductDetail> {
  ProductDetailProvider._({
    required ProductDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailHash();

  @override
  String toString() {
    return r'productDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProductDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductDetail> create(Ref ref) {
    final argument = this.argument as int;
    return productDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailHash() => r'402f51b8a1763b79622440c4f8164ad0939f8c48';

final class ProductDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProductDetail>, int> {
  ProductDetailFamily._()
    : super(
        retry: null,
        name: r'productDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailProvider call(int id) =>
      ProductDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'productDetailProvider';
}

@ProviderFor(productVariantDetail)
final productVariantDetailProvider = ProductVariantDetailFamily._();

final class ProductVariantDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductVariantDetail>,
          ProductVariantDetail,
          FutureOr<ProductVariantDetail>
        >
    with
        $FutureModifier<ProductVariantDetail>,
        $FutureProvider<ProductVariantDetail> {
  ProductVariantDetailProvider._({
    required ProductVariantDetailFamily super.from,
    required (int, int) super.argument,
  }) : super(
         retry: null,
         name: r'productVariantDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productVariantDetailHash();

  @override
  String toString() {
    return r'productVariantDetailProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ProductVariantDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductVariantDetail> create(Ref ref) {
    final argument = this.argument as (int, int);
    return productVariantDetail(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductVariantDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productVariantDetailHash() =>
    r'eade813a81598d915ec2e4101664fe4badf3cdaf';

final class ProductVariantDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProductVariantDetail>, (int, int)> {
  ProductVariantDetailFamily._()
    : super(
        retry: null,
        name: r'productVariantDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductVariantDetailProvider call(int productId, int variantId) =>
      ProductVariantDetailProvider._(
        argument: (productId, variantId),
        from: this,
      );

  @override
  String toString() => r'productVariantDetailProvider';
}
