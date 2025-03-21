// Implement Quick Sort and explain how pivot selection affects performance.

void quickSort(List<int> array, int low, int high) {
  if (low < high) {
    int pivotIndex = hoarePartition(array, low, high);
    quickSort(array, low, pivotIndex);
    quickSort(array, pivotIndex + 1, high);
  }
}

int hoarePartition(List<int> array, int low, int high) {
  int pivot = medianOfThree(array, low, high);
  int left = low - 1;
  int right = high + 1;

  while (true) {
    do {
      left++;
    } while (array[left] < pivot);

    do {
      right--;
    } while (array[right] > pivot);

    if (left >= right) return right;

    int temp = array[left];
    array[left] = array[right];
    array[right] = temp;
  }
}

int medianOfThree(List<int> array, int low, int high) {
  int mid = (low + high) ~/ 2;

  if ((array[low] - array[mid]) * (array[high] - array[low]) >= 0) {
    return array[low];
  } else if ((array[mid] - array[low]) * (array[high] - array[mid]) >= 0) {
    return array[mid];
  } else {
    return array[high];
  }
}

void main() {
  List<int> array = [5, 6, 3, 7, 9, 2, 8, 1, 4];
  quickSort(array, 0, array.length - 1);
  print(array);
}
