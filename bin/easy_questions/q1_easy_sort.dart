// Implement the Bubble Sort algorithm.

void bubbleSort(List<int> array) {
  int temp;
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> array = [3, 5, 6, 7, 9, 2, 8, 1];

  print("Original array: $array");
  bubbleSort(array);
  print("Sorted array: $array");
}
