enum ProductSortBy {
  createdAt('created_at'),
  price('price');

  const ProductSortBy(this.value);

  final String value;
}
