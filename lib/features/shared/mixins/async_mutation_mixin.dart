import 'package:riverpod_annotation/riverpod_annotation.dart';

mixin AsyncMutationMixin<T> on AnyNotifier<AsyncValue<T>, T> {
  Future<void> guard(Future<T> Function() action) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(action);

    final error = state.error;

    if (error != null) {
      throw error;
    }
  }
}
