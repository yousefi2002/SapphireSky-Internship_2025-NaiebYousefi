// ---------------------------- Electricity  Bill Checker --------------------------- //

import 'dart:io';

main(){
  print(' *** Electricity  Bill Checker ***');
  stdout.write('Enter units you consumed: ');
  num? units = num.tryParse(stdin.readLineSync() ?? '');

  num totalAmount = 0.0;
  if(units! > 500){
    totalAmount = units * 1.50;
    print('You consumed $totalAmount \$.');

  }else if(units > 200){
    totalAmount = units * 1.20;
    print('You consumed $totalAmount \$.');

  }else if(units > 100){
    totalAmount = units * 0.75;
    print('You consumed $totalAmount \$.');

  }else if(units <= 100){
    totalAmount = units * 0.50;
    print('You consumed $totalAmount \$.');

  }else{
    print('There is something wrong.');
  }

}