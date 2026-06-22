// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(popularCategory)
final popularCategoryProvider = PopularCategoryProvider._();

final class PopularCategoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PopularCategory>>,
          List<PopularCategory>,
          FutureOr<List<PopularCategory>>
        >
    with
        $FutureModifier<List<PopularCategory>>,
        $FutureProvider<List<PopularCategory>> {
  PopularCategoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'popularCategoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$popularCategoryHash();

  @$internal
  @override
  $FutureProviderElement<List<PopularCategory>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PopularCategory>> create(Ref ref) {
    return popularCategory(ref);
  }
}

String _$popularCategoryHash() => r'b9ab09ee710c11213cf1ebd60ff79246ba75a512';

@ProviderFor(categoryTree)
final categoryTreeProvider = CategoryTreeProvider._();

final class CategoryTreeProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CategoryTree>>,
          List<CategoryTree>,
          FutureOr<List<CategoryTree>>
        >
    with
        $FutureModifier<List<CategoryTree>>,
        $FutureProvider<List<CategoryTree>> {
  CategoryTreeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryTreeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryTreeHash();

  @$internal
  @override
  $FutureProviderElement<List<CategoryTree>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CategoryTree>> create(Ref ref) {
    return categoryTree(ref);
  }
}

String _$categoryTreeHash() => r'40a6504d71c76ecabfd37460fa268458dc9a5e03';

@ProviderFor(categoryDetail)
final categoryDetailProvider = CategoryDetailFamily._();

final class CategoryDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<CategoryDetail>,
          CategoryDetail,
          FutureOr<CategoryDetail>
        >
    with $FutureModifier<CategoryDetail>, $FutureProvider<CategoryDetail> {
  CategoryDetailProvider._({
    required CategoryDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'categoryDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categoryDetailHash();

  @override
  String toString() {
    return r'categoryDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<CategoryDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CategoryDetail> create(Ref ref) {
    final argument = this.argument as String;
    return categoryDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categoryDetailHash() => r'059d86d8698dcb658c2ab01cfec10578450bebe1';

final class CategoryDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<CategoryDetail>, String> {
  CategoryDetailFamily._()
    : super(
        retry: null,
        name: r'categoryDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CategoryDetailProvider call(String slugPath) =>
      CategoryDetailProvider._(argument: slugPath, from: this);

  @override
  String toString() => r'categoryDetailProvider';
}
