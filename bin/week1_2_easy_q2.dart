import 'dart:io';
// ---------------------------- grade calculator --------------------------- //

main() {

  try {
    print('To finish the program, enter (-1).');
    stdout.write('Enter your score to see your grade: ');
    num? score = num.tryParse(stdin.readLineSync() ?? '0');

    while (score != -1) {

      if (score! >= 90) {

        print('Your grade is >> A');
        stdout.write('Enter your score to see your grade: ');
        score = num.tryParse(stdin.readLineSync() ?? '0');

      } else if (score <= 89 && score >= 80) {

        print('Your grade is >> B');
        stdout.write('Enter your score to see your grade: ');
        score = num.tryParse(stdin.readLineSync() ?? '0');

      } else if (score <= 79 && score >= 70) {

        print('Your grade is >> C');
        stdout.write('Enter your score to see your grade: ');
        score = num.tryParse(stdin.readLineSync() ?? '0');

      } else if (score <= 69 && score >= 60) {

        print('Your grade is >> D');
        stdout.write('Enter your score to see your grade: ');
        score = num.tryParse(stdin.readLineSync() ?? '0');

      } else if (score < 60) {

        print('Your grade is >> F');
        stdout.write('Enter your score to see your grade: ');
        score = num.tryParse(stdin.readLineSync() ?? '0');

      }
    }
  } catch (e) {
    print('You entered non valid value!');

  }
  print('Program Finished');
}
