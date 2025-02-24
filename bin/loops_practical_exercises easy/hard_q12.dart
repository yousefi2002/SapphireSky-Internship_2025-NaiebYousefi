import 'dart:io';

void main(){
  stdout.write('Enter a number to check the process toward one : ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  print(collatzSequence(number!));
}

 collatzSequence(int number){
  int sequence = 0;

  for(; number != 1;){
    if(number % 2 == 0){
      number ~/= 2;
      sequence++;
    }else if(number % 2 == 1){
      number = (number * 3) + 1;
      sequence++;
    }
  }

  return sequence;
}