import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/notifiers/auth_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  Future<void> _login() async {
    FocusScope.of(context).unfocus();

    if (!_formKey.currentState!.validate()) {
      return;
    }

    await ref
        .read(authProvider.notifier)
        .login(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          if (mounted) {
            context.pop();
          }
        },
      );
    });

    final auth = ref.watch(authProvider);

    final isLoading = auth.isLoading;

    final errorMessage = switch (auth) {
      AsyncError(:final error) when error is AppException => error.message,
      AsyncError() => 'Something went wrong.',
      _ => null,
    };

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),

          const Icon(Icons.lock_outline, size: 72),

          const SizedBox(height: 24),

          Text(
            'Welcome Back',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const SizedBox(height: 8),

          Text(
            'Sign in to continue.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: 40),

          TextFormField(
            controller: _emailController,
            enabled: !isLoading,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Email is required.';
              }

              return null;
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _passwordController,
            enabled: !isLoading,
            obscureText: true,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'Password',
              border: const OutlineInputBorder(),
              errorText: errorMessage,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required.';
              }

              return null;
            },
            onFieldSubmitted: (_) {
              if (!isLoading) {
                _login();
              }
            },
          ),

          const SizedBox(height: 24),

          FilledButton(
            onPressed: isLoading ? null : _login,
            child: isLoading
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Login'),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
