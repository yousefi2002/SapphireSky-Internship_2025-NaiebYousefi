// How can you find the first non-repeating character in a string?
//
// firstNonRepeatingCharacter(String word){
//   Map<String, int> frequency = {};
//
//   for(int i = 0; i < word.length; i++){
//     if(frequency.containsKey(word[i])){
//       frequency[word[i]]!+1;
//     }else{
//       frequency[word[i]] = 1;
//     }
//   }
//
//   // for (int i = 0; i < frequency.length; i++){
//   //   if(){
//   //
//   //   }
//   // }
//
//   return frequency[word];
// }

String firstNonRepeatingCharacter(String s) {
  Map<String, int> charCount = {};

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  for (int i = 0; i < s.length; i++) {
    if (charCount[s[i]] == 1) {
      return s[i];
    }
  }

  return 'no single character';
}
void main(){
  String word = 'hi man. how are you doing.';

  final result = firstNonRepeatingCharacter(word);
  print(result);
}