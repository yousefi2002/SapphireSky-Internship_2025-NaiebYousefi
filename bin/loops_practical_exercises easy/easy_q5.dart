import 'dart:io';

main(){
  stdout.write('Enter a number to know how many digits does it have: ');
  int number = int.tryParse(stdin.readLineSync() ?? '')!;

  int reminder = 0;

  for(; number != 0; number ~/= 10 ){
    reminder ++;
  }
  print(reminder);
}