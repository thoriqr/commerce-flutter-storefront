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

String _$authMutationsHash() => r'b59f651cf15f2f5ca8ef76ee4e5686a9d7f966e2';

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
