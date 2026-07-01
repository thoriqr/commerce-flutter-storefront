// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categoryApi)
final categoryApiProvider = CategoryApiProvider._();

final class CategoryApiProvider
    extends $FunctionalProvider<CategoryApi, CategoryApi, CategoryApi>
    with $Provider<CategoryApi> {
  CategoryApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryApiHash();

  @$internal
  @override
  $ProviderElement<CategoryApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CategoryApi create(Ref ref) {
    return categoryApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryApi>(value),
    );
  }
}

String _$categoryApiHash() => r'cb0da6d6da47da2d033cb7895e6747fb5e4ebc48';
