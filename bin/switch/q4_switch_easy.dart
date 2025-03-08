import 'dart:io';

void monthOfTheYear(int monthNumber) {
  switch (monthNumber) {
    case 1: case 3: case 5: case 7: case 8: case 10: case 12:
    print('${getMonthName(monthNumber)} with 31 days.');
    break;

    case 4: case 6: case 9: case 11:
    print('${getMonthName(monthNumber)} with 30 days.');
    break;

    case 2:
      print('February with 28 days.');
      break;

    default:
      print('You are not from the earth.');
  }
}

String getMonthName(int monthNumber) {
  List months = [
    '', 'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  return months[monthNumber];
}

void main() {
  stdout.write('Enter the number to get the month: ');
  int monthNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  monthOfTheYear(monthNumber);
}