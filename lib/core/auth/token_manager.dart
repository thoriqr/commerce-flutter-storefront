import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';

abstract interface class TokenManager {
  Future<String?> getAccessToken();

  Future<String?> getRefreshToken();

  Future<void> save(AuthTokens tokens);

  Future<AuthTokens> refresh();

  Future<void> clear();

  Future<bool> isAuthenticated();
}
