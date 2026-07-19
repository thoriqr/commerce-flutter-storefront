enum OrderSortStatus {
  ongoing('ongoing'),
  completed('completed'),
  cancelled('cancelled');

  const OrderSortStatus(this.value);

  final String value;
}
