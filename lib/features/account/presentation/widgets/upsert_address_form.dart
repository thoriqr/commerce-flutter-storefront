import 'package:commerce_flutter_storefront/core/exceptions/app_exception.dart';
import 'package:commerce_flutter_storefront/core/validation/validators.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/upsert_address_request.dart';
import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/controllers/upsert_address_controller.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/mutations/account_mutations.dart';
import 'package:commerce_flutter_storefront/features/shared/mixins/submitting_state_mixin.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';
import 'package:commerce_flutter_storefront/features/shipping/presentation/providers/shipping_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/shipping/presentation/widgets/shipping_selector.dart';
import 'package:go_router/go_router.dart';

class UpsertAddressForm extends ConsumerStatefulWidget {
  const UpsertAddressForm({
    super.key,
    this.addressId,
    this.initialValue,
    this.onCreated,
  });

  final int? addressId;
  final UserAddressDetail? initialValue;
  final Future<void> Function(int addressId)? onCreated;

  bool get isEdit => addressId != null;

  @override
  ConsumerState<UpsertAddressForm> createState() => _UpsertAddressFormState();
}

class _UpsertAddressFormState extends ConsumerState<UpsertAddressForm>
    with SubmittingStateMixin {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _labelController;
  late final TextEditingController _recipientController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;
  late final TextEditingController _postalCodeController;

  void _showSelectionError(String field) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Please select a $field.')));
  }

  @override
  void initState() {
    super.initState();

    final address = widget.initialValue;

    _labelController = TextEditingController(text: address?.label ?? '');

    _recipientController = TextEditingController(
      text: address?.recipientName ?? '',
    );

    _phoneController = TextEditingController(text: address?.phone ?? '');

    _addressController = TextEditingController(
      text: address?.addressLine ?? '',
    );

    _postalCodeController = TextEditingController(
      text: address?.postalCode ?? '',
    );

    Future.microtask(() {
      ref
          .read(upsertAddressControllerProvider.notifier)
          .initialize(widget.initialValue);
    });
  }

  @override
  void dispose() {
    _labelController.dispose();
    _recipientController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _postalCodeController.dispose();

    super.dispose();
  }

  Future<void> _submit() {
    return runSubmitting(() async {
      FocusScope.of(context).unfocus();

      if (!_formKey.currentState!.validate()) {
        return;
      }

      final selection = ref.read(upsertAddressControllerProvider);

      if (selection.province == null) {
        _showSelectionError('province');
        return;
      }

      if (selection.city == null) {
        _showSelectionError('city');
        return;
      }

      if (selection.district == null) {
        _showSelectionError('district');
        return;
      }

      final request = UpsertAddressRequest(
        label: _labelController.text.trim(),
        recipientName: _recipientController.text.trim(),
        shippingProvinceId: selection.province!.id.toString(),
        shippingCityId: selection.city!.id.toString(),
        shippingDistrictId: selection.district!.id.toString(),
        addressLine: _addressController.text.trim(),
        phone: _phoneController.text.trim(),
        postalCode: _postalCodeController.text.trim(),
      );

      final mutation = ref.read(accountMutationsProvider.notifier);

      int? createdAddressId;

      if (widget.isEdit) {
        await mutation.updateAddress(widget.addressId!, request);
      } else {
        final response = await mutation.createAddress(request);

        createdAddressId = response.addressId;

        await widget.onCreated?.call(createdAddressId);
      }

      if (!mounted) return;

      context.pop(createdAddressId);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(accountMutationsProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          final message = error is AppException
              ? error.message
              : 'Something went wrong.';

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });

    final selection = ref.watch(upsertAddressControllerProvider);

    final isBusy = isSubmitting || selection.restoringSelection;

    final provincesAsync = ref.watch(provincesProvider);

    final citiesAsync =
        selection.restoringSelection || selection.province == null
        ? null
        : ref.watch(citiesProvider(selection.province!.id));

    final districtsAsync =
        selection.restoringSelection || selection.city == null
        ? null
        : ref.watch(districtsProvider(selection.city!.id));

    final provinces = provincesAsync.value ?? const <Province>[];
    final cities = citiesAsync?.value ?? const <City>[];
    final districts = districtsAsync?.value ?? const <District>[];

    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            controller: _labelController,
            decoration: const InputDecoration(
              labelText: 'Label',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              final text = value?.trim() ?? '';

              if (text.isEmpty) {
                return null;
              }

              return Validators.string(text, field: 'Label', max: 50);
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _recipientController,
            decoration: const InputDecoration(
              labelText: 'Recipient Name',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return Validators.string(
                value,
                field: 'Recipient name',
                min: 1,
                max: 120,
              );
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Phone',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return Validators.number(
                value,
                field: 'Phone',
                minLength: 8,
                maxLength: 30,
              );
            },
          ),

          const SizedBox(height: 16),

          ShippingSelector<Province>(
            label: 'Province',
            items: provinces,
            selected: selection.province,
            enabled: !selection.restoringSelection,
            loading: provincesAsync.isLoading || selection.restoringSelection,
            itemLabel: (e) => e.name,
            onSelected: (province) {
              ref
                  .read(upsertAddressControllerProvider.notifier)
                  .selectProvince(province);
            },
          ),

          const SizedBox(height: 16),

          ShippingSelector<City>(
            label: 'City',
            items: cities,
            selected: selection.city,
            enabled:
                !selection.restoringSelection && selection.province != null,
            loading:
                (citiesAsync?.isLoading ?? false) ||
                selection.restoringSelection,
            placeholder: 'Select a province first',
            itemLabel: (e) => e.name,
            onSelected: (city) {
              ref
                  .read(upsertAddressControllerProvider.notifier)
                  .selectCity(city);
            },
          ),

          const SizedBox(height: 16),

          ShippingSelector<District>(
            label: 'District',
            items: districts,
            selected: selection.district,
            enabled: !selection.restoringSelection && selection.city != null,
            loading:
                (districtsAsync?.isLoading ?? false) ||
                selection.restoringSelection,
            placeholder: 'Select a city first',
            itemLabel: (e) => e.name,
            onSelected: (district) {
              ref
                  .read(upsertAddressControllerProvider.notifier)
                  .selectDistrict(district);
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _addressController,
            maxLines: 3,
            decoration: const InputDecoration(
              labelText: 'Address',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              return Validators.string(
                value,
                field: 'Address',
                min: 5,
                max: 255,
              );
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _postalCodeController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Postal Code',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              final text = value?.trim() ?? '';

              if (text.isEmpty) {
                return null;
              }

              return Validators.number(
                text,
                field: 'Postal code',
                minLength: 5,
                maxLength: 5,
              );
            },
          ),

          const SizedBox(height: 32),

          FilledButton(
            onPressed: isBusy ? null : _submit,
            child: isBusy
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : Text(widget.isEdit ? 'Save Changes' : 'Save Address'),
          ),
        ],
      ),
    );
  }
}
