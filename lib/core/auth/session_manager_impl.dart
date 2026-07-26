import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:commerce_flutter_storefront/core/auth/session_manager.dart';
import 'package:commerce_flutter_storefront/core/auth/token_manager.dart';
import 'package:commerce_flutter_storefront/core/constants/error_codes.dart';

class SessionManagerImpl implements SessionManager {
  SessionManagerImpl(this._ref, this._tokenManager);

  final Ref _ref;
  final TokenManager _tokenManager;

  static const _terminalRefreshErrorCodes = {
    ErrorCodes.refreshTokenMissing,
    ErrorCodes.invalidRefreshToken,
    ErrorCodes.refreshTokenExpired,
    ErrorCodes.refreshTokenReuse,
    ErrorCodes.sessionRevoked,
  };

  @override
  Future<bool> isAuthenticated() {
    return _tokenManager.isAuthenticated();
  }

  @override
  Future<String?> getAccessToken() {
    return _tokenManager.getAccessToken();
  }

  @override
  Future<String?> getRefreshToken() {
    return _tokenManager.getRefreshToken();
  }

  @override
  Future<AuthTokens> refresh() async {
    try {
      return await _tokenManager.refresh();
    } on AppException catch (error) {
      if (!_terminalRefreshErrorCodes.contains(error.code)) {
        rethrow;
      }

      await clear();

      throw const AppException(
        code: ErrorCodes.sessionExpired,
        message: "Your session has expired. Please sign in again.",
      );
    }
  }

  @override
  Future<void> save(AuthTokens tokens) async {
    await _tokenManager.save(tokens);

    _ref.invalidate(isAuthenticatedProvider);
  }

  @override
  Future<void> clear() async {
    await _tokenManager.clear();

    _ref.invalidate(isAuthenticatedProvider);
  }
}
