import 'dart:io';

main() {
  stdout.write('Enter a number to understand is it Palindrome : ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  int reminder = 0;
  int? originalNumber = number;

  for (; number != 0; number ~/= 10) {
    reminder = (reminder * 10) + number! % 10;
  }

  if (reminder == originalNumber) {
    print('$originalNumber is palindrome');
  } else {
    print('$originalNumber is not palindrome');
  }
}