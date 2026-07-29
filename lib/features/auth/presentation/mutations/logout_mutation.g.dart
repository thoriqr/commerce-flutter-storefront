// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LogoutMutation)
final logoutMutationProvider = LogoutMutationProvider._();

final class LogoutMutationProvider
    extends $AsyncNotifierProvider<LogoutMutation, void> {
  LogoutMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logoutMutationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logoutMutationHash();

  @$internal
  @override
  LogoutMutation create() => LogoutMutation();
}

String _$logoutMutationHash() => r'c79f17c2b58215b5a3a543227f6d18ed57e2d6de';

abstract class _$LogoutMutation extends $AsyncNotifier<void> {
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
