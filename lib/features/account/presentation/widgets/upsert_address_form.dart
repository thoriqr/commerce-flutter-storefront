import 'package:commerce_flutter_storefront/features/account/data/models/user_address_detail.dart';
import 'package:commerce_flutter_storefront/features/account/presentation/controllers/upsert_address_controller.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/city.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/district.dart';
import 'package:commerce_flutter_storefront/features/shipping/data/models/province.dart';
import 'package:commerce_flutter_storefront/features/shipping/presentation/providers/shipping_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:commerce_flutter_storefront/features/shipping/presentation/widgets/shipping_selector.dart';

class UpsertAddressForm extends ConsumerStatefulWidget {
  const UpsertAddressForm({super.key, this.addressId, this.initialValue});

  final int? addressId;
  final UserAddressDetail? initialValue;

  bool get isEdit => addressId != null;

  @override
  ConsumerState<UpsertAddressForm> createState() => _UpsertAddressFormState();
}

class _UpsertAddressFormState extends ConsumerState<UpsertAddressForm> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _labelController;
  late final TextEditingController _recipientController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;
  late final TextEditingController _postalCodeController;

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

  @override
  Widget build(BuildContext context) {
    final selection = ref.watch(upsertAddressControllerProvider);

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
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _recipientController,
            decoration: const InputDecoration(
              labelText: 'Recipient Name',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Phone',
              border: OutlineInputBorder(),
            ),
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
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: _postalCodeController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Postal Code',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 32),

          FilledButton(
            onPressed: () {},
            child: Text(widget.isEdit ? 'Save Changes' : 'Save Address'),
          ),
        ],
      ),
    );
  }
}
