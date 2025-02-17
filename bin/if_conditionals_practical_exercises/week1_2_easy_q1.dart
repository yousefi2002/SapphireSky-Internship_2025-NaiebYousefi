import 'dart:io';
// ---------------------------- check odd or even --------------------------- //
main(){
  stdout.write('''
  1.  (Empty value will cause the program to finish !)
  2.  (Negative number will cause the program to finish !)
  Enter a number to check whether it is odd or even 😎:  ''');
  String number = stdin.readLineSync() ?? '-1';
  num numberIsEvenOrOdd = num.tryParse(number) ?? -1;
  while(!numberIsEvenOrOdd.isNegative) {

    if (numberIsEvenOrOdd % 2 == 0){
      print('The number $numberIsEvenOrOdd is Even.');
      print('<------------------------------------------------->');
      stdout.write('Enter a number to check whether it is odd or even 😎:  ');
      number = stdin.readLineSync() ?? '-1';
      numberIsEvenOrOdd = num.tryParse(number) ?? -1;

    }else if (numberIsEvenOrOdd % 2 == 1){
      print('The number $numberIsEvenOrOdd is Odd.');
      print('<------------------------------------------------->');
      stdout.write('Enter a number to check whether it is odd or even 😎:  ');
      number = stdin.readLineSync()  ?? '-1';
      numberIsEvenOrOdd = num.tryParse(number) ?? -1;

    } else{
      print('<------------------------------------------------->');
      stdout.write('Pleas enter a real number 😎: ');
      number = stdin.readLineSync() ?? '-1';
      numberIsEvenOrOdd = num.tryParse(number) ?? -1;
    }
  }
  print('Program Finished');
}