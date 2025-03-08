import 'dart:io';

void determineSeason(int month) {
  switch (month) {
    case 12:
    case 1:
    case 2:
      print("Winter");
      break;
    case 3:
    case 4:
    case 5:
      print("Spring");
      break;
    case 6:
    case 7:
    case 8:
      print("Summer");
      break;
    case 9:
    case 10:
    case 11:
      print("Fall");
      break;
    default:
      print("Invalid month! Please enter a number between 1 and 12.");
  }
}

void main() {
  stdout.write("Enter a month number (1-12): ");
  int? month = int.tryParse(stdin.readLineSync() ?? '');

  if (month == null || month < 1 || month > 12) {
    print("Invalid input! Please enter a valid month number.");
  } else {
    determineSeason(month);
  }
}
