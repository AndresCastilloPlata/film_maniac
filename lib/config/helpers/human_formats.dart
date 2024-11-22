import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number) {
    final formatterNumbre =
        NumberFormat.compactCurrency(decimalDigits: 0, symbol: '', locale: 'en')
            .format(number);
    return formatterNumbre;
  }

  static String formattedDate(DateTime date) {
    initializeDateFormatting();

    final formatterDate = DateFormat('EEEE d', 'es_CO');
    return formatterDate.format(date);
  }
}
