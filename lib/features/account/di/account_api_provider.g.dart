// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(accountApi)
final accountApiProvider = AccountApiProvider._();

final class AccountApiProvider
    extends $FunctionalProvider<AccountApi, AccountApi, AccountApi>
    with $Provider<AccountApi> {
  AccountApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountApiHash();

  @$internal
  @override
  $ProviderElement<AccountApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AccountApi create(Ref ref) {
    return accountApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountApi>(value),
    );
  }
}

String _$accountApiHash() => r'6d2f881cf52029a516e387ea2cd4bdbd8ee8c1d2';
