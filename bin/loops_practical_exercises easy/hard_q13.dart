
import 'dart:io';

void main(){
  print('Enter two numbers to find their GCD');
  stdout.write('Fist number: ');
  int? number1 = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Second number: ');
  int? number2 = int.tryParse(stdin.readLineSync() ?? '');

  print('${findGCD(number1!, number2!)} is the GCD of $number1 & $number2');
}

int findGCD(int a, int b) {
  int minValue = (a < b) ? a : b;

  for (int i = minValue; i >= 1; i--) {
    if (a % i == 0 && b % i == 0) {
      return i;
    }
  }
  return 1;
}