// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_checkout_session_mutation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateCheckoutSessionMutation)
final createCheckoutSessionMutationProvider =
    CreateCheckoutSessionMutationProvider._();

final class CreateCheckoutSessionMutationProvider
    extends $AsyncNotifierProvider<CreateCheckoutSessionMutation, void> {
  CreateCheckoutSessionMutationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createCheckoutSessionMutationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createCheckoutSessionMutationHash();

  @$internal
  @override
  CreateCheckoutSessionMutation create() => CreateCheckoutSessionMutation();
}

String _$createCheckoutSessionMutationHash() =>
    r'37b7730e4fbb9aa6343216f77f62c5368c52c836';

abstract class _$CreateCheckoutSessionMutation extends $AsyncNotifier<void> {
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
