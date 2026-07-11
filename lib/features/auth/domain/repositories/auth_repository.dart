import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/change_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/set_password_request.dart';

abstract interface class AuthRepository {
  Future<AuthTokens> login(LoginRequest request);

  Future<void> logout(RefreshRequest request);

  Future<AuthTokens> changePassword(ChangePasswordRequest request);

  Future<AuthTokens> setPassword(SetPasswordRequest request);
}
