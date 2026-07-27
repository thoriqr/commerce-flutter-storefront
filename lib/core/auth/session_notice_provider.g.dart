// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_notice_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SessionNotice)
final sessionNoticeProvider = SessionNoticeProvider._();

final class SessionNoticeProvider
    extends $NotifierProvider<SessionNotice, SessionNoticeType?> {
  SessionNoticeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionNoticeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionNoticeHash();

  @$internal
  @override
  SessionNotice create() => SessionNotice();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SessionNoticeType? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SessionNoticeType?>(value),
    );
  }
}

String _$sessionNoticeHash() => r'1b15e66e78602b17654780d114bc084fc0f33681';

abstract class _$SessionNotice extends $Notifier<SessionNoticeType?> {
  SessionNoticeType? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SessionNoticeType?, SessionNoticeType?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SessionNoticeType?, SessionNoticeType?>,
              SessionNoticeType?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
