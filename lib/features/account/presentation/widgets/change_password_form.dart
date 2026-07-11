import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/validation/validators.dart';
import 'package:commerce_flutter_storefront/features/auth/data/models/change_password_request.dart';
import 'package:commerce_flutter_storefront/features/auth/presentation/mutations/auth_mutations.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/submitting_state_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordForm extends ConsumerStatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  ConsumerState<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends ConsumerState<ChangePasswordForm>
    with SubmittingStateMixin {
  final _formKey = GlobalKey<FormState>();

  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
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
          .changePassword(
            ChangePasswordRequest(
              currentPassword: _currentPasswordController.text,
              newPassword: _newPasswordController.text,
            ),
          );

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
            controller: _currentPasswordController,
            enabled: !isSubmitting,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Current Password',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return Validators.string(
                value,
                field: 'Current password',
                min: 8,
                max: 72,
              );
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _newPasswordController,
            enabled: !isSubmitting,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'New Password',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return Validators.string(
                value,
                field: 'New password',
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

              if (value != _newPasswordController.text) {
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
                : const Text('Change Password'),
          ),
        ],
      ),
    );
  }
}
