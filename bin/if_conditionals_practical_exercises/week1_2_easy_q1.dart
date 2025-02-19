import 'dart:io';

void checkOddEven() {
  while (true) {
    stdout.write('\nEnter a number (empty/negative to exit): ');
    String input = stdin.readLineSync() ?? '';
    int? number = int.tryParse(input);

    if (number == null || number < 0) break;

    print('The number $number is ${number % 2 == 0 ? 'Even' : 'Odd'}.');
    print('<------------------------------------------------->');
  }
  print('Program Finished');
}

void main() {
  checkOddEven();
}
