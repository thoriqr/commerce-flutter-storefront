abstract interface class SecureStorage {
  Future<void> saveAccessToken(String token);

  Future<String?> readAccessToken();

  Future<void> deleteAccessToken();

  Future<void> saveRefreshToken(String token);

  Future<String?> readRefreshToken();

  Future<void> deleteRefreshToken();

  Future<void> clear();
}
