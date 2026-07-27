// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(hasLocalSession)
final hasLocalSessionProvider = HasLocalSessionProvider._();

final class HasLocalSessionProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  HasLocalSessionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasLocalSessionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasLocalSessionHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return hasLocalSession(ref);
  }
}

String _$hasLocalSessionHash() => r'116526e9facc1bd3dcb93c6dc60ec9dc0951a69a';
