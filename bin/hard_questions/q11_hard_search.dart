// Write a function to find the smallest missing positive integer in an array.

int findSmallestMissingPositiveNumber(List<int> array) {
  array.sort();
  int expected = 1;

  for (int i = 0; i < array.length; i++) {
    if (array[i] == expected) {
      expected++;
    }
  }

  return expected;
}

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int result = findSmallestMissingPositiveNumber(array);
  print(result);
}
