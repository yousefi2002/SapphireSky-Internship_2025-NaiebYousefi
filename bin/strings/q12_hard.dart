// Write a function to find all permutations of a given string.

void permute(String str) {
  List<String> chars = str.split('');
  int n = chars.length;

  void generate(int left) {
    if (left == n - 1) {
      print(chars.join(''));
      return;
    }

    for (int i = left; i < n; i++) {

      String temp = chars[left];
      chars[left] = chars[i];
      chars[i] = temp;

      generate(left + 1);

      temp = chars[left];
      chars[left] = chars[i];
      chars[i] = temp;
    }
  }

  generate(0);
}

void main() {
  permute("abc");
}
