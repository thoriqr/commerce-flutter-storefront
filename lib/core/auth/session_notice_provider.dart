import 'package:riverpod_annotation/riverpod_annotation.dart';

part "session_notice_provider.g.dart";

enum SessionNoticeType { expired }

@riverpod
class SessionNotice extends _$SessionNotice {
  @override
  SessionNoticeType? build() => null;

  void sessionExpired() {
    state = SessionNoticeType.expired;
  }

  void clear() {
    state = null;
  }
}
