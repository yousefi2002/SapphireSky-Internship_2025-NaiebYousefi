
import 'dart:io';

main(){
  stdout.write('Enter a number to its Fibonacci : ');
  int number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  int first = 0, second = 1, next;

  for (int i = 0; i < number; i++) {
    print(first);
    next = first + second;
    first = second;
    second = next;
  }
}