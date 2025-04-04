//  Implement Exponential Search and explain its use cases.

import 'dart:math';

bool exponentialSearch(List<int> array, int targetNumber){
  int n = array.length;
  int i = 1;

  if (array.isEmpty) {
    print("Array is empty!");
    return false;
  }
  if(array[0] == targetNumber) return true;
  while(i < n && array[i] <= targetNumber){
    i *= 2;
  }
  int low = i~/2, high = min(i, n-1);

  while(low<=high){
    int middle = low + (high-low)~/2;

    if(array[middle] == targetNumber){
      print("The targeted number <$targetNumber> found on index $middle");
      return true;
    }else if(targetNumber < array[middle]){
      high = middle - 1;
    }else{
      low = middle + 1;
    }
  }
  print("The targeted number <$targetNumber> was not found !!!");
  return false;
}
void main(){
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  exponentialSearch(array, 51);
}