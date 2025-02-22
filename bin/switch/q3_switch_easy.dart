import 'dart:io';

trafficColors(String color){
  switch(color){
    case 'green':
      return 'Go...';
    case 'red':
      return 'Stop 🤚🤚🤚';
    case 'yellow':
      return 'Slow Down !!!';
    default:
      return 'You have entered the wrong value.';
  }
}

void main(){
  stdout.write('Enter color: ');
  String color = stdin.readLineSync() ?? '';
  
  final result = trafficColors(color.toLowerCase());
  print(result);
}