import 'dart:io';

simpleCalculator(num number1, num number2, String operand){

  switch(operand){
    case '+':
      return (number1 + number2);
    case '-':
      return (number1 - number2);
    case '*':
      return (number1 * number2);
    case '/':
      return (number1 / number2);
    default:
      return false;
  }
}

void main(){
 while(true){
   print('< -------------- Simple Calculator ----------------- >');
   stdout.write('Enter First Number: ');
   num num1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
   stdout.write('Enter Second Number: ');
   num num2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
   stdout.write('Enter the operator: ');
   String? operand = stdin.readLineSync() ?? '';

   num result = simpleCalculator(num1, num2, operand);
   print(result);
   print('<------------------------------------------->');
 }
}