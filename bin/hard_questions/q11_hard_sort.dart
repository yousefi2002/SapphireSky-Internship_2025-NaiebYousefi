// Implement Heap Sort and explain its working.

void heapSort(List<int> array) {
  int n = array.length;

  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    siftDown(array, n, i);
  }

  for (int i = n - 1; i > 0; i--) {
    int temp = array[0];
    array[0] = array[i];
    array[i] = temp;

    siftDown(array, i, 0);
  }
}

void siftDown(List<int> array, int n, int i) {
  int root = i;
  int value = array[root];

  while (2 * root + 1 < n) {
    int child = 2 * root + 1;
    if (child + 1 < n && array[child] < array[child + 1]) {
      child++;
    }

    if (value >= array[child]) {
      break;
    }

    array[root] = array[child];
    root = child;
  }

  array[root] = value;
}

void main() {
  List<int> array = [12, 11, 13, 5, 6, 7];
  print("Original array: $array");

  heapSort(array);

  print("Sorted array: $array");
}
