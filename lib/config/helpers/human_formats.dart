import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number) {
    final formatterNumbre =
        NumberFormat.compactCurrency(decimalDigits: 0, symbol: '', locale: 'en')
            .format(number);
    return formatterNumbre;
  }
}
