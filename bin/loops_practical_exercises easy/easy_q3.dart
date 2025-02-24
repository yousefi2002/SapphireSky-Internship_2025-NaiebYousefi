import 'dart:io';

main(){
  stdout.write('Enter a number to get its multiplication table up to 10: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  for(int i = 0; i <= 10; i++){
    print('$number * $i = ${number! * i}');
  }
}