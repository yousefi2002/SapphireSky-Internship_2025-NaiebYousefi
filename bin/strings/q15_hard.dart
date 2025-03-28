// Implement a function to convert a given sentence into its abbreviation ("I am learning JavaScript" → "I a l J").

String abbreviateSentence(String sentence) {
  List<String> words = sentence.split(' ');
  String abbreviation = '';

  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      abbreviation += '${words[i][0]} ';
    }
  }

  return abbreviation.trim();
}

void main() {
  print(abbreviateSentence("I am learning JavaScript"));
  print(abbreviateSentence("Hello world"));
}
