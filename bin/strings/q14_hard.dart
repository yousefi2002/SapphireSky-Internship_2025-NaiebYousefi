// How do you check if a string follows a given pattern (e.g., "abba" follows "dog cat cat dog")?

bool followsPattern(String pattern, String str) {
  List<String> words = str.split(' ');
  if (pattern.length != words.length) return false;

  Map<String, String> patternToWord = {};
  Map<String, String> wordToPattern = {};

  for (int i = 0; i < pattern.length; i++) {
    String patternChar = pattern[i];
    String word = words[i];

    if (patternToWord.containsKey(patternChar)) {
      if (patternToWord[patternChar] != word) {
        return false;
      }
    } else {
      patternToWord[patternChar] = word;
    }

    if (wordToPattern.containsKey(word)) {
      if (wordToPattern[word] != patternChar) {
        return false;
      }
    } else {
      wordToPattern[word] = patternChar;
    }
  }

  return true;
}

void main() {
  print(followsPattern("abba", "dog cat cat dog"));
  print(followsPattern("abba", "dog cat cat fish"));
}
