// Write a function to sort an array of numbers in descending order.


List<int> descendingSort(List<int> array) {
  int n = array.length;

  for (int i = 1; i < n; i++) {
    int key = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] < key) {
      array[j + 1] = array[j];
      j--;
    }

    array[j + 1] = key;
  }

  return array;
}

void main() {
  List<int> array = [5, 3, 6, 7, 9, 2, 8, 1];

  print("Original array: $array");
  descendingSort(array);
  print("Original array: $array");
}