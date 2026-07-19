// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orders)
final ordersProvider = OrdersFamily._();

final class OrdersProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderListingResult>,
          OrderListingResult,
          FutureOr<OrderListingResult>
        >
    with
        $FutureModifier<OrderListingResult>,
        $FutureProvider<OrderListingResult> {
  OrdersProvider._({
    required OrdersFamily super.from,
    required OrderListingQueryParams super.argument,
  }) : super(
         retry: null,
         name: r'ordersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ordersHash();

  @override
  String toString() {
    return r'ordersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<OrderListingResult> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderListingResult> create(Ref ref) {
    final argument = this.argument as OrderListingQueryParams;
    return orders(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OrdersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ordersHash() => r'18d48472d3e96c5efde42f90ddf98271173c23c0';

final class OrdersFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<OrderListingResult>,
          OrderListingQueryParams
        > {
  OrdersFamily._()
    : super(
        retry: null,
        name: r'ordersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OrdersProvider call(OrderListingQueryParams params) =>
      OrdersProvider._(argument: params, from: this);

  @override
  String toString() => r'ordersProvider';
}

@ProviderFor(orderDetail)
final orderDetailProvider = OrderDetailFamily._();

final class OrderDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<OrderDetail>,
          OrderDetail,
          FutureOr<OrderDetail>
        >
    with $FutureModifier<OrderDetail>, $FutureProvider<OrderDetail> {
  OrderDetailProvider._({
    required OrderDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'orderDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$orderDetailHash();

  @override
  String toString() {
    return r'orderDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<OrderDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OrderDetail> create(Ref ref) {
    final argument = this.argument as String;
    return orderDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderDetailHash() => r'92c6637cbbe7455943f6c81d6d60e8060814e5f8';

final class OrderDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<OrderDetail>, String> {
  OrderDetailFamily._()
    : super(
        retry: null,
        name: r'orderDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OrderDetailProvider call(String orderCode) =>
      OrderDetailProvider._(argument: orderCode, from: this);

  @override
  String toString() => r'orderDetailProvider';
}
