// Write a function to sort an array using Radix Sort.

import 'dart:math';

void radixSort(List<int> array) {
  int maxNumber = array.reduce((a, b) => a > b ? a : b);
  int maxDigits = maxNumber.toString().length;

  for (int i = 0; i < maxDigits; i++) {
    array.setAll(0, countingSort(array, i));
  }
}

List<int> countingSort(List<int> array, int digitPlace) {
  int n = array.length;
  List<int> output = List.filled(n, 0);
  List<int> count = List.filled(10, 0);

  for (int num in array) {
    int digit = (num ~/ pow(10, digitPlace)) % 10;
    count[digit]++;
  }

  for (int i = 1; i < 10; i++) {
    count[i] += count[i - 1];
  }

  for (int i = n - 1; i >= 0; i--) {
    int digit = (array[i] ~/ pow(10, digitPlace)) % 10;
    output[count[digit] - 1] = array[i];
    count[digit]--;
  }

  return output;
}

void main() {
  List<int> array = [170, 45, 75, 90, 802, 24, 2, 66];

  print("Before sorting: $array");
  radixSort(array);
  print("After sorting: $array");
}

