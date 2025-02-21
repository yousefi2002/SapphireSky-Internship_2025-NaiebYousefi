
import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('Enter a number to check is it armstrong: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  numberLength(number!);
}

void numberLength(int number){
  int originalNumber = number;
  int digitsLength = number.toString().length;
  int reminder = 0;
  num? armNumber = 0;

  for(; number != 0; number ~/= 10){
    reminder = number % 10;
    armNumber = (armNumber! + pow(reminder, digitsLength)) ;
  }
  print(armNumber);
  if(armNumber == originalNumber){
    print('$originalNumber is Armstrong Number');
  }else{
    print('Not a Armstrong Number');
  }
}