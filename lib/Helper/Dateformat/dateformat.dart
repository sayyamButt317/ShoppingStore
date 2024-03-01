import 'package:intl/intl.dart';

class DateFormatter{
  static String formatDate(DateTime? date){
    date??=DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale:'en_US',symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phonenumber){
    if(phonenumber.length ==10){
      return '${phonenumber.substring(0,3)}-${phonenumber.substring(3,6)}-${phonenumber.substring(6,10)}';
    }else if(phonenumber.length ==11){
      return '${phonenumber.substring(0,3)}-${phonenumber.substring(3,7)}-${phonenumber.substring(7,11)}';
    }
    return phonenumber;
  }
}