// Implement a function to count the number of occurrences of each character in a string.

numberOfOccurrencesOfACharacter(String char1){
  Map<String, int> firstChar = {};


  for(int i = 0; i < char1.length; i++){
    firstChar[char1[i]] = (firstChar[char1[i]] ?? 0) + 1;
  }

  for(final value in firstChar.entries){
    print('${value.key}${value.value}');
  }
}

void main(){
  String char1 = 'afffa';

  final result = numberOfOccurrencesOfACharacter(char1) ?? '';
  print(result);
}