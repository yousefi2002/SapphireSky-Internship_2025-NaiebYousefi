import 'dart:io';

main() {
  stdout.write('Enter a number to solve its factorial: ');
  int number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  factorial(number);
  print(factorialRecursive(number));

}

factorialRecursive(int number) {
  if (number == 0) {
    return 1;
  } else {
    return number * factorialRecursive(number - 1) ;
  }
}

factorial(int number) {
  int factorial = 1;
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  print(factorial);
}
