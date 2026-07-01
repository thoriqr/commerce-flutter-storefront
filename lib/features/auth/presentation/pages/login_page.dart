import 'package:commerce_flutter_storefront/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: const SafeArea(
        child: Padding(padding: EdgeInsets.all(24), child: LoginForm()),
      ),
    );
  }
}
