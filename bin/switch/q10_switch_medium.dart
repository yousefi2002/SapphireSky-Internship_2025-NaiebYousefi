import 'dart:io';
import 'dart:math';

rockPaperScissors(){
  int random = Random().nextInt(3)+1;
  switch (random) {
    case 1:
     return 'rock';
    case 2:
      return 'paper';
    case 3:
      return 'scissors';
    default:
      return "Invalid choice! Please select a valid option.";
  }
}

void main(){
  print('Leave it empty to escape the game.');
  print('< ------------ Game Show ----------->');
  while(true){

    print('Rock, Paper, Scissors...');
    stdout.write(" Your option: ");
    String userOption = stdin.readLineSync() ?? '';

    String randomOption = rockPaperScissors();

    if(userOption.isNotEmpty){
      if(randomOption == userOption){
        print("Succeed, You are the winner. 🎉🎉🎉\n");
        print('-------------------------------------------');

      }else{
        print('Oops, you lost the game. 👏👏👏\n');
        print('-------------------------------------------');

      }
    }else{
      print('-------------------------------------------');
      print('The Game is over.');
      return;
    }
  }
}