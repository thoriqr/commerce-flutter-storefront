import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/validation/validators.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/set_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/mutations/auth_mutations.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/submitting_state_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SetPasswordForm extends ConsumerStatefulWidget {
  const SetPasswordForm({super.key});

  @override
  ConsumerState<SetPasswordForm> createState() => _SetPasswordFormState();
}

class _SetPasswordFormState extends ConsumerState<SetPasswordForm>
    with SubmittingStateMixin {
  final _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() {
    return runSubmitting(() async {
      FocusScope.of(context).unfocus();

      if (!_formKey.currentState!.validate()) {
        return;
      }

      await ref
          .read(authMutationsProvider.notifier)
          .setPassword(SetPasswordRequest(password: _passwordController.text));

      if (!mounted) return;

      context.pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authMutationsProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          final message = switch (error) {
            AppException e => e.message,
            _ => 'Something went wrong.',
          };

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });

    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            controller: _passwordController,
            enabled: !isSubmitting,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return Validators.string(
                value,
                field: 'Password',
                min: 8,
                max: 72,
              );
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _confirmPasswordController,
            enabled: !isSubmitting,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Confirm Password',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              final error = Validators.string(
                value,
                field: 'Confirm password',
                min: 8,
                max: 72,
              );

              if (error != null) return error;

              if (value != _passwordController.text) {
                return 'Passwords do not match.';
              }

              return null;
            },
            onFieldSubmitted: (_) {
              if (!isSubmitting) {
                _submit();
              }
            },
          ),

          const SizedBox(height: 32),

          FilledButton(
            onPressed: isSubmitting ? null : _submit,
            child: isSubmitting
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Set Password'),
          ),
        ],
      ),
    );
  }
}
