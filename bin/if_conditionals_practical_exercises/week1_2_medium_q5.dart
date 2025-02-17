
import 'dart:io';
// ---------------------------- triangle validity  --------------------------- //

main(){

  try{
    print('Enter three side of triangle to check out is that a valid triangle?');

    stdout.write('1). First side: ');
    int? firstSide = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('2). Second side: ');
    int? secondSide = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('3). Third side: ');
    int? thirdSide = int.tryParse(stdin.readLineSync() ?? '');

    if(firstSide! + secondSide! > thirdSide! || secondSide + thirdSide > firstSide || firstSide + thirdSide > secondSide){
      print('This is a valid triangle 👏 ');
    }else{
      print('Oops, These sides will not create a valid triangle 🤔');
    }
  }catch(e){
    print('You have entered non valid value!');
  }
}