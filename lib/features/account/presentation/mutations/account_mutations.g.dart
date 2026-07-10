// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_mutations.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AccountMutations)
final accountMutationsProvider = AccountMutationsProvider._();

final class AccountMutationsProvider
    extends $AsyncNotifierProvider<AccountMutations, void> {
  AccountMutationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountMutationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountMutationsHash();

  @$internal
  @override
  AccountMutations create() => AccountMutations();
}

String _$accountMutationsHash() => r'd1292eac2e1cb767dcb1ecf83f2fd49ee7381843';

abstract class _$AccountMutations extends $AsyncNotifier<void> {
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
