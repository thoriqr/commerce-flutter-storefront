abstract interface class AppPreferences {
  Future<int?> getLastUserId();

  Future<void> setLastUserId(int userId);
}
