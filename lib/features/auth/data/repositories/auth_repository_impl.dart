import 'package:commerce_flutter_storefront/features/auth/data/datasource/auth_api.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._api);

  final AuthApi _api;

  @override
  Future<AuthTokens> login({
    required String email,
    required String password,
  }) async {
    final res = await _api.login(
      LoginRequest(email: email, password: password),
    );

    return res.data;
  }

  @override
  Future<void> logout({required String refreshToken}) async {
    await _api.logout(RefreshRequest(refreshToken: refreshToken));
  }
}
