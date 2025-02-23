import 'dart:io';

void currencyChecker( String currency) {
  switch (currency) {
    case 'USD':
      print("1 USD = 74.50 AFs");
      break;
    case 'EUR':
      print("1 EUR = 77.78 AFs");
      break;
    case 'INR':
      print("1000 INR = 860 AFs");
      break;
    case 'JPY':
      print("1000 JPY = 496 AFs");
      break;
    default:
      print("Invalid currency code. Please enter USD, EUR, INR, or JPY.");
  }
}

void main(){
  print("We support these currency: ('USD', 'EUR', 'INR', 'JPY').");
  stdout.write('Currency: ');
  String currency = stdin.readLineSync() ?? '';

  currencyChecker(currency.toUpperCase());
}