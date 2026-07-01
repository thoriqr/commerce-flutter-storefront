import 'package:commerce_flutter_storefront/features/auth/data/models/auth_tokens.dart';

abstract interface class RefreshRepository {
  Future<AuthTokens> refresh();
}
