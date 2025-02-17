import 'dart:io';

main() {
  print('''
Enter your password to check is it a strong password? 
A strong password must:
. Be at least 8 characters long,
. Contains at least one uppercase letter, onw lowercase letter, and one number.''');

  stdout.write('Password: ');

  String? password = stdin.readLineSync();

  if (password!.length >= 8 &&
      password.contains(RegExp(r'[a-z]')) &&
      password.contains(RegExp(r'[A-Z]')) &&
      password.contains(RegExp(r'\d'))) {
    print('You have got a STRONG password.');
  } else {
    print('You have got a week password.');
  }
}
