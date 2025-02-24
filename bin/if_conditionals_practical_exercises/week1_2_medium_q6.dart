import 'dart:io';
// ---------------------------- Speed Ticket Calculator  --------------------------- //

main() {
  try {
    stdout.write('Enter your vehicle speed: ');

    int? speed = int.tryParse(stdin.readLineSync() ?? '');

    if (speed! > 100) {
      print(
          '<-------------------------------- Double Fine --------------------------------------');
      print(
          'The speed limit is 60 km/h but yours is over a 100 km/h, your fine is DOUBLE... 😠🤬');
    } else if (speed <= 100 && speed > 60) {
      print(
          '<---------------------------- Single Fine ----------------------------------');
      print(
          'The speed limit is 60 km/h but pass this limitation, her is your fine *** 😠');
    } else {
      print(
          'Your speed is under speed limit, your are save with this speed. 😎');
    }
  } catch (e) {
    print('You have entered non valid value');
  }
}
