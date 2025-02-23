import 'dart:io';

void getGrade(num score) {
  switch(score){
    case >= 90:
      print('Your grade is >> A');
    case >= 80:
      print('Your grade is >> B');
    case >= 70:
      print('Your grade is >> C');
    case >= 60:
      print('Your grade is >> D');
    case < 60:
      print('Your grade is >> F');
    default:
      print('Some thing miss out !!!');
  }
}

void main() {
  print('To finish the program, enter (-1).');

  num? score;
  do {
    stdout.write('Enter your score to see your grade: ');
    score = num.tryParse(stdin.readLineSync() ?? '0');

    if (score != null && score != -1) {
      getGrade(score);
    }
  } while (score != -1);

  print('Program Finished');
}