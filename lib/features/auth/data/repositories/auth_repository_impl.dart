import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/features/auth/data/datasource/auth_api.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/change_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/set_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._api);

  final AuthApi _api;

  @override
  Future<AuthTokens> login(LoginRequest request) {
    return _api.login(request).unwrap();
  }

  @override
  Future<void> logout(RefreshRequest request) {
    return _api.logout(request).unwrap();
  }

  @override
  Future<AuthTokens> changePassword(ChangePasswordRequest request) {
    return _api.changePassword(request).unwrap();
  }

  @override
  Future<AuthTokens> setPassword(SetPasswordRequest request) {
    return _api.setPassword(request).unwrap();
  }
}
