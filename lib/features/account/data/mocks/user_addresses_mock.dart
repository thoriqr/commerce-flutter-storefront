import 'package:commerce_flutter_storefront/features/account/data/models/user_addresses.dart';

abstract final class UserAddressesMock {
  static UserAddresses item() {
    return UserAddresses(
      limit: 5,
      addresses: [
        UserAddress(
          id: 1,
          label: 'Home',
          recipientName: 'Thoriq Rahman',
          phone: '081234567890',
          addressLine: 'Jl. Sudirman No. 10',
          cityName: 'Pasuruan',
          provinceName: 'East Java',
          districtName: 'Purworejo',
          postalCode: '67111',
          isDefault: true,
        ),
        UserAddress(
          id: 2,
          label: 'Office',
          recipientName: 'Thoriq Rahman',
          phone: '081234567890',
          addressLine: 'Jl. Ahmad Yani No. 21',
          cityName: 'Surabaya',
          provinceName: 'East Java',
          districtName: 'Wonokromo',
          postalCode: '60243',
          isDefault: false,
        ),
      ],
    );
  }
}
