// Write a function to check if two strings are anagrams.

anagrams(String char1, String char2){
  if(char1.length != char2.length) return false;
  Map<String, int> firstChar = {};
  Map<String, int> secondChar = {};
  
  for(int i = 0; i < char1.length; i++){
    firstChar[char1[i]] = (firstChar[char1[i]] ?? 0) + 1;
    secondChar[char2[i]] = (secondChar[char2[i]] ?? 0) + 1;
  }

  for(int i = 0; i < firstChar.length; i++){
    if(firstChar[char1[i]] != secondChar[char1[i]]){
      return false;
    }
  }
  return true;
}

void main(){
  String char1 = 'earth';
  String char2 = 'heart';

  final result = anagrams(char1, char2);
  print(result);
}