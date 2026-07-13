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

String _$accountMutationsHash() => r'1ce5b27d898d3c3999c3677905a7d4f670bdc44e';

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
