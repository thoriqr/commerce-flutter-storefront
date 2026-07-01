import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/core/storage/secure_storage.dart';
import 'package:commerce_flutter_storefront/features/auth/data/datasource/refresh_api.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/refresh_request.dart';
import 'package:commerce_flutter_storefront/features/auth/domain/repositories/refresh_repository.dart';

class RefreshRepositoryImpl implements RefreshRepository {
  const RefreshRepositoryImpl(this._api, this._storage);

  final RefreshApi _api;
  final SecureStorage _storage;

  @override
  Future<AuthTokens> refresh() async {
    final refreshToken = await _storage.readRefreshToken();

    if (refreshToken == null || refreshToken.isEmpty) {
      throw const AppException(
        code: 'UNAUTHORIZED',
        message: 'Refresh token not found',
      );
    }

    return _api.refresh(RefreshRequest(refreshToken: refreshToken)).unwrap();
  }
}
