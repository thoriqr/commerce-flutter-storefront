import 'package:shared_preferences/shared_preferences.dart';

import 'app_preferences.dart';

class AppPreferencesImpl implements AppPreferences {
  const AppPreferencesImpl(this._preferences);

  final SharedPreferencesAsync _preferences;

  static const _lastUserIdKey = 'last_user_id';

  @override
  Future<int?> getLastUserId() {
    return _preferences.getInt(_lastUserIdKey);
  }

  @override
  Future<void> setLastUserId(int userId) {
    return _preferences.setInt(_lastUserIdKey, userId);
  }
}
