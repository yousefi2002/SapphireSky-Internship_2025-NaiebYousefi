import 'dart:io';

void getGrade(num score) {
  if (score >= 90) {
    print('Your grade is >> A');
  } else if (score >= 80) {
    print('Your grade is >> B');
  } else if (score >= 70) {
    print('Your grade is >> C');
  } else if (score >= 60) {
    print('Your grade is >> D');
  } else {
    print('Your grade is >> F');
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
