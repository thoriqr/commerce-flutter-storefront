// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_checkout_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfirmCheckoutMutation)
final confirmCheckoutMutationProvider = ConfirmCheckoutMutationProvider._();

final class ConfirmCheckoutMutationProvider
    extends $AsyncNotifierProvider<ConfirmCheckoutMutation, void> {
  ConfirmCheckoutMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmCheckoutMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmCheckoutMutationHash();

  @$internal
  @override
  ConfirmCheckoutMutation create() => ConfirmCheckoutMutation();
}

String _$confirmCheckoutMutationHash() =>
    r'0b663bf250a072a02e48dc51c07b5a0421e8f3b0';

abstract class _$ConfirmCheckoutMutation extends $AsyncNotifier<void> {
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
