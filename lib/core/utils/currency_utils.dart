import 'package:intl/intl.dart';

abstract final class CurrencyUtils {
  static final NumberFormat _rupiah = NumberFormat.currency(
    locale: "id_ID",
    symbol: "Rp",
    decimalDigits: 0,
  );

  static String formatRupiah(int amount) {
    return _rupiah.format(amount);
  }
}
