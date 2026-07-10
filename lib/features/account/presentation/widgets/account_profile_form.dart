import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/validation/validators.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/upsert_profile_request.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/mutations/account_mutations.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/submitting_state_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AccountProfileForm extends ConsumerStatefulWidget {
  const AccountProfileForm({super.key, required this.user});

  final UserProfile user;

  @override
  ConsumerState<AccountProfileForm> createState() => _AccountProfileFormState();
}

class _AccountProfileFormState extends ConsumerState<AccountProfileForm>
    with SubmittingStateMixin {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _displayNameController;

  @override
  void initState() {
    super.initState();

    _displayNameController = TextEditingController(
      text: widget.user.displayName ?? '',
    );
  }

  @override
  void dispose() {
    _displayNameController.dispose();

    super.dispose();
  }

  Future<void> _submit() {
    return runSubmitting(() async {
      FocusScope.of(context).unfocus();

      if (!_formKey.currentState!.validate()) {
        return;
      }

      final request = UpsertProfileRequest(
        displayName: _displayNameController.text.trim(),
      );

      await ref.read(accountMutationsProvider.notifier).updateProfile(request);

      if (!mounted) {
        return;
      }

      context.pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(accountMutationsProvider, (previous, next) {
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
          Text('Display Name', style: Theme.of(context).textTheme.titleMedium),

          const SizedBox(height: 8),

          TextFormField(
            controller: _displayNameController,
            enabled: !isSubmitting,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              hintText: 'Enter your display name',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return Validators.string(
                value,
                field: 'Display name',
                min: 2,
                max: 120,
              );
            },
            onFieldSubmitted: (_) {
              if (!isSubmitting) {
                _submit();
              }
            },
          ),

          const SizedBox(height: 8),

          Text(
            'This name will be visible throughout the app.',
            style: Theme.of(context).textTheme.bodySmall,
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
                : const Text('Save'),
          ),
        ],
      ),
    );
  }
}
