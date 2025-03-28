// Implement a function to compress a string using character counts ("aabcccccaaa" → "a2b1c5a3").

compressString(String char1){
  Map<String, int> firstChar = {};

  String compressedString = '';
  for(int i = 0; i < char1.length; i++){
    firstChar[char1[i]] = (firstChar[char1[i]] ?? 0) + 1;
  }

  for(final value in firstChar.entries){
    compressedString = '$compressedString${value.key}${value.value}';
  }
  return compressedString;
}

void main(){
  String char1 = 'earth';

  final result = compressString(char1);
  print(result);
}