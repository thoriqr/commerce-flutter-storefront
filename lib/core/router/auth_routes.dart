import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract final class AuthRoutes {
  static const login = '/login';
  static const register = '/register';
  static const forgotPassword = '/forgot-password';

  static void pushLogin(BuildContext context) {
    context.push(login);
  }
}
