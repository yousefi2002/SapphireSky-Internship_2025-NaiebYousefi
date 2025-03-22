// 2. Implement Binary Search on a sorted array.

 binarySearch(List<int> array, int low, int high, int value) {
   if (low > high) {
     print("does not exist");
     return false;
   }

  int middle = (high + low) ~/ 2;

  if (array[middle] == value) {
    print("The target number <${array[middle]}> found in index $middle");
    return true;
  } else if (value < array[middle]) {
    return binarySearch(array, low, middle - 1, value);
  } else {
    return binarySearch(array, middle + 1, high, value);
  }
}

void main() {
  List<int> array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final result = binarySearch(array, 0, array.length-1, 44);
  print(result);
}


// 3. What is the time complexity of Binary Search?
//
//Time complexity of Binary Search is O(log n), where n is the number of elements in the array.
// It divides the array in half at each step. Space complexity is O(1) as it uses a constant amount of extra space.