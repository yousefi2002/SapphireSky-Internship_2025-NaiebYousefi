// Write a function to capitalize the first letter of each word in a string.

String capitalizeFirstLetter(String str) {
  List<String> words = str.split(' '); // Split into words

  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      words[i] = words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
    }
  }

  return words.join(' ');
}

void main(){
  String str = 'hi man. are you ok.';

  final result = capitalizeFirstLetter(str);
  print(result);
}
