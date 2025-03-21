List<int> mergeSort(List<int> array) {
  int length = array.length;
  if (length <= 1) return array;

  int middle = length ~/ 2;

  List<int> leftArray = List.from(array.sublist(0, middle));
  List<int> rightArray = List.from(array.sublist(middle));

  leftArray = mergeSort(leftArray);
  rightArray = mergeSort(rightArray);

  return merge(leftArray, rightArray);
}

List<int> merge(List<int> leftArray, List<int> rightArray) {
  List<int> sortedArray = [];
  int i = 0, j = 0;

  while (i < leftArray.length && j < rightArray.length) {
    if (leftArray[i] < rightArray[j]) {
      sortedArray.add(leftArray[i]);
      i++;
    } else {
      sortedArray.add(rightArray[j]);
      j++;
    }
  }

  while (i < leftArray.length) {
    sortedArray.add(leftArray[i]);
    i++;
  }

  while (j < rightArray.length) {
    sortedArray.add(rightArray[j]);
    j++;
  }

  return sortedArray;
}

void main() {
  List<int> array = [5, 6, 3, 7, 9, 2, 8, 1, 4];
  List<int> result = mergeSort(array);
  print(result);
}
