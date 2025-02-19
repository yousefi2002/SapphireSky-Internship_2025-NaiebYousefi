import 'dart:io';

main(){
  stdout.write('Enter a number to reverse it: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  int reminder = 0;

  for(; number != 0; number ~/= 10 ){
    reminder = (reminder * 10) + number! % 10;
  }
  print(reminder);
}
