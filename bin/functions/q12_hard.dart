binarySearch(List<int> arr, int target){
  int start = 0;
  int end = arr.length - 1;

  while(start <= end){
    int middle = (start + end) ~/2;
    if(arr[middle] == target){
      print('Your target number [$target] found on ${middle}th index.');
      return  '✅';
    }
    else if(arr[middle] > target){
      end = middle - 1;
    }
    else if(arr[middle] < target){
      start = middle + 1;
    }
  }
  print('Your target number [$target] does not found');
  return '❌';
}

void main(){
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

   final result = binarySearch(numbers, 78);
   print(result);
}