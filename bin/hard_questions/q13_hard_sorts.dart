// How do you sort an array of strings based on their lengths?

void quickSortForString(List<String> array, int low, int high) {
  if (low < high) {
    int pivotIndex = hoarePartition(array, low, high);
    quickSortForString(array, low, pivotIndex);
    quickSortForString(array, pivotIndex + 1, high);
  }
}

int hoarePartition(List<String> array, int low, int high) {
  int pivot = medianOfThree(array, low, high);
  int left = low - 1;
  int right = high + 1;

  while (true) {
    do {
      left++;
    } while (array[left].length < pivot);

    do {
      right--;
    } while (array[right].length > pivot);

    if (left >= right) return right;

    String temp = array[left];
    array[left] = array[right];
    array[right] = temp;
  }
}

int medianOfThree(List<String> array, int low, int high) {
  int mid = (low + high) ~/ 2;

  if ((array[low].length - array[mid].length) * (array[high].length - array[low].length) >= 0) {
    return array[low].length;
  } else if ((array[mid].length - array[low].length) * (array[high].length - array[mid].length) >= 0) {
    return array[mid].length;
  } else {
    return array[high].length;
  }
}

void main() {
  List<String> array = ['Ali', 'Ahmad','Mohamad Ali Zafar', 'Matin', 'Farshad', 'Mahmood', 'A'];
  print("Original array: $array");
  final result = quickSortForString(array, 0, array.length - 1);
  print("Sorted array: $array");
}


