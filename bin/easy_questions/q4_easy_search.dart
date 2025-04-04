// Write a function to find the first occurrence of an element in a sorted array.

int findFirstOccurrence(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;
  int result = -1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (arr[mid] == target) {
      result = mid;
      high = mid - 1;
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return result;
}

void main(){
  List<int> array =  [0, 9,9,9,9,9,9,9,9,9,9,9,9,9, 10];
  final result = findFirstOccurrence(array, 9);
  print(result);
}