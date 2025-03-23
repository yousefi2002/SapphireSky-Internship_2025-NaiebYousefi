// Implement a function to find the peak element in an array.
import 'dart:math';

findPeakElement(List<int> array) {
  int n = array.length;
  if (n == 1) {
    return 0;
  }
  if (array[0] > array[1]) {
    return 0;
  }
  if (array[n - 1] > array[n - 2]) {
    return n - 1;
  }

  int low = 1, high = n - 2;

  while (low <= high) {
    int middle = low + (high - low) ~/ 2;

    if (array[middle] > array[middle - 1] &&
        array[middle] > array[middle + 1]) {
      return middle;
    } else if (array[middle] < array[middle + 1]) {
      low = middle + 1;
    } else {
      high = middle - 1;
    }
  }
  return low;
}

void main(){
 List<int> array = [4, 6, 2, 3, 1, 5, 8, 7, 9, 0];
 int result = findPeakElement(array);

 print(result);
}