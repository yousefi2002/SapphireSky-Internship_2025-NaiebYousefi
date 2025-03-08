countVowels(String word) {
  RegExp vowels = RegExp(r'[aeiouAEIOU]');
  return vowels.allMatches(word).length;
}

void main() {
  String word = 'Flutter Is Awesome';
  int checkVowel = countVowels(word);
  print(checkVowel);
}
