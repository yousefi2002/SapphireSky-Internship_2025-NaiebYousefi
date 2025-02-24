
import 'dart:io';
import 'dart:math';

void main(){
  int randomNumber = Random().nextInt(100) + 1;
  guessingNumber(randomNumber);
}

  guessingNumber(int guessingNumber){

    while(true){
      stdout.write('Guess the Number between (1 - 100): ');
      int? number = int.tryParse(stdin.readLineSync() ?? '');

      if(number! > guessingNumber){
        print('Too High');

      }else if(number < guessingNumber){
        print('Too Low');

      }else if(number == guessingNumber){
        print('You got it.');
        break;
      }
    }
  }