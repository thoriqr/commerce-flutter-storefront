// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_listing_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductListing)
final productListingProvider = ProductListingFamily._();

final class ProductListingProvider
    extends $AsyncNotifierProvider<ProductListing, ProductListingState> {
  ProductListingProvider._({
    required ProductListingFamily super.from,
    required ProductSource super.argument,
  }) : super(
         retry: null,
         name: r'productListingProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productListingHash();

  @override
  String toString() {
    return r'productListingProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductListing create() => ProductListing();

  @override
  bool operator ==(Object other) {
    return other is ProductListingProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productListingHash() => r'41c638b51085a7bd6d576c034864e9f93bfbea38';

final class ProductListingFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductListing,
          AsyncValue<ProductListingState>,
          ProductListingState,
          FutureOr<ProductListingState>,
          ProductSource
        > {
  ProductListingFamily._()
    : super(
        retry: null,
        name: r'productListingProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductListingProvider call(ProductSource source) =>
      ProductListingProvider._(argument: source, from: this);

  @override
  String toString() => r'productListingProvider';
}

abstract class _$ProductListing extends $AsyncNotifier<ProductListingState> {
  late final _$args = ref.$arg as ProductSource;
  ProductSource get source => _$args;

  FutureOr<ProductListingState> build(ProductSource source);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ProductListingState>, ProductListingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductListingState>, ProductListingState>,
              AsyncValue<ProductListingState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
