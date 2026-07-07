import 'package:commerce_flutter_storefront/core/validation/validators.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountProfileForm extends ConsumerStatefulWidget {
  const AccountProfileForm({super.key, required this.user});

  final UserProfile user;

  @override
  ConsumerState<AccountProfileForm> createState() => _AccountProfileFormState();
}

class _AccountProfileFormState extends ConsumerState<AccountProfileForm> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _displayNameController;

  bool _isSubmitting = false;

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

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();

    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isSubmitting = true;
    });

    try {
      final displayName = _displayNameController.text.trim();

      // TODO:
      // await ref.read(accountMutationsProvider.notifier)
      //     .updateDisplayName(displayName);

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('TODO: Update display name')),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Display Name', style: Theme.of(context).textTheme.titleMedium),

          const SizedBox(height: 8),

          TextFormField(
            controller: _displayNameController,
            enabled: !_isSubmitting,
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
                max: 100,
              );
            },
            onFieldSubmitted: (_) {
              if (!_isSubmitting) {
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
            onPressed: _isSubmitting ? null : _submit,
            child: _isSubmitting
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
