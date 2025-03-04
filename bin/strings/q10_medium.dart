// Write a function to check if a string contains only unique characters.

uniqueCharacter(String char1){
  Map<String, int> firstChar = {};

  for(int i = 0; i < char1.length; i++){
    firstChar[char1[i]] = (firstChar[char1[i]] ?? 0) + 1;
  }

  for(final value in firstChar.entries){
    if(value.value > 1){
      return false;
    }
  }
  return true;
}

void main(){
  String char1 = 'sky';

  final result = uniqueCharacter(char1);
  print(result);
}