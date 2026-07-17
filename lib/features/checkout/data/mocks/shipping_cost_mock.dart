import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_cost.dart';

abstract final class ShippingCostMock {
  static ShippingCost item({String courier = 'jne'}) {
    return ShippingCost(
      courier: courier,
      services: [
        ShippingService(
          name: 'JNE',
          code: 'jne',
          service: 'REG',
          description: 'Regular Service',
          cost: 12000,
          etd: '2-3 Days',
        ),

        ShippingService(
          name: 'JNE',
          code: 'jne',
          service: 'YES',
          description: 'Yakin Esok Sampai',
          cost: 20000,
          etd: '1 Day',
        ),

        ShippingService(
          name: 'JNE',
          code: 'jne',
          service: 'OKE',
          description: 'Economy Service',
          cost: 9000,
          etd: '4-5 Days',
        ),
      ],
    );
  }
}
