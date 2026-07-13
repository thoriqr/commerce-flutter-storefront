import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/confirm_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/create_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_checkout_address_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_shipping_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_cost.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_courier_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/warehouse_origin.dart';

abstract interface class CheckoutRepository {
  Future<CheckoutSession> getCheckoutSession(int sessionId);

  Future<CreateCheckoutResponse> createCheckoutSession();

  Future<ShippingCost> getShippingCost(
    int sessionId,
    ShippingCourierRequest request,
  );

  Future<void> setAddressCheckoutSession(
    int sessionId,
    SetCheckoutAddressRequest request,
  );

  Future<void> setShippingCheckoutSession(
    int sessionId,
    SetShippingRequest request,
  );

  Future<ConfirmCheckoutResponse> confirmCheckout(int sessionId);

  Future<WarehouseOrigin> getWarehouseOrigin();
}
