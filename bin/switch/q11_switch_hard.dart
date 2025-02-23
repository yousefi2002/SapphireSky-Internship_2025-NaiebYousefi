import 'dart:io';

void convertToRoman(int number) {
  switch (number) {
    case 1:
      print("I");
      break;
    case 2:
      print("II");
      break;
    case 3:
      print("III");
      break;
    case 4:
      print("IV");
      break;
    case 5:
      print("V");
      break;
    case 6:
      print("VI");
      break;
    case 7:
      print("VII");
      break;
    case 8:
      print("VIII");
      break;
    case 9:
      print("IX");
      break;
    case 10:
      print("X");
      break;
    default:
      print("Invalid number! Please enter a number between 1 and 10.");
  }
}

void main() {
  stdout.write("Enter a number (1-10): ");
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null || number < 1 || number > 10) {
    print("Invalid input! Please enter a valid number between 1 and 10.");
  } else {
    convertToRoman(number);
  }
}
