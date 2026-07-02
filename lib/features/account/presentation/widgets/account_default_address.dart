import 'package:flutter/material.dart';

import '../../data/models/user_profile.dart';

class AccountDefaultAddress extends StatelessWidget {
  const AccountDefaultAddress({super.key, required this.address});

  final UserDefaultAddress? address;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: address == null
            ? const ListTile(
                leading: Icon(Icons.location_off_outlined),
                title: Text('No default address'),
                subtitle: Text('Add your first address'),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Default Address',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Chip(label: Text(address!.label)),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          address!.recipientName,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Text(address!.phone),

                  const SizedBox(height: 8),

                  Text(address!.addressLine),

                  Text('${address!.districtName}, ${address!.cityName}'),

                  Text('${address!.provinceName} ${address!.postalCode}'),
                ],
              ),
      ),
    );
  }
}
