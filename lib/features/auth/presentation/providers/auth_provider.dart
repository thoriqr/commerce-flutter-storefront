import 'package:commerce_flutter_storefront/core/auth/token_manager_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
Future<bool> isAuthenticated(Ref ref) {
  return ref.read(tokenManagerProvider).isAuthenticated();
}
