import 'dart:io';

main(){
  stdout.write('Enter a natural number: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  int sum = 0;
  for(int i = 0; i <= number!; i++){
    sum += i;
  }
  print(sum);
}