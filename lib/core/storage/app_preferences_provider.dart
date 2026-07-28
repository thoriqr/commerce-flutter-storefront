import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_preferences.dart';
import 'app_preferences_impl.dart';

part 'app_preferences_provider.g.dart';

@Riverpod(keepAlive: true)
SharedPreferencesAsync sharedPreferences(Ref ref) {
  return SharedPreferencesAsync();
}

@Riverpod(keepAlive: true)
AppPreferences appPreferences(Ref ref) {
  return AppPreferencesImpl(ref.watch(sharedPreferencesProvider));
}
