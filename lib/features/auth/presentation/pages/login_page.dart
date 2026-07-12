import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/widgets/login_form.dart';
import 'package:commerce_flutter_storefront/features/shared/presentation/widgets/app_header.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    this.redirect,
    this.showAppBar = true,
    this.isEmbedded = false,
  });

  final LoginRedirect? redirect;
  final bool showAppBar;
  final bool isEmbedded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppHeader(title: 'Login', showCartButton: false, onSearch: (_) {})
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: LoginForm(redirect: redirect, isEmbedded: isEmbedded),
        ),
      ),
    );
  }
}
