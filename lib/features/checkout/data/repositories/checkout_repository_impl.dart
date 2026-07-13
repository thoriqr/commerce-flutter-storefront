import 'package:commerce_flutter_storefront/core/network/api_response_extension.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/datasource/checkout_api.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/checkout_session.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/confirm_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/create_checkout_response.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_checkout_address_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/set_shipping_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_cost.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/shipping_courier_request.dart';
import 'package:commerce_flutter_storefront/features/checkout/data/models/warehouse_origin.dart';
import 'package:commerce_flutter_storefront/features/checkout/domain/repositories/checkout_repository.dart';

class CheckoutRepositoryImpl implements CheckoutRepository {
  const CheckoutRepositoryImpl(this._api);

  final CheckoutApi _api;

  @override
  Future<CheckoutSession> getCheckoutSession(int sessionId) {
    return _api.getCheckoutSession(sessionId).unwrap();
  }

  @override
  Future<CreateCheckoutResponse> createCheckoutSession() {
    return _api.createCheckoutSession().unwrap();
  }

  @override
  Future<ShippingCost> getShippingCost(
    int sessionId,
    ShippingCourierRequest request,
  ) {
    return _api.getShippingCost(sessionId, request).unwrap();
  }

  @override
  Future<void> setAddressCheckoutSession(
    int sessionId,
    SetCheckoutAddressRequest request,
  ) {
    return _api.setAddressCheckoutSession(sessionId, request).unwrap();
  }

  @override
  Future<void> setShippingCheckoutSession(
    int sessionId,
    SetShippingRequest request,
  ) {
    return _api.setShippingCheckoutSession(sessionId, request).unwrap();
  }

  @override
  Future<ConfirmCheckoutResponse> confirmCheckout(int sessionId) {
    return _api.confirmCheckout(sessionId).unwrap();
  }

  @override
  Future<WarehouseOrigin> getWarehouseOrigin() {
    return _api.getWarehouseOrigin().unwrap();
  }
}
