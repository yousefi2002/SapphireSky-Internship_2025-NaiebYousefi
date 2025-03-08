import 'dart:io';
daysOfTheDay(int number){

  switch(number){
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    case 3:
      print('Wednesday');
    case 4:
      print('Thursday');
    case 5:
      print('Friday');
    case 6:
      print('Saturday');
    case 7:
      print('Sunday');
    default:
      print('You are not from the earth.');
  }
}

void main(){
  stdout.write('Enter the number to get the day: ');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  daysOfTheDay(number ?? 0);
}