List<int> sortWithoutExtraSpace(List<int> array) {
  int low = 0;
  int middle = 0;
  int high = array.length - 1;

  while (middle <= high) {
    if (array[middle] == 0) {
      int temp = array[middle];
      array[middle] = array[low];
      array[low] = temp;
      middle++;
      low++;
    } else if (array[middle] == 1) {
      middle++;
    } else {
      int temp = array[middle];
      array[middle] = array[high];
      array[high] = temp;
      high--;
    }
  }

  return array;
}

void main() {
  List<int> array = [0, 2, 2, 0, 1, 0, 1];
  print("Original array: $array");

  List<int> sortedArray = sortWithoutExtraSpace(array);

  print("Sorted array: $sortedArray");
}
