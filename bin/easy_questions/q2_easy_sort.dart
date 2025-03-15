// How does Selection Sort work? Implement it.

// Selection Sort Explained
// Selection Sort is a simple sorting algorithm that works by repeatedly selecting the smallest (or largest) element from the unsorted part of the list and swapping it with the first unsorted element.
//
// How It Works:
// Find the smallest element in the unsorted part of the array.
// Swap it with the first element of the unsorted part.
// Move the boundary between sorted and unsorted parts one step forward.
// Repeat the process until the entire array is sorted.

List<int> selectionSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int temp = array[i];
      array[i] = array[minIndex];
      array[minIndex] = temp;
    }
  }
  return array;
}

void main() {
  List<int> array = [3, 5, 6, 7, 9, 2, 8, 1];

  print("Original array: $array");
  selectionSort(array);
  print("Original array: $array");
}
