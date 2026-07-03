// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_mutations.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthMutations)
final authMutationsProvider = AuthMutationsProvider._();

final class AuthMutationsProvider
    extends $AsyncNotifierProvider<AuthMutations, void> {
  AuthMutationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authMutationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authMutationsHash();

  @$internal
  @override
  AuthMutations create() => AuthMutations();
}

String _$authMutationsHash() => r'a12d82c51f5edd422b105b9f1cd98001f8d1fc19';

abstract class _$AuthMutations extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
