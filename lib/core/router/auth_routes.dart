import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract final class AuthRoutes {
  static const login = '/login';
  static const register = '/register';
  static const forgotPassword = '/forgot-password';

  static void pushLogin(BuildContext context, {LoginRedirect? redirect}) {
    context.push(login, extra: redirect);
  }
}
