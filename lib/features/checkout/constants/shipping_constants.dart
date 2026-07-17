enum ShippingCourier {
  jne('JNE'),
  sicepat('SiCepat'),
  pos('POS'),
  anteraja('AnterAja'),
  ninja('Ninja'),
  wahana('Wahana');

  const ShippingCourier(this.label);

  final String label;
}

extension ShippingCourierX on ShippingCourier {
  String get value => name;
}
