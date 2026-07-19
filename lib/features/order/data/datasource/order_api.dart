import 'package:commerce_flutter_storefront/core/models/api_response.dart';
import 'package:commerce_flutter_storefront/core/models/api_response_with_meta.dart';
import 'package:commerce_flutter_storefront/core/models/pagination_meta.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/order_detail.dart';
import 'package:commerce_flutter_storefront/features/order/data/models/snap_token_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'order_api.g.dart';

@RestApi()
abstract class OrderApi {
  factory OrderApi(Dio dio) = _OrderApi;

  @GET("/user/orders/{orderCode}")
  Future<ApiResponse<OrderDetail>> getOrderDetail(
    @Path("orderCode") String orderCode,
  );

  @GET("/user/orders")
  Future<ApiResponseWithMeta<List<Order>, PaginationMeta>> getOrders(
    @Queries() Map<String, dynamic> queryParams,
  );

  @POST("/user/orders/{orderCode}/cancel")
  Future<ApiResponse<void>> cancelOrder(@Path("orderCode") String orderCode);

  @POST("/user/orders/{orderCode}/deliver")
  Future<ApiResponse<void>> confirmDelivered(
    @Path("orderCode") String orderCode,
  );

  @POST("/user/orders/{orderCode}/snap-token")
  Future<ApiResponse<SnapTokenResponse>> createSnapToken(
    @Path("orderCode") String orderCode,
  );
}
