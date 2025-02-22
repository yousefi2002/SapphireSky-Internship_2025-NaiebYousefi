import 'dart:io';

monthOfTheYear(int monthNumber){

  switch(monthNumber){
    case 1:
      print('January with 31 days.');
      break;
    case 2:
      print('February with 28 days.');
    case 3:
      print('March with 31 days.');
      break;
    case 4:
      print('April with 30 days.');
      break;
    case 5:
      print('May with 31 days.');
      break;
    case 6:
      print('June with 30 days.');
      break;
    case 7:
      print('July with 31 days.');
      break;
    case 8:
      print('August with 31 days.');
      break;
    case 9:
      print('September with 30 days.');
      break;
    case 10:
      print('October with 31 days.');
      break;
    case 11:
      print('November with 30 days.');
      break;
    case 12:
      print('December with 31 days.');
      break;
    default:
      print('You are not from the earth.');
      break;
  }
}

void main(){
  stdout.write('Enter the number to get the day: ');
  int monthNumber = int.tryParse(stdin.readLineSync() ?? '')!;
  String result = monthOfTheYear(monthNumber) ?? '';
  print(result);
}