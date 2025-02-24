import 'dart:io';

void monthOfTheYear(int monthNumber) {
  // Array to store the names of the months
  List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  if (monthNumber >= 1 && monthNumber <= 12) {
    String monthName = months[monthNumber - 1]; // Get the month name from the array

    // Use a switch statement to determine the number of days
    switch (monthNumber) {
      case 2: // February
        print('$monthName with 28 days.');
        break;
      case 4: // April
      case 6: // June
      case 9: // September
      case 11: // November
        print('$monthName with 30 days.');
        break;
      default: // All other months have 31 days
        print('$monthName with 31 days.');
        break;
    }
  } else {
    print('You are not from the earth.');
  }
}

void main() {
  stdout.write('Enter the number to get the month: ');
  int monthNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  monthOfTheYear(monthNumber);
}