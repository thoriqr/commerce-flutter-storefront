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
    final current = _refreshFuture;

    if (current != null) {
      return current;
    }

    final future = _performRefresh();

    _refreshFuture = future;

    future.whenComplete(() {
      if (identical(_refreshFuture, future)) {
        _refreshFuture = null;
      }
    });

    return future;
  }

  Future<AuthTokens> _performRefresh() async {
    try {
      final tokens = await _refreshRepository.refresh();

      await save(tokens);

      return tokens;
    } on AppException catch (e) {
      if (e.code == 'UNAUTHORIZED') {
        await clear();
      }

      rethrow;
    }
  }
}
