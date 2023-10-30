import 'package:intl/intl.dart';

class StringHelper {
  static String strDigits(int value, [int digits = 2]) =>
      value.toString().padLeft(digits, '0');

  static String getFormattedDate(DateTime value) {
    String text;
    final DateTime current = DateTime.now();
    if (current.difference(value).inDays <= 0) {
      text = "Today";
    } else if (current.difference(value).inDays <= 1) {
      text = "Yesterday";
    } else {
      text = DateFormat(DateFormat.YEAR_MONTH_DAY).format(value);
    }
    return text;
  }
}

extension StringConcat on String? {
  String concat(String? text2, [String pattern = ", "]) {
    final String? text1 = this;
    if (text2 != null && text1 != null) {
      if (text2.isNotEmpty && text1.isNotEmpty) {
        return text1 + pattern + text2;
      } else if (text2.isNotEmpty) {
        return text2;
      } else if (text1.isNotEmpty) {
        return text1;
      } else {
        return "";
      }
    } else if (text2 != null) {
      if (text2.isNotEmpty) {
        return text2;
      }
      return "";
    } else if (text1 != null) {
      if (text1.isNotEmpty) {
        return text1;
      }
      return "";
    } else {
      return "";
    }
  }
}
