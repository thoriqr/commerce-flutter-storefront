// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_listing_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductListingController)
final productListingControllerProvider = ProductListingControllerFamily._();

final class ProductListingControllerProvider
    extends
        $AsyncNotifierProvider<ProductListingController, ProductListingState> {
  ProductListingControllerProvider._({
    required ProductListingControllerFamily super.from,
    required ProductSource super.argument,
  }) : super(
         retry: null,
         name: r'productListingControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productListingControllerHash();

  @override
  String toString() {
    return r'productListingControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductListingController create() => ProductListingController();

  @override
  bool operator ==(Object other) {
    return other is ProductListingControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productListingControllerHash() =>
    r'e7faf10d7885764e05b4166577718f49eb8be681';

final class ProductListingControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductListingController,
          AsyncValue<ProductListingState>,
          ProductListingState,
          FutureOr<ProductListingState>,
          ProductSource
        > {
  ProductListingControllerFamily._()
    : super(
        retry: null,
        name: r'productListingControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductListingControllerProvider call(ProductSource source) =>
      ProductListingControllerProvider._(argument: source, from: this);

  @override
  String toString() => r'productListingControllerProvider';
}

abstract class _$ProductListingController
    extends $AsyncNotifier<ProductListingState> {
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
