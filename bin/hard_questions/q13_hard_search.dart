//  Implement Jump Search and compare it with Binary Search.

import 'dart:math';

jumpSearch(List<int> array, int targetValue){
  int n = array.length;
  int step = sqrt(n).toInt();
  int prev = 0;

  while (array[min(step, n) - 1] < targetValue) {
    prev = step;
    step += sqrt(n).toInt();
    if (prev >= n) return -1;
  }

  for (int i = prev; i < min(step, n); i++) {
    if (array[i] == targetValue) {
      print("The targeted number <$targetValue> found on index $i");
      return i;
    }
  }

  return -1;
}

void main(){
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  jumpSearch(array, 5);
}