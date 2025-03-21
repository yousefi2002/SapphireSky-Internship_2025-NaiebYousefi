// Write a function to perform Counting Sort.

List<int> countingSort(List<int> arr) {
  if (arr.isEmpty) return arr;

  int maxVal = arr.reduce((a, b) => a > b ? a : b);

  List<int> count = List.filled(maxVal + 1, 0);

  for (int num in arr) {
    count[num]++;
  }

  for (int i = 1; i < count.length; i++) {
    count[i] += count[i - 1];
  }

  List<int> output = List.filled(arr.length, 0);

  for (int i = arr.length - 1; i >= 0; i--) {
    final ar = arr[i];
    final cou = count[arr[i]];
    final out = count[arr[i]] - 1;
    output[count[arr[i]] - 1] = arr[i];
    count[arr[i]]--;
  }

  return output;
}

void main() {
  List<int> array = [4, 2, 2, 8, 3, 3, 1];
  print("Original array: $array");

  List<int> sortedArr = countingSort(array);

  print("Sorted array: $sortedArr");
}


