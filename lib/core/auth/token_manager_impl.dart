import 'package:commerce_flutter_storefront/core/auth/token_manager.dart';
import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/storage/secure_storage.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/domain/repositories/refresh_repository.dart';

class TokenManagerImpl implements TokenManager {
  TokenManagerImpl(this._storage, this._refreshRepository);

  final SecureStorage _storage;
  final RefreshRepository _refreshRepository;

  Future<AuthTokens>? _refreshFuture;

  @override
  Future<String?> getAccessToken() {
    return _storage.readAccessToken();
  }

  @override
  Future<String?> getRefreshToken() {
    return _storage.readRefreshToken();
  }

  @override
  Future<void> save(AuthTokens tokens) async {
    await _storage.saveAccessToken(tokens.accessToken);
    await _storage.saveRefreshToken(tokens.refreshToken);
  }

  @override
  Future<void> clear() {
    return _storage.clear();
  }

  @override
  Future<AuthTokens> refresh() {
    // Reuse the current refresh request if one is already running.
    final current = _refreshFuture;

    if (current != null) {
      return current;
    }

    final future = _performRefresh();

    _refreshFuture = future;

    // Reset the refresh state once the request completes.
    future.whenComplete(() {
      if (identical(_refreshFuture, future)) {
        _refreshFuture = null;
      }
    });

    return future;
  }

  Future<AuthTokens> _performRefresh() async {
    try {
      // Request a new access/refresh token pair.
      final tokens = await _refreshRepository.refresh();

      // Persist the latest tokens.
      await save(tokens);

      return tokens;
    } on AppException catch (e) {
      // Clear local credentials if the refresh token is no longer valid.
      if (e.code == "UNAUTHORIZED") {
        await clear();
      }

      rethrow;
    }
  }
}
