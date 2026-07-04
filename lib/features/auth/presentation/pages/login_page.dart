import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, this.redirect});

  final LoginRedirect? redirect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: LoginForm(redirect: redirect),
        ),
      ),
    );
  }
}
