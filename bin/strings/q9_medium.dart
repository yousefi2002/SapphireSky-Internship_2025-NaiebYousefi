bool isRotation(String original, String rotated) {
  if (original.length != rotated.length) {
    return false;
  }

  String concatenated = original + original;
  int n = original.length;

  for (int i = 0; i <= concatenated.length - n; i++) {
    bool isMatch = true;

    for (int j = 0; j < n; j++) {
      if (concatenated[i + j] != rotated[j]) {
        isMatch = false;
        break;
      }
    }

    if (isMatch) {
      return true;
    }
  }

  return false;
}

void main() {
  String original = "abcd";
  String rotated = "cdab";

  bool rotation = isRotation(original, rotated);
  print(rotation);
}
