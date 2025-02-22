import 'dart:io';

vowelOrConsonant(String letter){
  switch(letter){
    case 'a':
      print('$letter is Vowel');
      break;
    case 'e':
      print('$letter is Vowel');
      break;
    case 'i':
      print('$letter is Vowel');
      break;
    case 'o':
      print('$letter is Vowel');
      break;
    case 'u':
      print('$letter is Vowel');
      break;
    default:
      print('$letter is Consonant.');
      break;
  }
}

void main(){
  stdout.write('Enter a letter to see is it vowel or consonant: ');
  String vowelLetter = stdin.readLineSync()!;

  String result = vowelOrConsonant(vowelLetter) ?? '';
  print(result);
}