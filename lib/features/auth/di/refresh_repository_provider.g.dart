// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(refreshRepository)
final refreshRepositoryProvider = RefreshRepositoryProvider._();

final class RefreshRepositoryProvider
    extends
        $FunctionalProvider<
          RefreshRepository,
          RefreshRepository,
          RefreshRepository
        >
    with $Provider<RefreshRepository> {
  RefreshRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'refreshRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$refreshRepositoryHash();

  @$internal
  @override
  $ProviderElement<RefreshRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RefreshRepository create(Ref ref) {
    return refreshRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RefreshRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RefreshRepository>(value),
    );
  }
}

String _$refreshRepositoryHash() => r'b2acc617f4535d09b09f66797db1338479c28288';
