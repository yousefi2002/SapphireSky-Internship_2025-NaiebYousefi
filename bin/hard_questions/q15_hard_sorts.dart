  // Write a function to find the smallest missing positive integer using sorting.

int findSmallestMissingPositive(List<int> array) {
  array.sort();

  int expected = 1;

  for (int num in array) {
    if (num == expected) {
      expected++;
    }
  }

  return expected;
}

void main() {
  List<int> array = [-3, -4, -5, -6, -7, -1, -2, -1];
  print(findSmallestMissingPositive(array));
}
