import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/validation/validators.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/providers/account_provider.dart';
import 'package:commerce_flutter_storefront/features/auth/constants/login_redirect.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/google_login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/login_request.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/mutations/auth_mutations.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/submitting_state_mixin.dart';
import 'package:commerce_flutter_storefront/features/auth/di/google_sign_in_provider.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key, this.redirect, this.isEmbedded = false});

  final LoginRedirect? redirect;
  final bool isEmbedded;

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm>
    with SubmittingStateMixin {
  final _formKey = GlobalKey<FormState>();

  bool _isGoogleSigningIn = false;

  bool get _isBusy => isSubmitting || _isGoogleSigningIn;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _runGoogleSubmitting(Future<void> Function() action) async {
    if (_isBusy) {
      return;
    }

    setState(() {
      _isGoogleSigningIn = true;
    });

    try {
      await action();
    } finally {
      if (mounted) {
        setState(() {
          _isGoogleSigningIn = false;
        });
      }
    }
  }

  Future<void> _finishLogin() async {
    // Wait until the latest profile has been loaded before
    // leaving the login page to avoid a guest/authenticated flicker.
    await ref.read(userProfileProvider.future);

    if (!mounted) return;

    final redirect = widget.redirect;

    if (redirect != null) {
      context.go(redirect.location);
      return;
    }

    if (widget.isEmbedded) {
      return;
    }

    context.pop();
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

      await _finishLogin();
    });
  }

  Future<void> _googleLogin() {
    return _runGoogleSubmitting(() async {
      final googleSignIn = ref.read(googleSignInProvider);

      final account = await googleSignIn.signIn();

      if (account == null) {
        return;
      }

      final authentication = await account.authentication;

      final idToken = authentication.idToken;

      if (idToken == null) {
        throw const AppException(
          code: 'GOOGLE_SIGN_IN_FAILED',
          message: 'Failed to authenticate with Google.',
        );
      }

      await ref
          .read(authMutationsProvider.notifier)
          .googleLogin(GoogleLoginRequest(idToken: idToken));

      await _finishLogin();
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
            enabled: !_isBusy,
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
            enabled: !_isBusy,
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
            onPressed: _isBusy ? null : _login,
            child: isSubmitting
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Login'),
          ),

          const SizedBox(height: 24),

          Row(
            children: [
              const Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text('OR', style: Theme.of(context).textTheme.bodySmall),
              ),
              const Expanded(child: Divider()),
            ],
          ),

          const SizedBox(height: 24),

          GoogleSignInButton(
            isLoading: _isGoogleSigningIn,
            onPressed: _isBusy ? null : _googleLogin,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
