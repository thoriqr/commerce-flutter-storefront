import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';

abstract interface class AuthRepository {
  Future<AuthTokens> login({required String email, required String password});

  Future<void> logout({required String refreshToken});
}
