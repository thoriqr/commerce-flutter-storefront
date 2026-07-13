import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:commerce_flutter_storefront/core/auth/session_manager.dart';
import 'package:commerce_flutter_storefront/core/auth/session_manager_impl.dart';
import 'package:commerce_flutter_storefront/core/auth/token_manager_provider.dart';

part 'session_manager_provider.g.dart';

@Riverpod(keepAlive: true)
SessionManager sessionManager(Ref ref) {
  return SessionManagerImpl(ref, ref.read(tokenManagerProvider));
}
