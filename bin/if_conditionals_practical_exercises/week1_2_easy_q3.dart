
import 'dart:io';
// ---------------------------- minimum of two numbers --------------------------- //

main(){
  num smallestNumber = 0;
  print('Enter two numbers to get the smaller one.');
  stdout.write('1). Enter first number: ');

  num? firstNumber = num.tryParse(stdin.readLineSync() ?? '0');

  stdout.write('2). Enter second number: ');

  num? secondNumber = num.tryParse(stdin.readLineSync() ?? '0');

  if(firstNumber! < secondNumber!){
    smallestNumber = firstNumber;

  }else if(secondNumber < firstNumber){
    smallestNumber = secondNumber;

  }
  print('<-------------------------------------->');
  print('The smallest number is: $smallestNumber.');
}