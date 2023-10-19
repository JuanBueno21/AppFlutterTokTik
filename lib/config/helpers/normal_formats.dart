
import 'package:intl/intl.dart';

class NormalFormats {
  
  static String normalReableNumbers (int number) {

    final formatterNumber = NumberFormat.compactCurrency(
    decimalDigits: 0,
    symbol: "",
    ).format(number);

    return formatterNumber;
  }
}

