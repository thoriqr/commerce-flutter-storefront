// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userProfile)
final userProfileProvider = UserProfileProvider._();

final class UserProfileProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserProfile>,
          UserProfile,
          FutureOr<UserProfile>
        >
    with $FutureModifier<UserProfile>, $FutureProvider<UserProfile> {
  UserProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProfileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProfileHash();

  @$internal
  @override
  $FutureProviderElement<UserProfile> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserProfile> create(Ref ref) {
    return userProfile(ref);
  }
}

String _$userProfileHash() => r'e277051fc920a0a826ffe747e1d7376d66169f3d';

@ProviderFor(userAddresses)
final userAddressesProvider = UserAddressesProvider._();

final class UserAddressesProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserAddresses>,
          UserAddresses,
          FutureOr<UserAddresses>
        >
    with $FutureModifier<UserAddresses>, $FutureProvider<UserAddresses> {
  UserAddressesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userAddressesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userAddressesHash();

  @$internal
  @override
  $FutureProviderElement<UserAddresses> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserAddresses> create(Ref ref) {
    return userAddresses(ref);
  }
}

String _$userAddressesHash() => r'13847a872cce764fb2b7eb96067b3e14e899c845';

@ProviderFor(userAddress)
final userAddressProvider = UserAddressFamily._();

final class UserAddressProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserAddressDetail>,
          UserAddressDetail,
          FutureOr<UserAddressDetail>
        >
    with
        $FutureModifier<UserAddressDetail>,
        $FutureProvider<UserAddressDetail> {
  UserAddressProvider._({
    required UserAddressFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'userAddressProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userAddressHash();

  @override
  String toString() {
    return r'userAddressProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<UserAddressDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserAddressDetail> create(Ref ref) {
    final argument = this.argument as int;
    return userAddress(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UserAddressProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userAddressHash() => r'7a7f11312497bacf038519e87c4e05879d4dd04e';

final class UserAddressFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<UserAddressDetail>, int> {
  UserAddressFamily._()
    : super(
        retry: null,
        name: r'userAddressProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserAddressProvider call(int id) =>
      UserAddressProvider._(argument: id, from: this);

  @override
  String toString() => r'userAddressProvider';
}
