import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/router/app_routes.dart';
import 'package:commerce_flutter_storefront/core/validation/validators.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/mutations/auth_mutations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/submitting_state_mixin.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key, this.redirect});

  final LoginRedirect? redirect;

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm>
    with SubmittingStateMixin {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() {
    return runSubmitting(() async {
      FocusScope.of(context).unfocus();

      if (!_formKey.currentState!.validate()) {
        return;
      }

      await ref
          .read(authMutationsProvider.notifier)
          .login(
            LoginRequest(
              email: _emailController.text.trim(),
              password: _passwordController.text,
            ),
          );

      // Wait until the latest profile has been loaded before
      // leaving the login page to avoid a guest/authenticated flicker.
      await ref.read(userProfileProvider.future);

      if (!mounted) return;

      if (widget.redirect == LoginRedirect.cart) {
        context.go(AppRoutes.cart);
        return;
      }

      context.pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authMutationsProvider);

    final errorMessage = switch (auth) {
      AsyncError(:final error) when error is AppException => error.message,
      AsyncError() => 'Something went wrong.',
      _ => null,
    };

    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          const SizedBox(height: 48),

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
            enabled: !isSubmitting,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            validator: Validators.email,
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _passwordController,
            enabled: !isSubmitting,
            obscureText: true,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'Password',
              border: const OutlineInputBorder(),
              errorText: errorMessage,
            ),
            validator: (value) {
              return Validators.string(
                value,
                field: 'Password',
                min: 8,
                max: 72,
              );
            },
            onFieldSubmitted: (_) {
              if (!isSubmitting) {
                _login();
              }
            },
          ),

          const SizedBox(height: 24),

          FilledButton(
            onPressed: isSubmitting ? null : _login,
            child: isSubmitting
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Login'),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
