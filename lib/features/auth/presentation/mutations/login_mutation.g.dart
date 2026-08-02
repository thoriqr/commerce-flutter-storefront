// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginMutation)
final loginMutationProvider = LoginMutationProvider._();

final class LoginMutationProvider
    extends $AsyncNotifierProvider<LoginMutation, void> {
  LoginMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginMutationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginMutationHash();

  @$internal
  @override
  LoginMutation create() => LoginMutation();
}

String _$loginMutationHash() => r'c373ad72faef7f4617e6505359a99c61edb9acb9';

abstract class _$LoginMutation extends $AsyncNotifier<void> {
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
