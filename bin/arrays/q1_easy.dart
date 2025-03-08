//Write a function to find the largest element in an array.

largestNumber(List<int> array) {
  int maxNumber = array[0];
  for (int arr in array) {
    if(arr > maxNumber){
      maxNumber = arr;
    }
  }
  return maxNumber;
}

void main() {
  List<int> numbers =  [-1,-2,-3,-10];;

  int result = largestNumber(numbers);
  print('The largest number in this array is $result');
}
