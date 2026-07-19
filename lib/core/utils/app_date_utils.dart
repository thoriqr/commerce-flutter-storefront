import 'package:intl/intl.dart';

abstract final class AppDateUtils {
  static DateTime parse(String value) {
    return DateTime.parse(value).toLocal();
  }

  static String date(String value) {
    return DateFormat('dd MMM yyyy').format(parse(value));
  }

  static String time(String value) {
    return DateFormat('HH:mm').format(parse(value));
  }

  static String dateTime(String value) {
    return DateFormat('dd MMM yyyy HH:mm').format(parse(value));
  }

  static String dateTimeLong(String value) {
    return DateFormat('dd MMM yyyy, HH:mm').format(parse(value));
  }
}
