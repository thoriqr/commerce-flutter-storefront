import 'package:riverpod_annotation/riverpod_annotation.dart';

mixin AsyncMutationMixin on AnyNotifier<AsyncValue<void>, void> {
  Future<R> guard<R>(Future<R> Function() action) async {
    state = const AsyncLoading();

    final result = await AsyncValue.guard(action);

    state = result.whenData((_) {});

    final error = result.error;

    if (error != null) {
      throw error;
    }

    return result.requireValue;
  }
}
