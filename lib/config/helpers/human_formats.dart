import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number, [int decimals = 0]) {
    final formatterNumbre = NumberFormat.compactCurrency(
            decimalDigits: decimals, symbol: '', locale: 'en')
        .format(number);
    return formatterNumbre;
  }

  static String formattedDate(DateTime date) {
    initializeDateFormatting();

    final formatterDate = DateFormat('EEEE d', 'es_CO');
    return formatterDate.format(date);
  }
}
