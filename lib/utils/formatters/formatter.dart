import 'package:intl/intl.dart';

class TFormatter {

  static String formatDate(DateTime? date) {
    date ??= DateTime.now(); // if date is null get the current date
    return DateFormat('dd-MMM-yyyy').format(date);
  }


  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_UG', symbol: '\¥').format(amount);
  }


  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit UG phone number format: (077) 123-4567 / 0 (771) 234-567
    if(phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6,)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)})';
    }

    return phoneNumber;
  }

  /// International phoneNumber format
}