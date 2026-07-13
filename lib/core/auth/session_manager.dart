import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';

abstract interface class SessionManager {
  Future<bool> isAuthenticated();

  Future<String?> getAccessToken();

  Future<String?> getRefreshToken();

  Future<AuthTokens> refresh();

  Future<void> save(AuthTokens tokens);

  Future<void> clear();
}
