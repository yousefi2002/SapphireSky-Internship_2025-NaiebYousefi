// Implement a function to count the number of occurrences of each character in a string.

numberOfOccurrencesOfACharacter(String char1){
  Map<String, int> occurrences = {};


  for(int i = 0; i < char1.length; i++){
    occurrences[char1[i]] = (occurrences[char1[i]] ?? 0) + 1;
  }
  return occurrences;
}

void main(){
  String char1 = 'afffa';

  final result = numberOfOccurrencesOfACharacter(char1);
  print(result);
}